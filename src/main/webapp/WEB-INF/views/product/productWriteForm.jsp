<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<link rel="stylesheet" href="/css/productWriteForm.css">
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
<script src="/js/productWriteForm.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>

	<div class="product-container">
		<h3>상품등록</h3>
		
		<form name="product" method="post" action="/product/productWrite" enctype="multipart/form-data">
			
			<div class="form-group">
				<label>상품분류</label>
				<select name="pcategory">
					<option value="">선택하세요</option>
					<option value="오징어류">오징어류</option>
					<option value="쥐포류">쥐포류</option>
					<option value="건새우류">건새우류</option>
					<option value="황태채/황태포">황태채/황태포</option>
				</select>
			</div>
			
			<div class="form-group">
				<label>상품명</label>
				<input type="text" name="pname" placeholder="상품 이름을 입력하세요">
			</div>
			
			<div class="form-group">
				<label>상품이미지</label>
				<input type="file" name="pupload">
			</div>
			
			<div class="form-group">
				<label>가격</label>
				<div class="unit-group">
					<input type="text" name="pprice" placeholder="숫자만 입력하세요">
					<span class="unit-text">원</span>
				</div>
			</div>
			
			<div class="form-group">
				<label>상품설명</label>
				<textarea name="pdescription" placeholder="상품에 대한 상세한 설명을 적어주세요"></textarea>
			</div>
			
			<div class="form-group">
				<label>원산지</label>
				<input type="text" name="porigin" placeholder="예: 국산, 러시아산 등">
			</div>
			
			<div class="form-group">
				<label>중량</label>
				<input type="text" name="pweight" placeholder="예: 300g, 1kg 등">
			</div>
			
			<div class="form-group">
				<label>보관방법</label>
				<input type="text" name="pstorage" placeholder="예: 냉동보관, 서늘한 곳 보관 등">
			</div>
			
			<div class="form-group">
				<label>재고수</label>
				<div class="unit-group">
					<input type="text" name="pstock" placeholder="숫자만 입력하세요">
					<span class="unit-text">개</span>
				</div>
			</div>
			
			<div class="btn-group">
				<input type="submit" value="상품등록" class="btn-submit" onclick="return check()">
				<input type="reset" value="등록취소" class="btn-cancel" onclick="history.back()">
			</div>
		</form>
	</div>
	
	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>