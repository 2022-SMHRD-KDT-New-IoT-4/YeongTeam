package com.smhrd.model;

public class MembersDTO {

	private String id;
	private String pw;
	private String Cat_Name;
	private String Cat_Birth;
	private int Cat_Wt;
	private String addr;
	private String JoinDate;
	private String M_Type;
	public MembersDTO(String id, String pw, String cat_Name, String cat_Birth, int cat_Wt, String addr, String joinDate,
			String m_Type) {
		super();
		this.id = id;
		this.pw = pw;
		this.Cat_Name = cat_Name;
		this.Cat_Birth = cat_Birth;
		this.Cat_Wt = cat_Wt;
		this.addr = addr;
		this.JoinDate = joinDate;
		this.M_Type = m_Type;
		
		
	}
	
	// 기본 생성자
	public MembersDTO() {
		
	}
	
	
	
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
		return Cat_Name;
	}
	public void setCat_Name(String cat_Name) {
		this.Cat_Name = cat_Name;
	}
	public String getCat_Birth() {
		return Cat_Birth;
	}
	public void setCat_Birth(String cat_Birth) {
		this.Cat_Birth = cat_Birth;
	}
	public int getCat_Wt() {
		return Cat_Wt;
	}
	public void setCat_Wt(int cat_Wt) {
		this.Cat_Wt = cat_Wt;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getJoinDate() {
		return JoinDate;
	}
	public void setJoinDate(String joinDate) {
		this.JoinDate = joinDate;
	}
	public String getM_Type() {
		return M_Type;
	}
	public void setM_Type(String m_Type) {
		this.M_Type = m_Type;
	}
	
	
}