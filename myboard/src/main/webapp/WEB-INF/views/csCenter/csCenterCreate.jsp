<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.center{
margin: 5px 25px; padding: 20px
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Create</title>
</head>
<body>
    <form class="center" method="post">
        <h2>Create Page</h2>
        <div class="form-group">
              <label>글쓴이</label>
            <input type="text" class="form-control" name="writer" placeholder="이름을 작성해주세요.">
        </div>
        <div class="form-group">
            <label>제목</label>
            <input type="text" class="form-control" name="subject" placeholder="제목을 적어주세요.">
        </div>
        <div class="form-group">
            <label>본문</label>
            <input class="form-control" name="content" placeholder="내용을 적어주세요.">
        </div>
       
    <button type="submit" class="btn btn-outline-info">등록</button>
    <button type="button" class="btn btn-outline-info"><a href="/csCenter/csCenterList">돌아가기</a></button>
    </form>
</body>
</html>