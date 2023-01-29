package com.smhrd.model;

public class SensorDTO {
	   private String id;
	   private float cat_wt;
	   private String potty_type;
	   private float gas;
	   private String in_time;
	   private String out_time;
	   private String use_time;

	   public SensorDTO() {
	      super();
	   }

	   public SensorDTO(String id, float cat_wt, String potty_type, float gas, String in_time, String out_time, String use_time) {
	      super();
	      this.id = id;
	      this.cat_wt = cat_wt;
	      this.potty_type = potty_type;
	      this.gas = gas;
	      this.in_time = in_time;
	      this.out_time = out_time;
	      this.use_time = use_time;
	   }

	   public String getId() {
	      return id;
	   }

	   public void setId(String id) {
	      this.id = id;
	   }

	   public float getCat_wt() {
	      return cat_wt;
	   }

	   public void setCat_wt(float cat_wt) {
	      this.cat_wt = cat_wt;
	   }

	   public String getPotty_type() {
	      return potty_type;
	   }

	   public void setPotty_type(String potty_type) {
	      this.potty_type = potty_type;
	   }

	   public float getGas() {
	      return gas;
	   }

	   public void setGas(float gas) {
	      this.gas = gas;
	   }

	   public String getIn_time() {
	      return in_time;
	   }

	   public void setIn_time(String in_time) {
	      this.in_time = in_time;
	   }

	   public String getOut_time() {
	      return out_time;
	   }

	   public void setOut_time(String out_time) {
	      this.out_time = out_time;
	   }

	   public String getUse_time() {
	      return use_time;
	   }

	   public void setUse_time(String use_time) {
	      this.use_time = use_time;
	   }

	}