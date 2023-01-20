package com.smhrd.model;

import java.sql.Date;

// 육묘일기 
public class Cat_DiaryDTO {
	
	private String d_title;
	private String d_content;
	private String d_file;
	private String id;
	
	
	
	public Cat_DiaryDTO() {
	}
	
	public Cat_DiaryDTO(String d_title, String d_content, String d_file, String id) {
		this.d_title = d_title;
		this.d_content = d_content;
		this.d_file = d_file;
		this.id = id;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
    
	
    
}