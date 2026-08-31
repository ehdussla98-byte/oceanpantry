<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<link rel="stylesheet" href="/css/memberList.css">
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>

	<div class="admin-container">
		<h3>회원정보 관리</h3>
		
		<table class="admin-table">
			<thead>
				<tr>
					<th>회원번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>권한</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.mno}</td>
					<td><a href="/admin/memberView?mno=${list.mno}">${list.mid}</a></td>
					<td>${list.mname}</td>
					<td>
						<span class="auth-badge">${list.mauthority}</span>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>