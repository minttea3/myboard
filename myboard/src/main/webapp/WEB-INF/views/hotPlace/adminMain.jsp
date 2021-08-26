<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

function go_Admin_seoul(){
	location.href="/hotPlace/adminSeoul";
}
function go_Admin_thema(){
	location.href="/hotPlace/adminThema";
}
function go_Admin_hotPlace(){
	location.href="/hotPlace/adminHotPlace";
}

</script>
</head>
<body>
<table>
	<tr>
		<th colspan="3" border="1" height="50px">관리자 페이지</th>
	</tr>
	<tr>
		<td><input type="button" onclick="go_Admin_seoul()" value="서울 구 관리 페이지"></td>
		<td><input type="button" onclick="go_Admin_thema()" value="테마 관리 페이지"></td>
		<td><input type="button" onclick="go_Admin_hotPlace()" value="핫플레이스 페이지"></td>
	</tr>
</table>
	
</body>
</html>