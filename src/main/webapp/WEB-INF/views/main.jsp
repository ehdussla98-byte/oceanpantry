<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
<link rel="stylesheet" href="/css/main.css">
<script>
	window.onload = function() {
		window.open("/popup","popup","width=500,height=550, scrollbars=yes, resizable=yes");
	}
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	
	<div class="container">
		<c:forEach var="list" items="${list}">
		<div class="card">
			<a href="/product/productView?pno=${list.pno}">
				<img src="/images/${list.pfilename}" alt="${list.pname}">
			</a>
			
			<a href="/product/productView?pno=${list.pno}" class="p-title">${list.pname}</a>
			
			<div class="p-category">${list.pcategory}</div>
			
			<div class="price-box">
				<span class="original-price"><s><fmt:formatNumber value="${list.pprice}" pattern="#,###"/></s>원</span>
			 	<span class="discount-price"><fmt:formatNumber value="${list.pprice*0.9}" pattern="#,###"/>원</span>
			</div>
			
			<div class="p-info">${list.pweight}</div>
			<div class="p-date"><fmt:formatDate value="${list.pdate}" pattern="yyyy-MM-dd" /></div>
		</div>
		</c:forEach>
	</div>
	
	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>