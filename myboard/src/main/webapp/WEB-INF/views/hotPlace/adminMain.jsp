<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.center{
margin: 5px 25px; padding: 20px
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

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
		<th colspan="3" border="1" height="50px" class="center" style="font-size: 25px" >관리자 페이지</th>
	</tr>
	<tr height="140px">
		<td>&nbsp;&nbsp; <input type="button" class="btn btn-outline-info" onclick="go_Admin_seoul()" value="서울 구 관리 페이지">&nbsp;&nbsp;  </td>
		<td> <input type="button" class="btn btn-outline-info" onclick="go_Admin_thema()" value="테마 관리 페이지">&nbsp;&nbsp;  </td>
		<td><input type="button" class="btn btn-outline-info" onclick="go_Admin_hotPlace()" value="핫플레이스 페이지">  </td>
	</tr>
	
	<tr>
		<td colspan="3" align="center">
		    <button type="button" class="btn btn-outline-info" ><a href="/hotPlace/hotPlaceList">이전으로</a></button>
		</td>
	</tr>
</table>

</body>
</html>