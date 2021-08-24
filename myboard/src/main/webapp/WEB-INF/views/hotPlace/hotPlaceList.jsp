<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>핫플레이스</h1>
	<div>지역</div>
	<select name="seoul">
	 <c:forEach items="${list}" var="list">
		<option value="${list.s_code }">${list.zone_name }</option>
	</c:forEach>
	</select>
	<div>테마</div>
	<select name="thema">
	<c:forEach items="${list2}" var="list2"> 
		<option value="${list2.t_code }">${list2.thema_name }</option>
	</c:forEach> 
	</select>
	<button type="submit" onclick="">검색</button>
	
	<table border="1" width="700px">
	<c:forEach items="${list3}" var="list3">
		<tr>
			<th rowspan="6"><img src="good_restaurant1.png" alt="레스토랑 이미지"></th>
		</tr>
		<tr>
			<th>상호</th>
			<td>${list3.shop_name }</td>
		</tr>
		<tr>
			<th>위치</th>
			<td>${list3.loc}</td>
		</tr>
		<tr>
			<th>영업시간</th>
			<td>${list3.hours}</td>
		</tr>
		<tr>
			<th>메뉴 & 가격</th>
			<td>${list3.menu_price}</td>
		</tr>
		<tr>
			<th>댓글</th>
			<td>${list3.comments}</td>
		</tr>
	</c:forEach>
	</table>
	
 <button type="button" class="btn btn-outline-info"><a href="../">돌아가기</a></button>
</body>
</html>