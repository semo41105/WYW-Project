package com.mvc.biz;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.mvc.dao.UserDataDao;
import com.mvc.dto.UserDataDto;

public class ManagerBiz {
	
	private UserDataDao dao = new UserDataDao();
	
	
	public List<UserDataDto> selectAllNotice(){
		Connection con = getConnection();
		
		List<UserDataDto> res = dao.selectAllNotice(con);
		close(con);
		
		return res;
	}
	
	
	
}
