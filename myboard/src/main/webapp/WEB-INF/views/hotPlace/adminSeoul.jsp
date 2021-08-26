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
			<td><a href="${path}/hotPlace/adminSeoulDetail?s_code=${list.s_code}">${list.s_code }</a></td>
			<td>${list.s_name }</td>
			<td>${list.s_order }</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	<a href="<c:url value='/hotPlace/seoulCreate'/>" role="button" class="btn btn-outline-info"  style="font-size: 15px">글쓰기</a>
	 <button type="button" class="btn btn-outline-info"><a href="../">돌아가기</a></button>
</body>
</html>