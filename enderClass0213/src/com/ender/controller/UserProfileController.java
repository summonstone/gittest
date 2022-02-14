//package com.ender.controller;
//
//import java.io.File;
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.ender.usermodel.UserDAO;
//import com.ender.usermodel.UserDTO;
//import com.oreilly.servlet.MultipartRequest;
//import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
//
//public class UserProfileController implements Controller {
//
//	@Override
//	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		request.setCharacterEncoding("UTF-8");
//
//		response.setContentType("text/html; charset=UTF-8");
//
//		HttpSession session = request.getSession();
//
//		String userID = request.getParameter("userID");
//
//		String nextPage = null;
//
//		MultipartRequest multi = null;
//
//		int fileMaxSize = 10 * 1024 * 1024;
//
//		String savaPath = request.getRealPath("/upload").replaceAll("\\\\", "/");
//
//		try {
//			multi = new MultipartRequest(request, savaPath, fileMaxSize, "UTF-8", new DefaultFileRenamePolicy());
//		} catch (Exception e) {
//			throw new ServletException("Upload Fail");
//		}
//
//		String fileName = "";
//		File file = multi.getFile("userProfile");
//		System.out.println("userID : " + userID);
//
//		if (file != null) {
//			String ext = file.getName().substring(file.getName().lastIndexOf(".") + 1);
//			if (ext.equals("jpg") || ext.equals("png") || ext.equals("gif")) {
//				String prev = new UserDAO().userContent(userID).getUserProfile();
//				File prevFile = new File(savaPath + "/" + prev);
//
//				if (prevFile.exists()) {
//					prevFile.delete();
//				}
//				fileName = file.getName();
//				System.out.println("파일 이름 : " + fileName);
//
//			} else {
//
//				if (file.exists()) {
//					file.delete();
//				}
//			}
//		}
//
//		UserDAO dao = new UserDAO();
//
//		UserDTO vo = dao.userContent(userID);
//
//		vo.setUserProfile(fileName);
//
//		int cnt = dao.userProfile(vo);
//
//		if (cnt > 0 || vo.getUserProfile().equals("")) {
//			return "redirect:/dashboard/adminDashSetting.jsp";
//		} else {
//			vo.setUserProfile("https://localhost:8080/ender/images/guest.png");
//			nextPage = "redirect:/dashboard/adminDashboard.jsp";
//		}
//		return nextPage;
//	}
//
//}
