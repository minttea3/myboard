<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>
<h3> 서울 '구' 관리 페이지 </h3>

	<table border="1" cellspacing="0" style="width:500px; text-align: center;">
	<thead>
		<tr>
			<th colspan="3" style="background-color:yellow">서울 지역</th>
		</tr>
	</thead>
	<tbody>
	
		<tr>
			<th>순번</th>
			<th>지역</th>
			<th>정렬 순서</th>
		</tr>
	<c:forEach items="${list}" var="list">
		<tr>
			<td>${list.s_code }</td>
			<td><a href="${path}/hotPlace/seoulUpdate?s_code=${list.s_code}">${list.s_name }</a></td>
			<td>${list.s_order }</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	<br>
	<a href="<c:url value='/hotPlace/seoulCreate'/>" role="button" class="btn btn-outline-info"  style="font-size: 15px">글쓰기</a>
	 <button type="button" class="btn btn-outline-info"><a href="/hotPlace/hotPlaceList"> 핫플레이스 메인으로</a></button>
	 <button type="button" class="btn btn-outline-info"><a href="/hotPlace/adminMain"> 관리자 페이지</a></button>
</body>
</html>