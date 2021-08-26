<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>서울 '구' 상세 페이지</h2>
<h2>Detail page</h2>
    <table border="1">
        <th> 정보 </th>
        <th> 데이터 </th>
        <tr>
            <td>순번</td><td>${data.s_code}</td>
        </tr>
        <tr>
            <td>지역</td><td>${data.s_name}</td>
        </tr>
        <tr>
            <td>정렬 순서</td><td>${data.s_order}</td>
        </tr>
    </table>
    <a href = "/hotPlace/seoulUpdate?s_code=${data.s_code }" role="button" class="btn btn-outline-info">수정</a>
    <a href = "/hotPlace/seoulDelete?s_code=${data.s_code }" role="button" class="btn btn-outline-info">삭제</a>
</body>
</body>
</html>