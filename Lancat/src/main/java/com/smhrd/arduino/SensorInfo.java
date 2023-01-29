package com.smhrd.arduino;

public class SensorInfo {
	   private String upTime;
	   private String downTime;
	   private float alcohol;
	   private float weight;

	   public SensorInfo(String upTime, String downTime, float alcohol, float weight) {
	      super();
	      this.upTime = upTime;
	      this.downTime = downTime;
	      this.alcohol = alcohol;
	      this.weight = weight;
	   }

	   public String getUpTime() {
	      return upTime;
	   }

	   public void setUpTime(String upTime) {
	      this.upTime = upTime;
	   }

	   public String getDownTime() {
	      return downTime;
	   }

	   public void setDownTime(String downTime) {
	      this.downTime = downTime;
	   }

	   public float getAlcohol() {
	      return alcohol;
	   }

	   public void setAlcohol(float alcohol) {
	      this.alcohol = alcohol;
	   }

	   public float getWeight() {
	      return weight;
	   }

	   public void setWeight(float weight) {
	      this.weight = weight;
	   }
	   
	   

	}