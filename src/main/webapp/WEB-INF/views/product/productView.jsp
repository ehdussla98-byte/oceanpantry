<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보</title>
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
<link rel="stylesheet" href="/css/productView.css">
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	
	<div class="detail-container">
		
		<sec:authorize access="hasRole('ADMIN')">
			<div class="admin-box">
				<a href="/product/productUpdateForm?pno=${view.pno}">상품 수정</a>
				<a href="/product/productDelete?pno=${view.pno}" style="color: #d9534f;">상품 삭제</a>
			</div>
		</sec:authorize>

		<div class="detail-top">
			<div class="detail-img-box">
				<img src="/images/${view.pfilename}" alt="${view.pname}">
			</div>
			
			<div class="detail-info-box">
				<span class="p-category">${view.pcategory}</span>
				<h2 class="p-name">${view.pname}</h2>
				
				<div class="p-price-row">
					<span class="p-price-label">판매가</span>
					<span class="original-price">
						<fmt:formatNumber value="${view.pprice}" pattern="#,###"/>원
					</span>
					<span class="discount-price">
						<fmt:formatNumber value="${view.pprice * 0.9}" pattern="#,###"/>원
					</span>
				</div>
				
				<div class="p-specs">
					<div class="spec-label">중량</div>
					<div>${view.pweight}</div>
					
					<div class="spec-label">원산지</div>
					<div>${view.porigin}</div>
					
					<div class="spec-label">보관방법</div>
					<div>${view.pstorage}</div>
				</div>
				
				<div class="p-btn-group">
					<a href="#" class="btn-cart">장바구니</a>
					<a href="#" class="btn-buy">구매하기</a>
					<a href="/main" class="btn-list">목록</a>
				</div>
			</div>
		</div>
		
		<div class="detail-bottom">
			<h4>상세설명</h4>
			<div class="p-description">${view.pdescription}</div>
		</div>

	</div>
	
	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>