<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function seoulUpdate(){
	alert("di");
	var showZone=document.getElementById("hiddenZone");
	var showText=document.getElementById("hiddenZoneVal");
	var update_bt2=document.getElementById("update_bt2");
	var update_bt=document.getElementById("update_bt");
	showZone.style.display="block";
	showText.style.display="block";
	update_bt2.style.display="block";
	update_bt.style.display="none";
	
}
function seoulUpdate2(s_code, zone_name){
	alert("deeei");
	l
}
</script>
</head>
<body>
	<h3>관리자 페이지</h3>
	<table border="1" cellspacing="0" style="width:500px; text-align: center;">
	<thead>
		<tr>
			<th colspan="2" style="background-color:yellow">서울 지역</th>
		</tr>
	</thead>
	<tbody>
	
		<tr>
			<th>순번</th>
			<th>지역</th>
		</tr>
	<c:forEach items="${list}" var="list">
		<tr>
			<td>${list.s_code }</td>
			<td>${list.zone_name }</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	
	<form  method="post" action="${path}/hotPlace/adminList">
	<table>
		<tr>
			<th>순번</th>
			<td><input type="text" name="s_code" style="width:200px"></td>
	
			<th>지역</th>
			<td><input type="text" name="zone_name"></td>
			<td><input type="submit" value="등록"></td>
		</tr>
		<tr>
			<th>순번</th>
			<td><input type="text" name="s_code" style="width:200px"></td>
			<th><span style="display: none;" id="hiddenZone">지역</span></th>
			<td><input type="text" name="zone_name" id="hiddenZoneVal" style="display: none;"></td>
		<%-- 	<td><input type="button" value="수정" id="update_bt" onclick="seoulUpdate()"><input type="button" value="수정하기" id="update_bt2" onclick="location.href='/hotPlace/adminLists?s_code='+${s_code}+'&zone_name='+zone_name;" style="display: none;"></td> --%>
		</tr>
	</table>
	</form>
	
	
		
 <button type="button" class="btn btn-outline-info"><a href="/hotPlace/hotPlaceList">돌아가기</a></button>
</body>
</html>