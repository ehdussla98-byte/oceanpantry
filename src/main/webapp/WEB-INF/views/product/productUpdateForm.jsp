<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보수정</title>
<link rel="stylesheet" href="/css/productWriteForm.css">
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/footer.css">
<script src="/js/productWriteForm.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>

	<div class="product-container">
		<h3>상품정보수정</h3>
		
		<form name="product" method="post" action="/product/productUpdate" enctype="multipart/form-data">
			<input type="hidden" name="pno" value="${update.pno}">
			
			<div class="form-group">
				<label>상품분류</label>
				<select name="pcategory">
					<option value="">선택하세요</option>
					<option value="오징어류" ${update.pcategory.indexOf('오징어류')>-1?'selected':''}>오징어류</option>
					<option value="쥐포류" ${update.pcategory.indexOf('쥐포류')>-1?'selected':''}>쥐포류</option>
					<option value="건새우류" ${update.pcategory.indexOf('건새우류')>-1?'selected':''}>건새우류</option>
					<option value="황태채/황태포" ${update.pcategory.indexOf('황태채/황태포')>-1?'selected':''}>황태채/황태포</option>
				</select>
			</div>
			
			<div class="form-group">
				<label>상품명</label>
				<input type="text" name="pname" value="${update.pname}">
			</div>
			
			<div class="form-group">
				<label>상품이미지</label>
				<input type="file" name="pupload">
			</div>
			
			<div class="form-group">
				<label>가격</label>
				<div class="unit-group">
					<input type="text" name="pprice" value="${update.pprice}">
					<span class="unit-text">원</span>
				</div>
			</div>
			
			<div class="form-group">
				<label>상품설명</label>
				<textarea name="pdescription">${update.pdescription}</textarea>
			</div>
			
			<div class="form-group">
				<label>원산지</label>
				<input type="text" name="porigin" value="${update.porigin}">
			</div>
			
			<div class="form-group">
				<label>중량</label>
				<input type="text" name="pweight" value="${update.pweight}">
			</div>
			
			<div class="form-group">
				<label>보관방법</label>
				<input type="text" name="pstorage" value="${update.pstorage}">
			</div>
			
			<div class="form-group">
				<label>재고수</label>
				<div class="unit-group">
					<input type="text" name="pstock" value="${update.pstock}">
					<span class="unit-text">개</span>
				</div>
			</div>
			
			<div class="btn-group">
				<input type="submit" value="정보수정" class="btn-submit" onclick="return check()">
				<input type="reset" value="수정취소" class="btn-cancel" onclick="history.back()">
			</div>
		</form>
	</div>
	
	<%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</body>
</html>