<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style>
.center{
margin: 5px 25px; padding: 20px;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	
</head>
<body class="center">
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
 <a href='<c:url value='/csCenter/csCenterList'/>' role="button" class="btn btn-outline-info">방명록 게시판 들어가기~ </a><br>
<br>
<a href='<c:url value='/hotPlace/hotPlaceList'/>' role="button" class="btn btn-outline-info">핫플레이스 보러가기~ </a>
</body>
</html>
