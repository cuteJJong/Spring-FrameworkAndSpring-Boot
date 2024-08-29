<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${ sessionScope.loginId == null }">
	${msg}<br />
	<a href="/member/join">회원가입</a>
	<a href="/member/login">로그인</a>
</c:if>
<c:if test="${ sessionScope.loginId != null }">
	${ sessionScope.loginId }님의 타입은 ${ sessionScope.type } 입니다<br />
	<a href="/member/logout">로그아웃</a>
	<a href="/member/memberinfo">내정보확인</a>
	<a href="/member/delete">탈퇴</a>
	<a href="/member/?">게시판</a>
</c:if>
</body>
</html>