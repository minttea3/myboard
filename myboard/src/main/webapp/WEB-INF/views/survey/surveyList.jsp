<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body class="container">
<br>
 <h3 class="h3"> 설문 조사 리스트 </h3>
 <br>
 <br>
 <br>

 <table  class="table">
 	<tr>
 		<th>순번</th>
 		<th>이름</th>
 		<th>성별</th>
 		<th>나이</th>
 		<th>이메일</th>
 		<th>방문목적</th>
 		<th>만족도</th>
 		<th>개선사항</th>
 	</tr>
<c:if test="${empty list }">
 	<tr>
					<td colspan="8">조회된 내역이 없습니다.</td>
	</tr>
</c:if>

<c:forEach items="${list}" var="list">
	<tr>
	 	<td>${list.s_idx }</td>
	 	<td><a href="${path}/survey/surveyUpdate?s_idx=${list.s_idx}">${list.s_name }</a></td>
	 	<td>${list.s_gender }</td>
	 	<td>${list.s_age }</td>
	 	<td>${list.s_email }</td>
	 	<td>${list.s_purpose_of_visit }</td>
	 	<td>${list.s_level_of_satisfaction }</td>
	 	<td>${list.s_improvements }</td>
 	<tr>
</c:forEach>
 </table>
 <a href="/survey/surveyForm" role="button" class="btn btn-outline-info"  style="font-size: 15px">설문조사 참여하기</a>
  <button type="button" class="btn btn-outline-info"><a href="../" style="text-decoration : none;">돌아가기</a></button>
</body>
</html>