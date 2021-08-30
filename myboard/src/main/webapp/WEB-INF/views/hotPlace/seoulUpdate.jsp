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
 <h2>Update page</h2>
    <form name="seoulUpdate" class="center" method="POST" action="${path}/hotPlace/seoulUpdate?s_code=${data.s_code}">
    
        <div  class="form-group">순번 : ${data.s_code}</div>
        <div  class="form-group">구 :</div>
        <div><input name="s_name"  class="form-control" value="${data.s_name}" type="text"/></div>
        <div  class="form-group">정렬순서 : </div>
        <div  class="form-group"><input name="s_order"  class="form-control" value="${data.s_order}" type="text"/></div>
  		<div class="form-group">
            <input type="submit" class="btn btn-outline-info" value="완료"/>
            <input type="reset" class="btn btn-outline-info" value="리셋"/>
             <a href = "/hotPlace/seoulDelete?s_code=${data.s_code }" role="button" class="btn btn-outline-info">삭제</a>
             <br>
            <button type="button" class="btn btn-outline-info"><a href="/hotPlace/hotPlaceList"> 핫플레이스 메인으로</a></button>
            <button type="button" class="btn btn-outline-info"><a href="/hotPlace/adminSeoul">이전으로</a></button>
        </div>
    </form>
</body>
</html>