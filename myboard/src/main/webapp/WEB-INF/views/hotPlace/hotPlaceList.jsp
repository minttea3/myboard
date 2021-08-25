<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
function allList(){
	location.href = "/hotPlace/hotPlaceList";
}

function go_admin(){
	location.href="/hotPlace/adminList";
}
</script>
</head>
<body>

	<h1>핫플레이스</h1>
	<div style="width:700px" align="right"><input type="button" onclick="go_admin()" value="관리자 페이지"></div>
	
	<div>지역</div>
	<form method="post" action="${path}/hotPlace/hotPlaceList">
		<select name="s_code" style="width:100px">
		 <c:forEach items="${list}" var="list">
			<option value="${list.s_code }">${list.zone_name }</option>
		</c:forEach>
		</select>
		<div>테마</div>
		<select name="t_code" style="width:100px">
		<c:forEach items="${list2}" var="list2"> 
			<option value="${list2.t_code }">${list2.thema_name }</option>
		</c:forEach> 
		</select>
		<button type="submit">검색</button>
	</form>	
	
	<div width="700px" style="width: 700px; text-align: right;"><input type="button" onclick="allList()" value="전체보기"></div>
	
	<table border="1" width="700px">
	<c:forEach items="${list3}" var="list3">
		<tr>
			<th rowspan="6" width="300px">🌹 <!--<img src="" alt="레스토랑 이미지"> --></th>
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