package com.startpage.biz;

import com.startpage.dto.LoginDto;

public interface LoginBiz {

	public LoginDto login(String id, String pw);
	
}
