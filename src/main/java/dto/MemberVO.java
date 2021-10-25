package dto;

import java.sql.Timestamp;

public class MemberVO {

	private int mno;
	private String id;
	private String email;
	private String pw;
	private String name;
	private String registration;
	private String nickname;
	private String model;
	private String phone;
	private Timestamp cre_date;
	private Timestamp mod_date;
	public int getMno() {
		return mno;
	}
	public MemberVO setMno(int mno) {
		this.mno = mno;
		return this;
	}
	public String getId() {
		return id;
	}
	public MemberVO setId(String id) {
		this.id = id;
		return this;
	}
	public String getEmail() {
		return email;
	}
	public MemberVO setEmail(String email) {
		this.email = email;
		return this;
	}
	public String getPw() {
		return pw;
	}
	public MemberVO setPw(String pw) {
		this.pw = pw;
		return this;
	}
	public String getName() {
		return name;
	}
	public MemberVO setName(String name) {
		this.name = name;
		return this;
	}
	public String getRegistration() {
		return registration;
	}
	public MemberVO setRegistration(String registration) {
		this.registration = registration;
		return this;
	}
	public String getNickname() {
		return nickname;
	}
	public MemberVO setNickname(String nickname) {
		this.nickname = nickname;
		return this;
	}
	public String getModel() {
		return model;
	}
	public MemberVO setModel(String model) {
		this.model = model;
		return this;
	}
	public String getPhone() {
		return phone;
	}
	public MemberVO setPhone(String phone) {
		this.phone = phone;
		return this;
	}
	public Timestamp getCre_date() {
		return cre_date;
	}
	public MemberVO setCre_date(Timestamp cre_date) {
		this.cre_date = cre_date;
		return this;
	}
	public Timestamp getMod_date() {
		return mod_date;
	}
	public MemberVO setMod_date(Timestamp mod_date) {
		this.mod_date = mod_date;
		return this;
	}
	
}
