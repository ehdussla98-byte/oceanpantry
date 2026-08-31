<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보상세보기</title>
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
<link rel="stylesheet" href="/css/memberView.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>

	<div class="admin-container">
		<h3>회원정보 상세 조회</h3>
		
		<table class="admin-detail-table">
			<tbody>
				<tr>
					<th>회원번호</th>
					<td>${view.mno}</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td class="highlight-id">${view.mid}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${view.mname}</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>${view.mtel}</td>
				</tr>
				<tr>
					<th>성별</th>
					<td>${view.mgender}</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>${view.maddr}</td>
				</tr>
				<tr>
					<th>우편번호</th>
					<td>${view.mzipno}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${view.memail}</td>
				</tr>
				<tr>
					<th>가입일</th>
					<td><fmt:formatDate value="${view.mdate}" pattern="yyyy-MM-dd" /></td>
				</tr>
				<tr>
					<th>권한</th>
					<td>
						<span class="auth-badge">${view.mauthority}</span>
					</td>
				</tr>
			</tbody>
		</table>
		
		<div class="action-group">
			<a href="/admin/memberList" class="btn-back">목록</a>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>