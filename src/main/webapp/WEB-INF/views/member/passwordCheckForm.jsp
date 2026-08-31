<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인 폼</title>
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
<link rel="stylesheet" href="/css/passwordCheckForm.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>

	<div class="pwd-check-container">
		<div class="pwd-check-header">
			<h3>비밀번호 확인</h3>
			<p class="pwd-notice">회원정보 수정 및 회원 탈퇴를 위해 비밀번호를 다시 한 번 입력해 주세요.</p>
		</div>
		
		<form name="passwordCheckForm" method="post" action="/member/passwordCheck" class="pwd-form">
			<input type="hidden" name="mode" value="${mode}">
			
			<div class="input-group">
				<label for="mpasswd">비밀번호</label>
				<input type="password" id="mpasswd" name="mpasswd" placeholder="비밀번호를 입력하세요">
			</div>
			
			<input type="submit" value="비밀번호 확인" class="btn-pwd-submit">
		</form>
		
		<c:if test="${not empty msg}">
				<script>
					alert("${msg}");
				</script>
		</c:if>
	</div>

	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>