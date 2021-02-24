package com.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.dao.UserDataDao;
import com.mvc.dto.UserDataDto;

@WebServlet("/Logincontroller")
public class loginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
	
		String command = request.getParameter("command");
		System.out.println("["+command+"]");
		
		UserDataDao dao = new UserDataDao();
		
		HttpSession session = request.getSession(true);
		
		if(command.equals("startpage")) {
			response.sendRedirect("StartPage.jsp");
			
		}else if(command.equals("login")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			UserDataDto dto = dao.login(id,pw);
			
			if(dto.getUserid() != null) {
				
				session.setAttribute("dto", dto);
				session.setMaxInactiveInterval(3600);				
			
				if(dto.getUserrole().equals("ADMIN")) {
					dispatch("loginController.do?command=adminmain", request, response); //Logincontroller.do?command=adminmain
				}else if(dto.getUserrole().equals("USER") || dto.getUserrole().equals("MANAGER")) {
					dispatch("loginController.do?command=usermain", request, response); //Logincontroller.do?command=usermain
				}
				
			}else {
				jsResponse("로그인 실패", "loginController.do?command=startpage", response);

			}
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	
	private void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {
		String s = "<script type='text/javascript'>"+"alert('"+msg+"');"+"location.href='"+url+"';"+"</script>";
		
		PrintWriter out = response.getWriter();
		out.print(s);
	}
	
	
	private void dispatch(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
}
	
}
	
	
	
	
	
	
	
	
