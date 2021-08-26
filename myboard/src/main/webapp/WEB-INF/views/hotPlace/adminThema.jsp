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
<h1>테마 관리 페이지</h1>
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
			<td><a href="${path}/hotPlace/adminThemaDetail?t_code=${list.t_code}">${list.t_code }</a></td>
			<td>${list.t_name }</td>
			<td>${list.t_order }</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	<a href="<c:url value='/hotPlace/themaCreate'/>" role="button" class="btn btn-outline-info"  style="font-size: 15px">글쓰기</a>
	 <button type="button" class="btn btn-outline-info"><a href="../">돌아가기</a></button>
</body>
</html>