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
    <form name="hotPlaceUpdate" method="POST" action="${path}/hotPlace/hotPlaceUpdate?h_code=${data.h_code}">
    
        <div>순번 : ${data.h_code}</div>
        <div>지역:</div>
        <div><input name="s_code" value="${data.s_code}" type="text"/></div>
        <div>테마 : </div>
        <div><input name="t_code" value="${data.t_code}" type="text"/></div>
        <div>상호명 : </div>
        <div><input name="shop_name" value="${data.shop_name}" type="text"/></div>
        <div>이미지 : </div>
        <div><input name="image" value="${data.image}" type="text"/></div>
        <div>위치 : </div>
        <div><input name="loc" value="${data.loc}" type="text"/></div>
        <div>영업시간 : </div>
        <div><input name="hours" value="${data.hours}" type="text"/></div>
        <div>메뉴&가격 : </div>
        <div><input name="menu_price" value="${data.menu_price}" type="text"/></div>
        <div>댓글 : </div>
        <div><input name="comments" value="${data.comments}" type="text"/></div>
        <div>정렬순서 : </div>
        <div><input name="h_order" value="${data.h_order}" type="text"/></div>
  		<div>
            <input type="submit" class="btn btn-outline-info" value="완료"/>
            <input type="reset" class="btn btn-outline-info" value="리셋"/>
        </div>
    </form>
</body>
</html>