package com.ender.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ender.model.BookDAO;
import com.ender.model.BookVO;
import com.ender.model.CartDAO;
import com.ender.model.CartListVO;
import com.ender.model.CartVO;
import com.ender.model.ClassDAO;
import com.ender.model.ClassVO;

public class UserCartListController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		int userID = Integer.parseInt(request.getParameter("userID"));

		CartDAO dao = new CartDAO();
		
		List<CartListVO> list = dao.cartList();

		request.setAttribute("usercartlist", list);
		
		return "userCartList";
	

	}
}
