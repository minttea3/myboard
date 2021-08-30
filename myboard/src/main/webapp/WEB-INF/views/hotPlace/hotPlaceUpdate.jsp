<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.center{
margin: 5px 25px; padding: 20px;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	 $( document ).ready( function() {
		$("#sNameSelect").val("${data.s_code}").attr("selected", "selected");
		$("#tNameSelect").val("${data.t_code}").attr("selected", "selected");
			
	 } );
	 $(function () {
	      $("#btnReset").bind("click", function () {
	    	  location.reload();
	       });
	    });
	 
	   
</script>
</head>
<body>
 <h2>Update page</h2>
    <form name="hotPlaceUpdate" class="center" method="POST" action="${path}/hotPlace/hotPlaceUpdate?h_code=${data.h_code}">
    
        <div class="form-group">순번 : ${data.h_code}</div>
        <div class="form-group">지역:</div>
        <div><%-- <input  class="form-control" name="s_code" value="${data.s_code}" type="text"/> --%>
	        <select id="sNameSelect" name="s_code" style="width:100px">
				<c:forEach items="${s_list}" var="s_list">
					<option value="${s_list.s_code }">${s_list.s_name }</option>
				</c:forEach>
			</select>
	        
        </div>
        <div class="form-group">테마 : </div>
        <div><%-- <input name="t_code"  class="form-control" value="${data.t_code}" type="text"/> --%>
	        <select id="tNameSelect" name="t_code" style="width:100px">
				<c:forEach items="${t_list}" var="t_list"> 
					<option value="${t_list.t_code }">${t_list.t_name }</option>
				</c:forEach> 
			</select>
        </div>
        <div class="form-group">상호명 : </div>
        <div ><input id="shop_name" name="shop_name" class="form-control"  value="${data.shop_name}" type="text"/></div>
        <div class="form-group">이미지 : </div>
        <div><input name="image"  class="form-control" value="${data.image}" type="text"/></div>
        <div class="form-group">위치 : </div>
        <div><input name="loc"  class="form-control" value="${data.loc}" type="text"/></div>
        <div class="form-group">영업시간 : </div>
        <div><input name="hours"  class="form-control" value="${data.hours}" type="text"/></div>
        <div class="form-group">메뉴&가격 : </div>
        <div><input name="menu_price"  class="form-control" value="${data.menu_price}" type="text"/></div>
        <div class="form-group">댓글 : </div>
        <div><input name="comments"  class="form-control" value="${data.comments}" type="text"/></div>
        <div class="form-group">정렬순서 : </div>
        <div><input name="h_order"  class="form-control" value="${data.h_order}" type="text"/></div>
  		<div class="form-group">
            <input type="submit" class="btn btn-outline-info" value="완료"/>
            <input type="button" id="btnReset" class="btn btn-outline-info" value="리셋"/>
             <a href = "/hotPlace/hotPlaceDelete?h_code=${data.h_code }" role="button" class="btn btn-outline-info">삭제</a>
             <br>
            <button type="button" class="btn btn-outline-info"><a href="/hotPlace/hotPlaceList"> 핫플레이스 메인으로</a></button>
            <button type="button" class="btn btn-outline-info"><a href="/hotPlace/adminHotPlace">이전으로</a></button>
        
        </div>
    </form>
</body>
</html>