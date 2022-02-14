<%@page import="com.ender.model.ClassVO"%>
<%@page import="java.util.List"%>
<%@page import="com.ender.model.ClassDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css">
<link
	href='https:/cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<meta charset="UTF-8">
<title>Ender Online Class</title>
<script type="text/javascript">
	function delFunction(num){
		location.href="${path}/classDelete.do?c_num="+num;	
	}
	function addFunction(c_num,b_num){
		location.href="${path}/cartInsert.do?c_num="+c_num+"&&b_num="+b_num;	
	}
</script>
</head>
<body>
	<!-- header section starts  -->

	<c:import url="/WEB-INF/header.jsp" />

	<!-- header section ends -->


	<table class='table table-hover'>
		<tr>
			<th>강좌</th>
			<th>강사</th>
			<th>교재 링크</th>
			<th>강좌 금액</th>
			<th>강좌 수</th>
			<th>삭제</th>
		</tr>
		<%-- c_ 붙이는게 맞는데  --%>
		<c:forEach var="vo" items="${classlist}">
			<tr>
				<td><a href='${path}/classContent.do?c_num=${vo.num}'>${vo.name}</a></td>
				<td>${vo.tr}</td>
				<td>${vo.price}</td>
				<td><a href='${path}/bookContent.do?c_num=${vo.num}'>${vo.name}</a></td>
				<td>${vo.content}</td>
				<td><input type="button" value="주문" class="btn btn-danger"
					onclick="addFunction(${vo.num},${vo.b_num})" /></td>

				</td>
			</tr>
		</c:forEach>

		<tr>
			<td colspan='8' align='center'><input type="button" value="강좌등록"
				class="btn btn-success"
				onclick="location.href='${path}/classRegister.do'" /></td>
		</tr>
	</table>
	<!-- footer section starts  -->

	<c:import url="/WEB-INF/footer.jsp" />

	<!-- footer section ends -->
</body>
</html>