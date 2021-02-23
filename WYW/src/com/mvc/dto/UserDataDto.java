package com.mvc.dto;

import java.util.Date;

public class UserDataDto {

	private int userno;			//가입 순서 번호
	private String userid;		//유저 아이디
	private String userpw;		//유저 비밀번호
	private String username;	//유저 이름
	private String useraddr;	//유저 주소
	private String userphone;	//유저 전화번호
	private String useremail;	//유저 이메일
	private String userenabled;	//유저 탈퇴여부
	private String userrole;	//유저 역할(관리자,일반유저)
	private int userfollower;	//유저 팔로워 숫자(0부터 시작)
	private int userfollowing;	//유저 팔로잉 숫자(0부터 시작)
	private int boardno;		//보드 번호
	private int groupno;		//그룹 번호
	private int groupsq;		//그룹 시퀀스 번호
	private int titletab;		//제목 텝
	private String title;		//제목
	private String content;		//내용
	private String contentrole;	//내용 역할(공지,일반 글)
	private String userimgname;	//등록한 사진 이름
	private String userimg;		//등록한 사진 위치
	private int userlike;		//좋아요 수
	private Date regdate;		//글 등록 날자
	
	public UserDataDto() {}
	
	
	
	
	
}
