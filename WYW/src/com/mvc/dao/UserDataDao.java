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
	 * 관리자 기능 1.회원 전체 정보(탈퇴 회원 포함) 2.가입된 회원(userenabled='y')의 정보 3.회원 등급
	 * 조정(userrole) 4.공지사항 등록 5.공지사항 수정 6.공지사항 삭제
	 */
	// 회원 전체 정보(탈퇴 회원 포함)
	public List<UserDataDto> selectAll() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<UserDataDto> res = new ArrayList<UserDataDto>();
		
		String sql = " SELECT * FROM USERDATA ORDER BY USERNO DESC ";
		
		try {
			pstm = con.prepareStatement(sql);

			rs = pstm.executeQuery();
			
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
				
				res.add(tmp);
			}
			
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
		}
		
		return res;
		
	}

	// 회원 전체 정보(탈퇴 회원 미포함)->왜 필요하지?
	public List<UserDataDto> selectEnabled() {

		return null;
	}

	// 회원 등급 조정
	public int updateRole(int userno, String userrole) {

		return 0;
	}

	// 공지사항 등록 = 스토리(게시판 글 작성)[userrole을 사용하여 분류함
	// ex)일반 유저가 쓰면 일반 컨텐츠 글,
	// 관리자가 글을 쓰면 공지 글]

	/*
	 * 사용자 기능(user) 1.로그인 2.회원가입 -> 아이디 중복체크 3.위치에 따른 날씨정보 확인(위치는 DEFAULT로 현재 내 위치를
	 * 잡아 선택, 날씨정보는 일기예보 사이트를 크롤링) 4.스토리[목록 보기, 글쓰기(content), 글 작성, 글 수정, 글 삭제, 다중
	 * 삭제] 5.추천 옷차림(클릭 시 스토리 페이지로 추천 옷차림을 기반으로 해시태그로 검색되어 스토리를 보여줌) 6.좋아요 7.팔로우(숫자와
	 * 팔로우한 사람들의 아이디 조회) 8.팔로잉(숫자와 팔로잉한 사람들의 아이디 조회) 9.사진 업로드 10.사진 다운로드 11.사진 삭제
	 * 12.검색(해시태그 검색, 유저 아이디 검색, 지역 검색) 13.사진 조회 14.내 정보 조회 15.회원 정보 수정 16.회원 탈퇴
	 */
	// 시작페이지(로그인)
	public UserDataDto login(String id, String pw) {

		return null;
	}

	// 시작페이지(회원가입)
	public int insertUser(UserDataDto dto) {

		return 0;
	}

	// 시작페이지(회원가입_아이디 중복 체크)
	public String idChk(String id) {

		return null;
	}

	// 메인페이지(위치에 따른 날씨정보 확인)
	public String showWeather() {

		return null;
	}

	// 메인페이지(추천 옷차림)
	public String clothesReco() {

		return null;
	}

	// 스토리(게시판 전체 목록)
	public List<UserDataDto> selectAllBoard() {

		return null;
	}

	// 스토리(게시판 글 선택)
	public UserDataDto selectOneBoard(int seq) {

		return null;
	}

	// 스토리(게시판 글 작성)
	public int insertBoard(UserDataDto dto) {

		return 0;
	}

	// 스토리(게시판 글 수정)
	public int updateBoard(UserDataDto dto) {

		return 0;
	}

	// 스토리(글 삭제)
	public int deleteBoard(int seq) {

		return 0;
	}

	// 스토리(글 다중 삭제)
	public int multiDeleteBoard(String[] seq) {

		return 0;
	}

	// 스토리(좋아요)
	public int like(int userlike) {

		return 0;
	}

	// 스토리(팔로어)
	public int follower() {

		return 0;
	}

	// 스토리(팔로잉)
	public int following() {

		return 0;
	}

	// 스토리(사진 업로드)
	public String imgUpload() {

		return null;
	}

	// 스토리(사진 다운로드)
	public String imgDownload() {

		return null;
	}

	// 마이페이지(팔로우 팔로잉 관리)
	public boolean followChk() {

		return false;
	}

	// 설정(내 정보 조회)
	public UserDataDto selectUser(int userno) {

		return null;
	}

	// 설정(내 정보 수정)
	public UserDataDto updateUser(int userno) {

		return null;
	}

	// 설정(회원 탈퇴)
	public boolean deleteUser(int userno) {

		return false;
	}

	// 설정(전체 공지사항 보기)
	public List<UserDataDto> selectAllNotice() {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		// userdatadto에 content등이 들어가있음..
		List<UserDataDto> res = new ArrayList<UserDataDto>();

		// 테이블 조인해서 유저권한 manager인 사람의 글만 보일 수 있게 쿼리문 작성
		String sql = " SELECT * FROM USERCONTENT " + " JOIN USERDATA USING(USERID) "
				+ " WHERE USERROLE='MANAGER' ORDER BY REGDATE DESC ";

//public UserDataDto(int userno, String userid, String userpw, String username, String useraddr, String userphone,
//		String useremail, String userenabled, String userrole, int userfollow, int boardno, int groupno,
//		int groupsq, String title, String content, String userimgname, String userimg,
//		int userlike, Date regdate, int followno, int followuser, int followinguser)

		try {
			pstm = con.prepareStatement(sql);

			rs = pstm.executeQuery();

			while (rs.next()) {
				UserDataDto dto = new UserDataDto();
				// 글 번호는 NOTICEBOARDLIST에서 처리해주지만 디테일로 넘어갈 때 필요하다
				dto.setBoardno(rs.getInt(11));
				dto.setTitle(rs.getString(14));
				dto.setRegdate(rs.getDate(19));

				res.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
		}

		return res;
	}

	// 설정(공지사항_1개 선택)
	public UserDataDto selectOneNotice(int boardno) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		UserDataDto res = null;

		String sql = " SELECT * FROM USERCONTENT WHERE BOARDNO=? ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, boardno);

			rs = pstm.executeQuery();

			while (rs.next()) {
//				res.setBoardno(rs.getInt(columnIndex));
//				res.setTitle(rs.getString(columnIndex));
//				res.setContent(rs.getString(columnIndex));
//				res.setRegdate(rs.getDate(columnIndex));

			}

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			close(rs);
			close(pstm);
			close(con);
		}

		return res;
	}

	// 설정(공지사항 글 작성)
	public int insertNotice(UserDataDto dto) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;

		String sql = " INSERT INTO USERCONTENT VALUES(BOARDNOSQ.NEXTVAL," + " GROUPNOSQ.NEXTVAL, 1, ?, ?, ?,"
		// GROUPNO, GROUPSQ,TITLE,CONTENT,USERID
				+ " NULL, NULL, 0, SYSDATE) ";
		// USERIMGNAME,USERIMG,USERLIKE,REGDATE

		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, dto.getTitle());
			pstm.setString(2, dto.getContent());
			pstm.setString(3, dto.getUserid());

			res = pstm.executeUpdate();

			if (res > 0) {
				commit(con);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstm);
			close(con);
		}

		return res;
	}

	public int updateNotice(UserDataDto dto) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;

		String sql = " UPDATE USERCONTENT SET TITLE=?, CONTENT=? WHERE BOARDNO=? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, dto.getTitle());
			pstm.setString(2, dto.getContent());
			pstm.setInt(3, dto.getBoardno());
			
			res = pstm.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
		}
		
		return res;
	}

	// public UserDataDto(int userno, String userid, String userpw, String username,
	// String useraddr, String userphone,
//	String useremail, String userenabled, String userrole, int userfollow, int boardno, int groupno,
//	int groupsq, String title, String content, String userimgname, String userimg,
//	int userlike, Date regdate, int followno, int followuser, int followinguser)

	/*
	 * CREATE TABLE USERCONTENT( BOARDNO NUMBER NOT NULL, GROUPNO NUMBER NOT NULL,
	 * GROUPSQ NUMBER NOT NULL, TITLE VARCHAR2(2000) , CONTENT VARCHAR2(4000),
	 * USERID NUMBER NOT NULL, USERIMGNAME VARCHAR2(50), USERIMG VARCHAR2(100),
	 * USERLIKE NUMBER NOT NULL, REGDATE DATE NOT NULL, CONSTRAINT USERCONTENT_PK
	 * PRIMARY KEY(BOARDNO), CONSTRAINT USERCONTENT_FK FOREIGN KEY(USERID)
	 * REFERENCES USERDATA(USERNO) );
	 */

	public int deleteNotice(int boardno) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;

		String sql = " DELETE FROM USERCONTENT WHERE BOARDNO=? ";

		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, boardno);

			res = pstm.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstm);
			close(con);
		}

		return res;
	}


}