<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.center{
margin: 5px 25px; padding: 20px
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>
<h1>테마 관리 페이지</h1>
<article>
		<form name="themaSearch" action="${path}/hotPlace/themaSearch">
			<legend style="font-size: 15px">테마명으로 검색</legend>
			<table style="background-color:white;">
				<tr>
					<th style="font-size: 15px">테마명</th>
					<td><input type="text" name="t_name"></td>
					<td align="center"><input type="submit" class="btn btn-outline-info" value="검색">
				</tr>
			</table>
		</form>
</article>
<table border="1" cellspacing="0" style="width:500px; text-align: center;">
	<thead>
		<tr>
			<th colspan="3" style="background-color:yellow">테마</th>
		</tr>
	</thead>
	<tbody>
	
		<tr>
			<th>순번</th>
			<th>테마</th>
			<th>정렬 순서</th>
		</tr>
	<c:forEach items="${list}" var="list">
		<tr>
			<td>${list.t_code }</td>
			<td><a href="${path}/hotPlace/themaUpdate?t_code=${list.t_code}">${list.t_name }</a></td>
			<td>${list.t_order }</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	<br>
	<a href="<c:url value='/hotPlace/themaCreate'/>" role="button" class="btn btn-outline-info"  style="font-size: 15px">글쓰기</a>
		 <button type="button" class="btn btn-outline-info"><a href="/hotPlace/hotPlaceList"> 핫플레이스 메인으로</a></button>
		  <button type="button" class="btn btn-outline-info"><a href="/hotPlace/adminMain"> 관리자 페이지</a></button>
</body>
</html>