#include <ESP8266HTTPClient.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>
#include <MQUnifiedsensor.h>

//Definitions
#define placa "Arduino UNO"
#define Voltage_Resolution 5
#define pin A0                  //Analog input 0 of your arduino
#define type "MQ-135"           //MQ135
#define ADC_Bit_Resolution 10   // For arduino UNO/MEGA/NANO
#define RatioMQ135CleanAir 3.6  //RS / R0 = 3.6 ppm
//#define calibration_button 13 //Pin to calibrate your sensor

//#include <ArduinoJson.h>
#include "HX711.h"
#define calibration_factor -5000
#define DOUT D3
#define CLK D2 
HX711 scale(DOUT, CLK);

#define relay D4

//Declare Sensor
MQUnifiedsensor MQ135(placa, Voltage_Resolution, ADC_Bit_Resolution, pin, type);

const char* ssid = "lancat";        // WIFI ID
const char* password = "12345678";  // WIFI PW

String origin = "http://211.107.188.212:8081";
//String origin = "http://192.168.35.215:8081";

String result = "";  // 응답 결과 저장
HTTPClient http;     // 통신 객체
WiFiClient client;

float zero = 0;

void setup() {
  Serial.begin(115200);  // Baud rate

  // 릴레이모듈 setup
  pinMode(relay, OUTPUT);

  // 로드셀 setup
  scale.set_scale(calibration_factor);
  scale.tare();

  // MQ135 setup (MQ-135-ALL 예제코드 참고)
  //Set math model to calculate the PPM concentration and the value of constants
  MQ135.setRegressionMethod(1);  //_PPM =  a*ratio^b
  MQ135.init();

  Serial.print("Calibrating please wait.");
  float calcR0 = 0;
  for (int i = 1; i <= 10; i++) {
    MQ135.update();  // Update data, the arduino will read the voltage from the analog pin
    calcR0 += MQ135.calibrate(RatioMQ135CleanAir);
    Serial.print(".");
  }
  MQ135.setR0(calcR0 / 10);
  Serial.println("  done!.");

  if (isinf(calcR0)) {
    Serial.println("Warning: Conection issue, R0 is infinite (Open circuit detected) please check your wiring and supply");
    while (1)
      ;
  }
  if (calcR0 == 0) {
    Serial.println("Warning: Conection issue found, R0 is zero (Analog pin shorts to ground) please check your wiring and supply");
    while (1)
      ;
  }
  /*****************************  MQ CAlibration ********************************************/
  Serial.println("** Values from MQ-135 ****");

  // 통신 setup
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi..");
  }

  Serial.println("Connected to the WiFi network");
}

bool sendGet(String path, String* output) {
  String url = origin + path;
  http.begin(client, url.c_str());
  Serial.print("[SEND GET] ");
  Serial.println(url);
  int httpCode = http.GET();  // 응답코드
  bool result = httpCode == 200;
  Serial.println(httpCode);
  if (result) {
    // delay(100); // 데이터가 다 들어오지 않으면 주석제거
    *output = http.getString();
  }

  http.end();
  return result;
}

bool sendPost(String path, String buffer) {
  String url = origin + path;
  http.begin(client, url.c_str());
  Serial.print("[SEND POST] ");
  Serial.print(url);
  Serial.print(", ");
  Serial.println(buffer);
  int httpCode = http.POST(buffer);  // 응답코드
  http.end();                        // Free the resources

  return httpCode == 200;
}

bool next = false;
int cnt = 0;
float avr = 0;
String upTime, downTime;
void loop() {
  if ((WiFi.status() == WL_CONNECTED)) {  //Check the current connection status
    float weight = scale.get_units() * 0.453592;
    if(weight > 1.5) {
      if(!next){
          sendGet("/Lancat/Time", &upTime);
          Serial.print("catUp Time: ");
          Serial.println(upTime);
      }

      for(int i = 0; i < 31; i++){
        // 무게
        weight = scale.get_units() * 0.453592;
        if(weight < 1.5){
          Serial.println("무게가없음!");
          break;
        }
        Serial.print("Reading: ");

        avr += weight;
        cnt++;
        Serial.print("weight : ");      
        Serial.println(avr, 1);
        Serial.print("cnt : ");
        Serial.println(cnt);
        delay(500);
        yield();
      }
        next = true;
        delay(1000);
        yield();
    } 
    
    if(next && weight < 1.5){
      avr /= cnt;
      // 내려간 시간
      sendGet("/Lancat/Time", &downTime);
      Serial.print("catDown Time: ");
      Serial.println(downTime);

      // !!!!!팬돌리기 전후 딜레이 시간 고치기!!!!!
      // 팬 돌리기 --> 5초후 가스값 받아오기
      delay(2000);
      digitalWrite(relay, 1);
      delay(1000);

      // MQ135 가스값
      MQ135.update();  // Update data, the arduino will read the voltage from the analog pin
      MQ135.setA(77.255);
      MQ135.setB(-3.18);                   //Configure the equation to calculate Alcohol concentration value
      float Alcohol = MQ135.readSensor();  // SSensor will read PPM concentration using the model, a and b values set previously or from the setup
      Serial.println(Alcohol);
      
      // 팬 끄기
      delay(5000);
      digitalWrite(relay, 0);

      sendPost("/Lancat/info", "{\"upTime\":\"" + upTime + "\",\"downTime\":\"" + downTime + "\",\"alcohol\":" + Alcohol + ",\"weight\":" + avr + "}");
      http.end();  //Free the resources
      
      // 변수들 초기화
      weight = 0;
      next = false;
      cnt = 0;
      yield();
    }
  }else {
      Serial.println("Error on HTTP request");
  }

}