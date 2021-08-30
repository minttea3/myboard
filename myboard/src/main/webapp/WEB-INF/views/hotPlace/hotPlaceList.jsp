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
	location.href="/hotPlace/adminMain";
}
</script>
<style>
.center{
margin: 5px 25px; padding: 20px
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body class="center">

	<h1>핫플레이스</h1>
	<div style="width:1000px"  class="form-group" align="right"><input type="button" class="btn btn-outline-info" onclick="go_admin()" value="관리자 페이지"></div>
	
	<div>지역</div>
	<form method="post" action="${path}/hotPlace/hotPlaceList">
		<select name="s_code" style="width:100px">
			<option value="전체">전체</option>
		 <c:forEach items="${list}" var="list">
			<option value="${list.s_code }">${list.s_name }</option>
		</c:forEach>
		</select>
		<div >테마</div>
		<select name="t_code" style="width:100px">
			<option value="전체">전체</option>
		<c:forEach items="${list2}" var="list2"> 
			<option value="${list2.t_code }">${list2.t_name }</option>
		</c:forEach> 
		</select>
		<button type="submit" class="btn btn-outline-info">검색</button>
	</form>	
	
	<br>
	
	<table border="1" width="1000px">
	
	<tr>	
		<th>이미지</th>
		<th>상호</th>
		<th>위치</th>
		<th>영업시간</th>
		<th>메뉴&가격</th>
		<th>댓글</th>
	</tr>
	<c:if test="${empty list3}">
	<tr>
		<td colspan="6" height="150px" align="center">조회 결과가 없습니다.</td>
	</tr>
	</c:if>
	<c:forEach items="${list3}" var="list3">
	<%-- 	<tr>
			<th rowspan="6" width="300px" style="text-align: center;">🌹 <!--<img src="" alt="레스토랑 이미지"> --></th>
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
		</tr> --%>
		<tr>
			<td style="text-align: center;">🌹 </td>
			<td>${list3.shop_name }</td>
			<td>${list3.loc} </td>
			<td>${list3.hours} </td>
			<td>${list3.menu_price}</td>
			<td>${list3.comments}</td>
		</tr>
	</c:forEach>
	</table>
<br>
 <button type="button" class="btn btn-outline-info"><a href="../">돌아가기</a></button>
</body>
</html>