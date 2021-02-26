package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.biz.ManagerBiz;
import com.mvc.dto.UserDataDto;

@WebServlet("/manager.do")
public class managerpageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//기본 세팅
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String command = request.getParameter("command");
		System.out.println("["+command+"]"); //command 올바르게 넘어오는 지 확인용
		
		ManagerBiz biz = new ManagerBiz();
		
		if(command.equals("noticelist")) {
//			List<UserDataDto> list = biz.selectAllNotice();
//			request.setAttribute("list", list);
			
//			dispatch("noticeBoardList",request,response);
			response.sendRedirect("noticeBoardList.jsp"); //맵핑 잘 되었는지 확인용
		}
	
	
	
	
	
	
	
	
	
	
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	
	
	
	private void dispatch(String url, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatch = request.getRequestDispatcher(url);
		dispatch.forward(request, response);
	}
	
	
}
