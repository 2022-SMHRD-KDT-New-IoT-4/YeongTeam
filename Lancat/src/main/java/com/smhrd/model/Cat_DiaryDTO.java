package com.smhrd.model;

public class Cat_DiaryDTO {

	// cat_diary
	private int d_seq;
	private String d_title;
	private String d_content;
	private String d_file;
	private String d_dt;
	private String id;
	
	// cat_diary_delete
	private String delete_seq;
	private String delete_time;
	
	public String getDelete_seq() {
		return delete_seq;
	}

	public void setDelete_seq(String delete_seq) {
		this.delete_seq = delete_seq;
	}

	public String getDelete_time() {
		return delete_time;
	}

	public void setDelete_time(String delete_time) {
		this.delete_time = delete_time;
	}

	public Cat_DiaryDTO(String delete_seq, String delete_time) {
		super();
		this.delete_seq = delete_seq;
		this.delete_time = delete_time;
	}
	
	public Cat_DiaryDTO(int d_seq, String d_title, String d_content, String d_file, String d_dt, String id) {
		super();
		this.d_seq = d_seq;
		this.d_title = d_title;
		this.d_content = d_content;
		this.d_file = d_file;
		this.d_dt = d_dt;
		this.id = id;
	}
	
	public Cat_DiaryDTO() {
		
	}

	public int getD_seq() {
		return d_seq;
	}

	public void setD_seq(int d_seq) {
		this.d_seq = d_seq;
	}

	public String getD_title() {
		return d_title;
	}

	public void setD_title(String d_title) {
		this.d_title = d_title;
	}

	public String getD_content() {
		return d_content;
	}

	public void setD_content(String d_content) {
		this.d_content = d_content;
	}

	public String getD_file() {
		return d_file;
	}

	public void setD_file(String d_file) {
		this.d_file = d_file;
	}

	public String getD_dt() {
		return d_dt;
	}

	public void setD_dt(String d_dt) {
		this.d_dt = d_dt;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public void CopyData(Cat_DiaryDTO param)
    {
        this.d_seq = param.getD_seq();
        this.d_title = param.getD_title();
        this.d_content = param.getD_content();
        this.d_file = param.getD_file();
        this.d_dt = param.getD_dt();
        this.id = param.getId();
        
    }
}

