package com.test.ex;

public class MemberDTO {
	private String name;
	private String id;
	private String pw;
	private String h1, h2, h3;
	private String gender;
	
	//생성자
	public MemberDTO() {
		super();
	}
	
	public MemberDTO(String name, String id, String pw, String h1, String h2, String h3, String gender) {
		super();
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.h1 = h1;
		this.h2 = h2;
		this.h3 = h3;
		this.gender = gender;
	}

	//getter, setter 
	public String getName() {
		return name;
	}

	public String getId() {
		return id;
	}
	
	public String getPw() {
		return pw;
	}

	public String getH1() {
		return h1;
	}

	public String getH2() {
		return h2;
	}

	public String getH3() {
		return h3;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getGender() {
		return gender;
	}
	
	
	public void setId(String id) {
		this.id = id;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public void setH1(String h1) {
		this.h1 = h1;
	}

	public void setH2(String h2) {
		this.h2 = h2;
	}

	public void setH3(String h3) {
		this.h3 = h3;
	}

	

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	
}
