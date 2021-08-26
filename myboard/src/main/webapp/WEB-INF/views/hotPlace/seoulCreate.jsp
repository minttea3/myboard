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
<h3>서울 '구' 등록 페이지</h3>
<form class="center" method="post">
        <h2>Create Page</h2>
        <div class="form-group">
              <label>코드번호</label>
            <input type="text" class="form-control" name="s_code" placeholder="s를 붙여주세요.ex) s01">
        </div>
        <div class="form-group">
            <label>코드명</label>
            <input type="text" class="form-control" name="s_name" placeholder="구를 적어주세요.">
        </div>
        <div class="form-group">
            <label>정렬순서</label>
            <input class="form-control" name="s_order" placeholder="정렬 순서를 적어주세요.">
        </div>
       
    <button type="submit" class="btn btn-outline-info">등록</button>
    <button type="button" class="btn btn-outline-info"><a href="/hotPlace/adminSeoul">돌아가기</a></button>
    </form>
</body>
</html>