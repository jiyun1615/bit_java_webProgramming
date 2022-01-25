package com.test.ex;

public class StudentDTO {
	private String no;
	private String pw;
	private String name;
	private String hp;
	
	public StudentDTO() {	//생성자 오버로딩
		super();
		System.out.println("StudentDTO 객체 생성 성공");
	}
	public StudentDTO(String no, String pw, String name, String hp) {
		super();
		this.no = no;
		this.pw = pw;
		this.name = name;
		this.hp = hp;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
		System.out.println("no가 저장되었습니다.");
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
		System.out.println("pw가 저장되었습니다.");
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
		System.out.println("name이 저장되었습니다.");
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
		System.out.println("hp가 저장되었습니다.");
	}
	
	
}
