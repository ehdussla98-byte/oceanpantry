<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/css/loginForm.css">
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
</head>
<body onload="document.login.id.focus()">
	<%@ include file="header.jsp" %>

	<div class="login-wrapper">
		<div class="login-container">
			<h1>로그인</h1>
			
			<form name="login" method="post" action="/j_spring_security_check">
				<input type="text" name="id" placeholder="아이디" class="input-field">
				<input type="password" name="passwd" placeholder="비밀번호" class="input-field">
				
				<input type="submit" value="로그인" class="btn-submit">
			</form>
		</div>
	</div>
	
	<%@ include file="footer.jsp" %>
</body>
</html>