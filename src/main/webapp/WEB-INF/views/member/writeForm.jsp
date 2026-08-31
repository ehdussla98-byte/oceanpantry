<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/css/writeForm.css">
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
<script language="javascript" src="/js/writeForm.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>

	<div class="register-container">
		<h3>회원가입</h3>
		
		<form name="member" method="post" action="/write">
			<div class="form-group">
				<label>아이디</label>
				<input type="text" name="mid">
			</div>
			
			<div class="form-group">
				<label>비밀번호</label>
				<input type="password" name="mpasswd">
			</div>
			
			<div class="form-group">
				<label>비밀번호 확인</label>
				<input type="password" name="mpasswd2">
			</div>
			
			<div class="form-group">
				<label>이름</label>
				<input type="text" name="mname">
			</div>
			
			<div class="form-group">
				<label>연락처</label>
				<div class="tel-group">
					<select name="mtel1">
						<option value="">선택</option>
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<span>-</span>
					<input type="text" name="mtel2" maxlength="4">
					<span>-</span>
					<input type="text" name="mtel3" maxlength="4">
				</div>
			</div>
			
			<div class="form-group">
				<label>성별</label>
				<div class="gender-group">
					<label><input type="radio" name="mgender" value="남자" checked> 남자</label>
					<label><input type="radio" name="mgender" value="여자"> 여자</label>
				</div>
			</div>
			
			<div class="form-group">
				<label>주소</label>
				<div class="address-group">
					<input type="text" name="maddr1" readonly placeholder="주소 검색을 이용해주세요.">
					<input type="button" value="주소검색" class="btn-search" onclick="goPopup()">
				</div>
				<div style="margin-bottom: 8px;">
					<input type="text" name="maddr2" readonly placeholder="상세주소">
				</div>
				<div>
					<input type="text" name="mzipno" readonly placeholder="우편번호">
				</div>
			</div>
			
			<div class="form-group">
				<label>이메일</label>
				<input type="text" name="memail" placeholder="example@email.com">
			</div>
			
			<div class="btn-group">
				<input type="submit" value="회원가입" class="btn-submit" onclick="return check()">
				<input type="reset" value="가입취소" class="btn-cancel" onclick="history.back()">
			</div>
		</form>
	</div>

	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>