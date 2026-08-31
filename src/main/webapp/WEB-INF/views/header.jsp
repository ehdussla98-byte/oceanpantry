<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<header>
		<div class="header-container">
			<div class="logo">
				<a href="/main">
					<img src="/images/logo.png">
					<h1>OCEAN PANTRY</h1>
				</a>
			</div>
		<!-- 비회원 -->
			<sec:authorize access="isAnonymous()">
				<div class="member-menu">
					<a href="/loginForm">로그인</a>
					<a href="/member/writeForm">회원가입</a>
				</div>
			</sec:authorize>
		<!-- 일반회원 -->
			<sec:authorize access="hasRole('USER')">
				<div class="member-menu">
					<sec:authentication property="principal.username" />님
					<a href="/member/passwordCheckForm?mode=update">회원정보수정</a>
					<a href="/member/passwordCheckForm?mode=delete">회원탈퇴</a>
					<a href="/logout">로그아웃</a>
				</div>
			</sec:authorize>
		<!-- 관리자 -->
			<sec:authorize access="hasRole('ADMIN')">
				<div class="member-menu">
					<sec:authentication property="principal.username" />님
					<a href="/admin/memberList">회원목록</a>
					<a href="/product/productWriteForm">상품등록</a>
					<a href="/logout">로그아웃</a>
				</div>
			</sec:authorize>
		</div>
	</header>
