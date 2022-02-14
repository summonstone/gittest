<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- 로그인 FORM  -->

<div class="login-form-container" id="login-open">

	<div id="close-login-btn" class="fas fa-times"></div>

	<form action="${path}/userLogin.do" id="login-form">
		<h3>로그인</h3>
		<span>아이디</span> <input type="email" name="userID" class="box"
			placeholder="이메일을 입력해주세요." id="userID"> <span>비밀번호</span> <input
			type="password" name="userPW" class="box" placeholder="비밀번호를 입력해주세요."
			id="userPW">

		<div class="checkbox">
			<input type="checkbox" name="" id="remember-me"> <label
				for="remember-me">아이디 저장</label>
		</div>

		<span id="error"></span>
		<button class="loginBtn" id="loginSubmit">로그인</button>
		<p>
			가입 정보를 잊어버리셨습니까 ? <a href="#" id="select-btn">아이디/비밀번호 찾기</a>
		</p>
		<p>
			아직 회원이 아니십니까 ? <a href="#" id="regist-btn">회원가입</a>
		</p>
	</form>

</div>

<script type="text/javascript">
	var fail =
<%=request.getParameter("fail")%>
	;
	$(document).ready(function() {
		if (fail != null) {
			$("#login-btn").trigger("click");
		}
	});
</script>