<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>핫플레이스 상세 페이지</h2>
       <table border="1">
        <tr>
			<th rowspan="10" width="300px">🌹 <!--<img src="" alt="레스토랑 이미지"> --></th>
		</tr>
		<tr>
			<th>순번</th>
			<td>${data.h_code}</td>
		</tr>
		<tr>
			<th>지역 코드</th>
			<td>${data.s_code}</td>
		</tr>
		<tr>
			<th>테마코드</th>
			<td>${data.t_code}</td>
		</tr>
		
		<tr>
			<th>상호</th>
			<td>${data.shop_name }</td>
		</tr>
		<tr>
			<th>위치</th>
			<td>${data.loc}</td>
		</tr>
		<tr>
			<th>영업시간</th>
			<td>${data.hours}</td>
		</tr>
		<tr>
			<th>메뉴 & 가격</th>
			<td>${data.menu_price}</td>
		</tr>
		<tr>
			<th>댓글</th>
			<td>${data.comments}</td>
		</tr>
		<tr>
			<th>정렬순서</th>
			<td>${data.h_order}</td>
		</tr>
    </table>
    <a href = "/hotPlace/hotPlaceUpdate?h_code=${data.h_code }" role="button" class="btn btn-outline-info">수정</a>
    <a href = "/hotPlace/hotPlaceDelete?h_code=${data.h_code }" role="button" class="btn btn-outline-info">삭제</a>
</body>
</html>