<%@page import="com.ender.usermodel.UserDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.ender.boardmodel.BoardVO"%>
<%@page import="com.ender.boardmodel.BoardDAO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}
UserDTO dto = new UserDTO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardList JSP</title>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css?ver=1">
</head>
<body>


	<c:import url="/WEB-INF/header.jsp" />
	<div align="center">
		<h3>[게시판 전체 목록 보기]</h3>
		<table class='table table-hover'>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>

			<c:forEach var="vo" items="${list}">
				<tr>
					<td>${vo.bo_num}</td>
					<td><a href='${path}/boardDetail.do?bo_num=${vo.bo_num}'>${vo.bo_subject}</a></td>
					<td>${vo.bo_id}</td>
					<td>${vo.bo_date}</td>
					<td>${vo.bo_readcount}</td>
				</tr>
			</c:forEach>

			<tr align="center">
				<td colspan="5">
					<form action="boardSearch.do" method="post">
						<select name="part">
							<option value="bo_subject">제목</option>
							<option value="bo_content">내용</option>
							<option value="bo_writer">작성자</option>
						</select> <input type="text" name="searchData" required="required" /> <input
							type="submit" value="검색" /> <input type="button" value="글쓰기"
							onclick="location.href='${path}/boardInsertForm.do'" />
					</form>
				</td>
			</tr>
		</table>
	</div>
	<c:import url="/WEB-INF/footer.jsp" />
</body>
</html>