package com.startpage.dao;

import java.sql.Connection;

import com.startpage.dto.LoginDto;

public interface LoginDao {
	
	String login = " SELECT * FROM USERDATA WHERE USERID=? AND USERPW=? AND USERENABLED=? ";
	
	
	
	public LoginDto login(Connection con, String id, String pw);
}
