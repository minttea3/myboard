<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>Update page</h2>
    <form name="seoulUpdate" method="POST" action="${path}/hotPlace/seoulUpdate?s_code=${data.s_code}">
    
        <div>순번 : ${data.s_code}</div>
        <div>구 :</div>
        <div><input name="s_name" value="${data.s_name}" type="text"/></div>
        <div>정렬순서 : </div>
        <div><input name="s_order" value="${data.s_order}" type="text"/></div>
  		<div>
            <input type="submit" class="btn btn-outline-info" value="완료"/>
            <input type="reset" class="btn btn-outline-info" value="리셋"/>
        </div>
    </form>
</body>
</html>