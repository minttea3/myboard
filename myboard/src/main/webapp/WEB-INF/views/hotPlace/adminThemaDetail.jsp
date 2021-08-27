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

</head>
<body>
<h2>테마 상세 페이지</h2>
    <table border="1">
        <th> 정보 </th>
        <th> 데이터 </th>
        <tr>
            <td>순번</td><td>${data.t_code}</td>
        </tr>
        <tr>
            <td>지역</td><td>${data.t_name}</td>
        </tr>
        <tr>
            <td>정렬 순서</td><td>${data.t_order}</td>
        </tr>
    </table>
    <a href = "/hotPlace/themaUpdate?t_code=${data.t_code }" role="button" class="btn btn-outline-info">수정</a>
    <a href = "/hotPlace/themaDelete?t_code=${data.t_code }" role="button" class="btn btn-outline-info">삭제</a>
</body>
</html>