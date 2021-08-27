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
margin: 5px 25px; padding: 20px;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>
<h3>핫플레이스 관리 페이지</h3>
<table class="center" border="1" width="700px">
	<c:forEach items="${list}" var="list">
		<tr>
			<th rowspan="10" width="300px">🌹 <!--<img src="" alt="레스토랑 이미지"> --></th>
		</tr>
		<tr>
			<th>순번</th>
			<td>${list.h_code}</td>
		</tr>
		<tr>
			<th>지역 코드</th>
			<td>${list.s_code}</td>
		</tr>
		<tr>
			<th>테마코드</th>
			<td>${list.t_code}</td>
		</tr>
		
		<tr>
			<th>상호</th>
			<td><a href="${path}/hotPlace/hotPlaceUpdate?h_code=${list.h_code}">${list.shop_name }</a></td>
		</tr>
		<tr>
			<th>위치</th>
			<td>${list.loc}</td>
		</tr>
		<tr>
			<th>영업시간</th>
			<td>${list.hours}</td>
		</tr>
		<tr>
			<th>메뉴 & 가격</th>
			<td>${list.menu_price}</td>
		</tr>
		<tr>
			<th>댓글</th>
			<td>${list.comments}</td>
		</tr>
		<tr>
			<th>정렬순서</th>
			<td>${list.h_order}</td>
		</tr>
	</c:forEach>
	</table>
	<a href="<c:url value='/hotPlace/hotPlaceCreate'/>" role="button" class="btn btn-outline-info"  style="font-size: 15px">핫플레이스 추가</a>
	 <button type="button" class="btn btn-outline-info"><a href="/hotPlace/hotPlaceList"> 핫플레이스 메인으로</a></button>
	 <button type="button" class="btn btn-outline-info"><a href="/hotPlace/adminMain"> 관리자 페이지</a></button>
</body>
</html>