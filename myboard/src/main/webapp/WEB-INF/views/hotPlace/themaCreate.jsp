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
<h3>테마 등록 페이지</h3>
<form class="center" method="post" >
        <h2>Create Page</h2>
        <div class="form-group">
              <label>코드번호</label>
            <input type="text" class="form-control" name="t_code" placeholder="t를 붙여주세요.ex) t01">
        </div>
        <div class="form-group">
            <label>코드명</label>
            <input type="text" class="form-control" name="t_name" placeholder="테마를 적어주세요.">
        </div>
        <div class="form-group">
            <label>정렬순서</label>
            <input class="form-control" name="t_order" placeholder="정렬 순서를 적어주세요.">
        </div>
       
    <button type="submit" class="btn btn-outline-info">등록</button>
    <button type="button" class="btn btn-outline-info"><a href="/hotPlace/adminThema">돌아가기</a></button>
    </form>
</body>
</html>