<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<link rel="stylesheet" href="/css/writeForm.css">
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
<script language="javascript" src="/js/updateForm.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>

	<div class="register-container">
		<h3>회원정보수정</h3>
		
		<form name="member" method="post" action="/update">
			<input type="hidden" name="mid" value="${update.mid}">
			
			<div class="form-group">
				<label>아이디</label>
				<div style="padding: 12px; font-size: 15px; font-weight: bold; color: #111; background: #f5f5f5; border-radius: 6px; border: 1px solid #e0e0e0;">
					${update.mid}
				</div>
			</div>
			
			<div class="form-group">
				<label>비밀번호</label>
				<input type="password" name="mpasswd" placeholder="변경할 비밀번호를 입력하세요">
			</div>
			
			<div class="form-group">
				<label>비밀번호 확인</label>
				<input type="password" name="mpasswd2" placeholder="비밀번호를 한 번 더 입력하세요">
			</div>
			
			<div class="form-group">
				<label>이름</label>
				<div style="padding: 12px; font-size: 15px; color: #555; background: #f5f5f5; border-radius: 6px; border: 1px solid #e0e0e0;">
					${update.mname}
				</div>
			</div>
			
			<div class="form-group">
				<label>연락처</label>
				<div class="tel-group">
					<select name="mtel1">
						<option value="">선택</option>
						<option value="010" ${update.mtel.indexOf('010')>-1?'selected':''}>010</option>
						<option value="011" ${update.mtel.indexOf('011')>-1?'selected':''}>011</option>
						<option value="016" ${update.mtel.indexOf('016')>-1?'selected':''}>016</option>
						<option value="017" ${update.mtel.indexOf('017')>-1?'selected':''}>017</option>
						<option value="018" ${update.mtel.indexOf('018')>-1?'selected':''}>018</option>
						<option value="019" ${update.mtel.indexOf('019')>-1?'selected':''}>019</option>
					</select>
					<span>-</span>
					<input type="text" name="mtel2" maxlength="4" value="${fn:split(update.mtel,'-')[1]}">
					<span>-</span>
					<input type="text" name="mtel3" maxlength="4" value="${fn:split(update.mtel,'-')[2]}">
				</div>
			</div>
			
			<div class="form-group">
				<label>성별</label>
				<div style="padding: 12px; font-size: 15px; color: #555; background: #f5f5f5; border-radius: 6px; border: 1px solid #e0e0e0;">
					${update.mgender}
				</div>
			</div>
			
			<div class="form-group">
				<label>주소</label>
				<div class="address-group">
					<input type="text" name="maddr1" readonly value="${fn:split(update.maddr,',')[0]}" placeholder="주소 검색을 이용해주세요.">
					<input type="button" value="주소검색" class="btn-search" onclick="goPopup()">
				</div>
				<div style="margin-bottom: 8px;">
					<input type="text" name="maddr2" readonly value="${fn:split(update.maddr,',')[1]}" placeholder="상세주소">
				</div>
				<div>
					<input type="text" name="mzipno" readonly value="${update.mzipno}" placeholder="우편번호">
				</div>
			</div>
			
			<div class="form-group">
				<label>이메일</label>
				<input type="text" name="memail" value="${update.memail}">
			</div>
			
			<div class="btn-group">
				<input type="submit" value="정보수정" class="btn-submit" onclick="return check()">
				<input type="reset" value="수정취소" class="btn-cancel" onclick="history.back()">
			</div>
		</form>
	</div>
	
	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>