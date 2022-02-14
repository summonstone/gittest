package com.ender.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.usermodel.UserDAO;

public class UserDeleteController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nextPage = null;

		String userID = request.getParameter("userID");

		System.out.println("userID : " + userID);
		
		UserDAO dao = new UserDAO();

		int cnt = dao.userDelete(userID);
		
		if (cnt > 0) {
			nextPage = "redirect:/userList.do";
		} else {
			throw new ServletException("not delete");
		}
		return nextPage;
	}
}
