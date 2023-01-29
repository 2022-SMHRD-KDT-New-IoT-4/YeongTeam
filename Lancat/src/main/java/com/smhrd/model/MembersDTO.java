package com.smhrd.model;

public class MembersDTO {
	
	// 필드
	private String id;
	private String pw;
	private String cat_Name;
	private String cat_Birth;
	private int cat_Wt;
	private String addr;
	private String joinDate;
	private String m_Type;
	
	// 기본생성자
	public MembersDTO() {
	}
	
	// 필드값 다 들어있는 생성자
	public MembersDTO(String id, String pw, String cat_Name, String cat_Birth, int cat_Wt, String addr, String joinDate,
			String m_Type) {
		this.id = id;
		this.pw = pw;
		this.cat_Name = cat_Name;
		this.cat_Birth = cat_Birth;
		this.cat_Wt = cat_Wt;
		this.addr = addr;
		this.joinDate = joinDate;
		this.m_Type = m_Type;
	}
	
	// getter, setter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getCat_Name() {
		return cat_Name;
	}
	public void setCat_Name(String cat_Name) {
		this.cat_Name = cat_Name;
	}
	public String getCat_Birth() {
		return cat_Birth;
	}
	public void setCat_Birth(String cat_Birth) {
		this.cat_Birth = cat_Birth;
	}
	public int getCat_Wt() {
		return cat_Wt;
	}
	public void setCat_Wt(int cat_Wt) {
		this.cat_Wt = cat_Wt;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getM_Type() {
		return m_Type;
	}
	public void setM_Type(String m_Type) {
		this.m_Type = m_Type;
	}
	
	
	
}