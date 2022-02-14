<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ender.boardmodel.BoardVO"%>
<%@page import="com.ender.boardmodel.BoardDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Detail</title>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<!-- custom css file link  -->
<link rel="stylesheet" href="${path}/css/ender.css?ver=1">
<script type="text/javascript">
	function fnDelete(bo_pwd) {
		var user_pwd = document.detailForm.user_pwd.value;
		alert("usesr PW : " + user_pwd + "\nDB PW : " + bo_pwd);

		if (user_pwd == "") {
			alert("비밀번호를 입력하세요!");
			document.detailForm.user_pwd.value = "";
			document.detailForm.user_pwd.focus();
		} else if (user_pwd != bo_pwd) {
			alert("비밀번호가 일치하지 않습니다!");
			document.detailForm.user_pwd.value = "";
			document.detailForm.user_pwd.focus();
		} else {
			if (confirm("정말 삭제하시겠습니까?")) {
				location.href = "boardDelete.do?bo_num=" + $
				{
					dto.bo_num
				}
				;
			} else {
				document.detailForm.user_pwd.value = "";
				document.detailForm.user_pwd.focus();
			}
		}
	}
	function fnUpdate(bo_id) {
		location.href = "boardUpdateForm.do?bo_num=" + ${vo.bo_num};
	}
</script>
</head>
<body>
	<c:import url="/WEB-INF/header.jsp" />
	<div align="center">
		<h3>[글 내용 조회]</h3>
		<input type='hidden' name='bo_num' value='${vo.bo_num}' />
		<table class='table table-hover' style='width: 600px' align='center'
			border='1'>
			<input type="hidden" name="bo_id" value="${userName}" />
			<tr>
				<th>작성자</th>
				<td>${vo.bo_id}</td>
				<th>조회수</th>
				<td align="center">${vo.bo_readcount}</td>
			</tr>
			<tr>
				<th>제목</th>
				<td colspan="3">${vo.bo_subject}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3">${vo.bo_content}</td>
			</tr>

		</table>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10 ">
				<c:if test="${vo.bo_id==userName}">
					<input type='button' value='수정' class='btn btn-success'
						onclick="fnUpdate('${vo.bo_id}')" />
				<!--  onclick="location.href='${ctp}/boardUpdateForm.do'"-->
				 
				<input type='button' value='삭제' 	onclick="location.href='${ctp}/boardDelete.do'"
					class='btn btn-danger' /> 
				</c:if>
					<input type="button" value="리스트"
					onclick="location.href='${ctp}/boardList.do'"
					class='btn btn-success' />
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/footer.jsp" />
</body>
</html>