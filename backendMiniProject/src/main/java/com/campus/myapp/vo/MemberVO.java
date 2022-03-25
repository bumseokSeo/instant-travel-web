package com.campus.myapp.vo;

public class MemberVO {
	private int num;
	private String userid;
	private String userpwd;
	private String sex;
	private String name;
	private String writedate;
    private String img;
    

	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img1) {
		this.img = img1;
	}

	@Override
	public String toString() {
		return "MemberVO [num=" + num + ", userid=" + userid + ", userpwd=" + userpwd + ", sex=" + sex + ", name="
				+ name + ", writedate=" + writedate +"]";
	}
	
	
	
	
	
}
