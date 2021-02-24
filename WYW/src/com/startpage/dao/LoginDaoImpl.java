package com.startpage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.startpage.dto.LoginDto;

import static common.JDBCTemplate.*;

public class LoginDaoImpl implements LoginDao {

	@Override
	public LoginDto login(Connection con, String id, String pw) {
		PreparedStatement pstm = null;
		ResultSet rs = null;
		LoginDto res = new LoginDto();
		
		try {
			pstm = con.prepareStatement(login);
			pstm.setString(1, id);
			pstm.setString(2, pw);
			pstm.setString(3, "Y");
			System.out.println("03. query 준비: " + login);
			
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
				res.setUserfollwer(rs.getInt(10));
				res.setUserfolwing(rs.getInt(11));
			}

		} catch (SQLException e) {
			System.out.println("3/4 단계 오류");
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			System.out.println("05. db 종료\n");
		}
		
		
		
		return res;
	}

}
