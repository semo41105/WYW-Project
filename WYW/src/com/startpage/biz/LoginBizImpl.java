package com.startpage.biz;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import com.startpage.dao.LoginDao;
import com.startpage.dao.LoginDaoImpl;
import com.startpage.dto.LoginDto;

public class LoginBizImpl implements LoginBiz{
	private LoginDao dao = new LoginDaoImpl();

	@Override
	public LoginDto login(String id, String pw) {
		Connection con = getConnection();
		LoginDto dto = dao.login(con, id, pw);
		close(con);
		return dto;
	}
	
}
