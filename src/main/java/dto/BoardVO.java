package dto;

import java.sql.Timestamp;

public class BoardVO {
	private int articleNo;
	private String title;
	private String content;
	private String imageFileName;
	private float starrate;
	private int starrate_p;
	private int starrate_d;
	private int starrate_p2;
	private int starrate_d2;
	private String nickname;
	private String model;
	private Timestamp write_date;
	public int getArticleNo() {
		return articleNo;
	}
	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}
	public float getStarrate() {
		return starrate;
	}
	public void setStarrate(float starrate) {
		this.starrate = starrate;
	}
	public int getStarrate_p() {
		return starrate_p;
	}
	public void setStarrate_p(int starrate_p) {
		this.starrate_p = starrate_p;
	}
	public int getStarrate_d() {
		return starrate_d;
	}
	public void setStarrate_d(int starrate_d) {
		this.starrate_d = starrate_d;
	}
	public int getStarrate_p2() {
		return starrate_p2;
	}
	public void setStarrate_p2(int starrate_p2) {
		this.starrate_p2 = starrate_p2;
	}
	public int getStarrate_d2() {
		return starrate_d2;
	}
	public void setStarrate_d2(int starrate_d2) {
		this.starrate_d2 = starrate_d2;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Timestamp getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
	}
	
}
