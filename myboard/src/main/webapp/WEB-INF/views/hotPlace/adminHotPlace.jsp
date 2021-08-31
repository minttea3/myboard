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
<head><script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
<script type="text/javascript">
		$(function(){
			var chkObj = document.getElementsByName("RowCheck");
			var rowCnt = chkObj.length;
			
			$("input[name='allCheck']").click(function(){
				var chk_listArr = $("input[name='RowCheck']");
				for (var i=0; i<chk_listArr.length; i++){
					chk_listArr[i].checked = this.checked;
				}
			});
			$("input[name='RowCheck']").click(function(){
				if($("input[name='RowCheck']:checked").length == rowCnt){
					$("input[name='allCheck']")[0].checked = true;
				}
				else{
					$("input[name='allCheck']")[0].checked = false;
				}
			});
		});
		function deleteHotPlaceList(){
			var url = "deleteHotPlaceList";    // Controller로 보내고자 하는 URL
			var valueArr = new Array();
		    var list = $("input[name='RowCheck']");
		    for(var i = 0; i < list.length; i++){
		        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
		            valueArr.push(list[i].value);
		        }
		    }
		    if (valueArr.length == 0){
		    	alert("선택된 글이 없습니다.");
		    }
		    else{
				var chk = confirm("정말 삭제하시겠습니까?");				 
				$.ajax({
				    url : url,                    // 전송 URL
				    type : 'POST',                // POST 방식
				    traditional : true,
				    data : {
				    	valueArr : valueArr        // 보내고자 하는 data 변수 설정
				    },
	                success: function(jdata){
	                    if(jdata = 1) {
	                        alert("삭제 성공");
	                        location.replace("adminHotPlace") //list 로 페이지 새로고침
	                    }
	                    else{
	                        alert("삭제 실패");
	                    }
	                }
				});
			}
		}
</script>
</head>
<body>
<h3>핫플레이스 관리 페이지</h3>
<article class="center">
	<form name="adminHotPlaceSearch" action="${path}/hotPlace/adminHotPlaceSearch" enctype="multipart/form-data">
			<legend style="font-size: 15px">사원 정보 여러 조건으로  검색</legend>
		<label>지역명</label>
		<select name="s_name" style="width:100px">
				<option value="전체">전체</option>
			<c:forEach items="${s_list}" var="s_list">
				<option value="${s_list.s_name }">${s_list.s_name }</option>
			</c:forEach>
		</select>
		<label>테마명</label>
		<select name="t_name" style="width:100px">
			<option value="전체">전체</option>
		<c:forEach items="${t_list}" var="t_list"> 
			<option value="${t_list.t_name }">${t_list.t_name }</option>
		</c:forEach> 
		</select>
		<span>상호명</span>
		<input type="text" name="shop_name">
		<button type="submit" class="btn btn-outline-info">검색</button>
	</form>
</article>

<table class="center" border="1" width="1000px">

	<tr>
	    <th><input id="allCheck" type="checkbox" name="allCheck"></th>
		<th>지역명</th>
		<th>테마명</th>
		<th>이미지</th>
		<th>상호</th>
		<th>위치</th>
		<th>영업시간</th>
		<th>메뉴&가격</th>
		<th>댓글</th>
	</tr>
		<c:if test="${empty list}">
	<tr>
		<td colspan="6" height="150px" align="center">조회 결과가 없습니다.</td>
	</tr>
	</c:if>
	<c:forEach items="${list}" var="list">
		<%-- <tr>
			<th rowspan="10" width="300px" style="text-align: center;">🌹 <!--<img src="" alt="레스토랑 이미지"> --></th>
		</tr>
		<tr>
			<th>순번</th>
			<td colspan="3">${list.h_code}</td>
		</tr>
		<tr>
			<th>지역 코드</th>
			<td>${list.s_code}</td>
			<th>지명역</th>
			<td>${list.s_name }
		</tr>
		<tr>
			<th>테마코드</th>
			<td>${list.t_code}</td>
			<th>테마명</th>
			<td>${list.t_name }
		</tr>
		
		<tr>
			<th>상호</th>
			<td colspan="3"><a href="${path}/hotPlace/hotPlaceUpdate?h_code=${list.h_code}">${list.shop_name }</a></td>
		</tr>
		<tr>
			<th>위치</th>
			<td colspan="3">${list.loc}</td>
		</tr>
		<tr>
			<th>영업시간</th>
			<td colspan="3">${list.hours}</td>
		</tr>
		<tr>
			<th>메뉴 & 가격</th>
			<td colspan="3">${list.menu_price}</td>
		</tr>
		<tr>
			<th>댓글</th>
			<td colspan="3">${list.comments}</td>
		</tr>
		<tr>
			<th>정렬순서</th>
			<td colspan="3">${list.h_order}</td>
		</tr> --%>
		<tr>
			<td><input name="RowCheck" type="checkbox" value="${list.h_code }"></td>
			<td>${list.s_name }</td>
			<td>${list.t_name }</td>
			<td style="text-align: center;">🌹 </td>
			<td><a href="${path}/hotPlace/hotPlaceUpdate?h_code=${list.h_code}">${list.shop_name }</a></td>
			<td>${list.loc} </td>
			<td>${list.hours} </td>
			<td>${list.menu_price}</td>
			<td>${list.comments}</td>
		</tr>
	</c:forEach>
	</table>
	<a href="<c:url value='/hotPlace/hotPlaceCreate'/>" role="button" class="btn btn-outline-info"  style="font-size: 15px">핫플레이스 추가</a>
	<input type="button" value="선택 삭제" class="btn btn-outline-info" onclick="deleteHotPlaceList();">
	<br> 
	 <button type="button" class="btn btn-outline-info"><a href="/hotPlace/hotPlaceList"> 핫플레이스 메인으로</a></button>
	 <button type="button" class="btn btn-outline-info"><a href="/hotPlace/adminMain"> 관리자 페이지</a></button>
</body>
</html>