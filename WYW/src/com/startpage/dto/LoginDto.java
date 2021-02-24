package com.startpage.dto;

public class LoginDto {
	
//	USERNO NUMBER NOT NULL,
//	USERID VARCHAR2(500) NOT NULL,
//	USERPW VARCHAR2(500) NOT NULL,
//	USERNAME VARCHAR2(1000) NOT NULL,
//	USERADDR VARCHAR2(4000) NOT NULL,
//	USERPHONE VARCHAR2(4000) NOT NULL,
//	USEREMAIL VARCHAR2(100) NOT NULL,
//	USERENABLED VARCHAR2(2) NOT NULL,
//	USERROLE VARCHAR2(50) NOT NULL,
//	USERFOLLOWER NUMBER NOT NULL,
//	USERFOLLOWING NUMBER NOT NULL
	private int userno;
	private String userid;
	private String userpw;
	private String username;
	private String useraddr;
	private String userphone;
	private String useremail;
	private String userenabled;
	private String userrole;
	private int userfollwer;
	private int userfolwing;
	
	public LoginDto() {
		super();
	}

	public LoginDto(int userno, String userid, String userpw, String username, String useraddr, String userphone,
			String useremail, String userenabled, String userrole, int userfollwer, int userfolwing) {
		super();
		this.userno = userno;
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
		this.useraddr = useraddr;
		this.userphone = userphone;
		this.useremail = useremail;
		this.userenabled = userenabled;
		this.userrole = userrole;
		this.userfollwer = userfollwer;
		this.userfolwing = userfolwing;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUseraddr() {
		return useraddr;
	}

	public void setUseraddr(String useraddr) {
		this.useraddr = useraddr;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUserenabled() {
		return userenabled;
	}

	public void setUserenabled(String userenabled) {
		this.userenabled = userenabled;
	}

	public String getUserrole() {
		return userrole;
	}

	public void setUserrole(String userrole) {
		this.userrole = userrole;
	}

	public int getUserfollwer() {
		return userfollwer;
	}

	public void setUserfollwer(int userfollwer) {
		this.userfollwer = userfollwer;
	}

	public int getUserfolwing() {
		return userfolwing;
	}

	public void setUserfolwing(int userfolwing) {
		this.userfolwing = userfolwing;
	}
	
	
	
	
}
