<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
.center{
margin: 5px 25px; padding: 20px;
}
</style>

</head>
<body>
<h3>핫플레이스 등록 페이지</h3>
<form class="center" method="post">
        <h2>Create Page</h2>
        <div class="form-group">
              <label>순번</label>
            <input type="text" class="form-control" name="h_code" placeholder="숫자만 입력가능합니다.">
        </div>
        <div class="form-group">
            <label>지역 코드명</label>
            <input type="text" class="form-control" name="s_code" placeholder="구를 적어주세요.">
        </div>
        <div class="form-group">
            <label>테마 코드명</label>
            <input type="text" class="form-control" name="t_code" placeholder="테마를 적어주세요.">
        </div>
        <div class="form-group">
            <label>상호명</label>
            <input type="text" class="form-control" name="shop_name" placeholder="상호명을 적어주세요.">
        </div>
        <div class="form-group">
            <label>이미지</label>
            <input type="text" class="form-control" name="image" placeholder="">
        </div>
        <div class="form-group">
            <label>위치</label>
            <input type="text" class="form-control" name="loc" placeholder="">
        </div>
        <div class="form-group">
            <label>영업 시간</label>
            <input type="text" class="form-control" name="hours" placeholder="">
        </div>
        <div class="form-group">
            <label>댓글</label>
            <input type="text" class="form-control" name="comments" placeholder="">
        </div>
        <div class="form-group">
            <label>정렬순서</label>
            <input class="form-control" name="h_order" placeholder="숫자만 입력 가능 합니다..">
        </div>
       
    <button type="submit" class="btn btn-outline-info">등록</button>
    <button type="button" class="btn btn-outline-info"><a href="/hotPlace/adminHotPlace">돌아가기</a></button>
    </form>
</body>
</html>