<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
    html, body {
        margin: 0;
        padding: 0;
        background-color: #fff;
        font-family: 'Noto Sans KR', sans-serif;
        overflow: hidden; 
    }

    .popup-container {
        display: flex;
        flex-direction: column;
        width: 100%;
        height: 100vh;
    }

    .popup-img {
        width: 100%;
        height: calc(100vh - 45px); 
        display: block;
        object-fit: cover; 
    }

    .popup-footer {
        height: 45px;
        background: #222222; 
        display: flex;
        justify-content: flex-end; 
        align-items: center;
        padding: 0 15px;
        box-sizing: border-box;
    }

    .btn-close {
        background: none;
        border: none;
        color: #ffffff;
        font-size: 13px;
        font-weight: 500;
        cursor: pointer;
        padding: 5px 10px;
        transition: color 0.2s;
    }

    .btn-close:hover {
        color: #aaa; 
    }
</style>
</head>
<body>
	<div class="popup-container">
		<img src="/images/sale.png" alt="공지사항" class="popup-img">
		
		<div class="popup-footer">
			<button class="btn-close" onclick="window.close()">창닫기 ✕</button>
		</div>
	</div>
</body>
</html>