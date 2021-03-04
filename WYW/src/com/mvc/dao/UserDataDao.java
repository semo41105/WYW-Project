package com.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mvc.dto.UserDataDto;

import common.JDBCTemplate;

public class UserDataDao extends JDBCTemplate {
	/*
	 * 관리자 기능
	 * 1.회원 전체 정보(탈퇴 회원 포함)
	 * 2.가입된 회원(userenabled='y')의 정보
	 * 3.회원 등급 조정(userrole)
	 * 4.공지사항 등록
	 * */
	//회원 전체 정보(탈퇴 회원 포함)
	public List<UserDataDto> selectAll(){
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<UserDataDto> res = new ArrayList<UserDataDto>();
		
		String sql = " SELECT * FROM USERDATA ORDER BY USERNO DESC ";

		try {
			pstm = con.prepareStatement(sql);
			
			System.out.println("03. query 준비: "+ sql);

			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");

			while(rs.next()) {
				UserDataDto tmp = new UserDataDto();
				tmp.setUserno(rs.getInt(1));
				tmp.setUserid(rs.getString(2));
				tmp.setUserpw(rs.getString(3));
				tmp.setUsername(rs.getString(4));
				tmp.setUseraddr(rs.getString(5));
				tmp.setUserphone(rs.getString(6));
				tmp.setUseremail(rs.getString(7));
				tmp.setUserenabled(rs.getString(8));
				tmp.setUserrole(rs.getString(9));
				tmp.setUserfollow(rs.getInt(10));

				res.add(tmp);
			}
			
			
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 에러");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		
		return res;
	}
	
	//회원 전체 정보(탈퇴 회원 미포함)
	public List<UserDataDto> selectEnabled(){
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<UserDataDto> res = new ArrayList<UserDataDto>();
		
		String sql = " SELECT * FROM USERDATA WHERE USERENABLED='Y' ORDER BY USERNO DESC ";
		
		try {
			pstm = con.prepareStatement(sql);
			
			System.out.println("03. query 준비: "+ sql);
			
			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");
			
			while(rs.next()) {
				UserDataDto tmp = new UserDataDto();
				tmp.setUserno(rs.getInt(1));
				tmp.setUserid(rs.getString(2));
				tmp.setUserpw(rs.getString(3));
				tmp.setUsername(rs.getString(4));
				tmp.setUseraddr(rs.getString(5));
				tmp.setUserphone(rs.getString(6));
				tmp.setUseremail(rs.getString(7));
				tmp.setUserenabled(rs.getString(8));
				tmp.setUserrole(rs.getString(9));
				tmp.setUserfollow(rs.getInt(10));
				
				res.add(tmp);
			}
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 에러");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		
		return res;
		
	}
	
	//회원 등급 조정
	public int updateRole(int userno, String userrole) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = " UPDATE USERDATA SET USERROLE=? WHERE USERNO=?";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, userrole);
			pstm.setInt(2, userno);
			System.out.println("03. query 준비 : " + sql);

			res = pstm.executeUpdate();
			System.out.println("04. query 실행 및 리턴");
			
			if(res > 0) {
				commit(con);
			}
			
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 에러");
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
			System.out.println("05. db 종료 \n");
		}
		
		
		return res;
	}
	
	//공지사항 등록 = 스토리(게시판 글 작성)[userrole을 사용하여 분류함 
	//						ex)일반 유저가 쓰면 일반 컨텐츠 글,
	//							관리자가 글을 쓰면 공지 글]
	
	
	
	/*
	 * 사용자 기능(user)
	 * 1.로그인
	 * 2.회원가입 -> 아이디 중복체크
	 * 3.위치에 따른 날씨정보 확인(위치는 DEFAULT로 현재 내 위치를 잡아 선택, 
	 * 						날씨정보는 일기예보 사이트를 크롤링)
	 * 4.스토리[목록 보기, 글쓰기(content), 글 작성, 글 수정, 글 삭제, 다중 삭제]
	 * 5.추천 옷차림(클릭 시 스토리 페이지로 추천 옷차림을 기반으로 
	 * 				해시태그로 검색되어 스토리를 보여줌)
	 * 6.좋아요
	 * 7.팔로우(숫자와 팔로우한 사람들의 아이디 조회)
	 * 8.팔로잉(숫자와 팔로잉한 사람들의 아이디 조회)
	 * 9.사진 업로드
	 * 10.사진 다운로드
	 * 11.사진 삭제
	 * 12.검색(해시태그 검색, 유저 아이디 검색, 지역 검색)
	 * 13.사진 조회
	 * 14.내 정보 조회
	 * 15.회원 정보 수정
	 * 16.회원 탈퇴
	 * */
	//시작페이지(로그인)
	public UserDataDto login(String id, String pw) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		UserDataDto res = new UserDataDto();
		
		String sql = " SELECT * FROM USERDATA WHERE USERID=? AND USERPW=? AND USERENABLED=? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, id);
			pstm.setString(2, pw);
			pstm.setString(3, "Y");
			System.out.println("03. query 준비: " + sql);
			
			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");
			
			while(rs.next()) {
				res.setUserno(rs.getInt(1));
				res.setUserid(rs.getString(2));
				res.setUserpw(rs.getString(3));
				res.setUsername(rs.getString(4));
				res.setUseraddr(rs.getString(5));
				res.setUserphone(rs.getString(6));
				res.setUseremail(rs.getString(7));
				res.setUserenabled(rs.getString(8));
				res.setUserrole(rs.getString(9));
				res.setUserfollow(rs.getInt(10));
			}
			
		} catch (SQLException e) {
			System.out.println("3/4단계 오류");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료\n");
		}
		
		return res;
	}
	
	//시작페이지(회원가입)
	public int insertUser(UserDataDto dto) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = " INSERT INTO USERDATA VALUES(USERNOSQ.NEXTVAL, ?, ?, ?, ?, ?, ?, 'Y', 'USER', 0) ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, dto.getUserid());
			pstm.setString(2, dto.getUserpw());
			pstm.setString(3, dto.getUsername());
			pstm.setString(4, dto.getUseraddr());
			pstm.setString(5, dto.getUserphone());
			pstm.setString(6, dto.getUseremail());
			System.out.println("03. query 준비: " + sql);
			
			res = pstm.executeUpdate();
			System.out.println("04. query 실행 및 리턴");

			if(res>0) {
				commit(con);
			}
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 에러");
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
			System.out.println("05. db 종료 \n");
		}
			
		return res;
	}
	
	//시작페이지(회원가입_아이디 중복 체크)
	public String idChk(String id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String res = null;
		
		String sql = " SELECT * FROM USERDATA WHERE USERID=? ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, id);
			System.out.println("03. query 준비 : " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");
			
			while(rs.next()) {
				res = rs.getString(2);
			}
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 에러");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료 \n");
		}
		
		return res;
	}
	
	//시작페이지(아이디찾기)
	public String findId(String name, String email) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String res = null;
		
		String sql = " SELECT * FROM USERDATA WHERE USERNAME=? AND USEREMAIL=? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, name);
			pstm.setString(2, email);
			System.out.println("03. query 준비 : " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");

			while(rs.next()) {
				res = rs.getString(2);
			}
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 에러");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료 \n");
		}
		
		return res;
	}
	
	public String findPw(String name, String id, String email) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String res = null;
		
		String sql = " SELECT * FROM USERDATA WHERE USERNAME=? AND USERID=? AND USEREMAIL=? ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, name);
			pstm.setString(2, id);
			pstm.setString(3, email);
			System.out.println("03. query 준비 : " + sql);

			rs = pstm.executeQuery();
			System.out.println("04. query 실행 및 리턴");

			while(rs.next()) {
				res = rs.getString(3);
			}
			
			
		} catch (SQLException e) {
			System.out.println("3/4 단계 에러");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
			System.out.println("05. db 종료 \n");
		}
		
		return res;
	}
	
	
	//메인페이지(위치에 따른 날씨정보 확인)
	public String showWeather() {
		
		return null;
	}

	//메인페이지(추천 옷차림)
	public String clothesReco() {
		
		return null;
	}
	
	//스토리(게시판 전체 목록)
	public List<UserDataDto> selectAllBoard(){
		
		return null;
	}
	
	//스토리(게시판 글 선택)
	public UserDataDto selectOneBoard(int seq) {
		
		return null;
	}
	
	//스토리(게시판 글 작성)
	public int insertBoard(UserDataDto dto) {
		
		return 0;
	}
	
	//스토리(게시판 글 수정)
	public int updateBoard(UserDataDto dto) {
		
		return 0;
	}
	
	//스토리(글 삭제)
	public int deleteBoard(int seq) {
		
		return 0;
	}
	
	//스토리(글 다중 삭제)
	public int multiDeleteBoard(String[] seq) {
		
		return 0;
	}
	
	//스토리(좋아요)
	public int like(int userlike) {
		
		return 0;
	}
	
	//스토리(팔로어)
	public int follower() {
		
		return 0;
	}
	
	//스토리(팔로잉)
	public int following() {
		
		return 0;
	}
	
	//스토리(사진 업로드)
	public String imgUpload() {
		
		return null;
	}
	
	//스토리(사진 다운로드)
	public String imgDownload() {
		
		return null;
	}
	
	//마이페이지(팔로우 팔로잉 관리)
	public boolean followChk() {
		
		return false;
	}
	
	//설정(내 정보 조회)
	public UserDataDto selectUser(int userno) {
		
		return null;
	}
	
	//설정(내 정보 수정)
	public UserDataDto updateUser(int userno) {
		
		return null;
	}
	
	//설정(회원 탈퇴)
	public boolean deleteUser(int userno) {
		
		return false;
	}
	
	//설정(전체 공지사항 보기)
	public List<UserDataDto> selectAllNotice(){
		
		return null;
	}
	
	//설정(공지사항_1개 선택)
	public UserDataDto selectOneNotice(int seq, String contentrole){
		
		return null;
	}
}
