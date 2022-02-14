package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.usermodel.UserDAO;
import com.ender.usermodel.UserDTO;

public class UserUpdateController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String nextPage = null;
		
		String userID = request.getParameter("userID");
		String userPassword = request.getParameter("userPW");

		
		UserDTO vo = new UserDTO();
		
		vo.setUserID(userID);
		vo.setUserPW(userPassword);

		
		UserDAO dao = new UserDAO();
		int cnt = dao.userUpdate(vo);
		
		if (cnt > 0) {
			nextPage = "redirect:/dashboard/adminDashboard.jsp";
		} else {
			throw new ServletException("not update");
		}
		return nextPage;
	}
}
