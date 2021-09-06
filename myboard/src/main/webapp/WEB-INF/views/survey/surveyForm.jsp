<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
function onCheck(chk){//체크박스 하나만 클릭
	var obj = document.getElementsByName("s_purpose_of_visit");
	for(var i = 0 ; i < obj.length ; i++){
		if(obj[i] != chk){
			obj[i].checked = false;
		}
	}
}

function levelCheck(ck){//체크박스 하나만 클릭
	var obj = document.getElementsByName("s_level_of_satisfaction");
	for(var i = 0 ; i < obj.length ; i++){
		if(obj[i] != ck){
			obj[i].checked = false;
		}
	}
}
///$("input[type=hidden][name=num]").val(); // 2
 function jbSubmit() {
	/* alert("d");
	console.log("ddd"); */
	console.log("ddd");
	var s_email = document.getElementByName('s_email').value;
	var email1 = document.getElementByName('email1').value;
	var email2 = document.getElementByName('email2').value;
	var email3 = document.getElementByName('email3').value;
	s_email = email1 +"@" + email2 + email3;
	alert(s_email);
}

	


$(document).ready(function(){
	$('#selectEmail').change(function(){
		$("#selectEmail option:selected").each(function () { 
			if($(this).val()== '1'){ //직접입력일 경우
				$("#email2").val(''); //값 초기화 
				$("#email2").attr("disabled",false); //활성화
			}else{ //직접입력이 아닐경우
				$("#email2").val($(this).text()); //선택값 입력
				$("#email2").attr("disabled",true); //비활성화
				} 
			});
	
	});
	
	
	
	
});
</script>
</head>
<body class="container">
<br>
	<h3 class="h3">웹 사이트 관련 설문 조사</h3>
	<p>안녕하세요.
	저는 minttea사의트의 담당자인 민트입니다.<br>
	저희 사이트의 대한 만족도 조사를 해보려고 합니다.<br>
	사용자 분들의 관심과 참여에 감사드립니다</p>
	  <form class="center" method="post"  onsubmit="jbSubmit();" name="surveyForm" > 
	<table class="table">
		<tr>
			<th class="table-success">이름</th>
			<td><input type="text" name="s_name"></td>
		</tr>
		<tr>
			<th class="table-success">성별</th>
			<td>
				<select name="s_gender" class="form-select" aria-label="Default select example">
					<option value="선택">성별 선택
					<option value="남">남
					<option value="여">여
				</select>
			</td>
			
		</tr>
		<tr>
			<th class="table-success">나이</th>
			<td>
				<input type="radio" class="form-check-input" name="s_age" value="10대"> 10대 
				<input type="radio" class="form-check-input" name="s_age" value="20대"> 20대 
				<input type="radio" class="form-check-input" name="s_age" value="30대"> 30대 
				<input type="radio" class="form-check-input" name="s_age" value="40대"> 40대 
				<input type="radio" class="form-check-input" name="s_age" value="50대"> 50대 
			</td>
		</tr>
		<tr>
			<th class="table-success">메일주소</th>
			<td>
				<input type="text" name="email1" id="email1">@<input type="text" name="email2" id="email2">
				<select name="email3" id="selectEmail">
					<option value="1">직접 입력</option>
					<option value=naver.com>naver.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="hanmail.net">hanmail.net</option> 
					<option value="hotmail.com">hotmail.com</option>
				</select>
				
			</td>
		</tr>
	
		<tr>
			<th class="table-success">방문 목적</th>
			<td>
				<input type="checkbox" class="form-check-input" name="s_purpose_of_visit" value="게시판" onclick="onCheck(this);">방명록 
				<input type="checkbox" class="form-check-input" name="s_purpose_of_visit" value="핫플레이스" onclick="onCheck(this);" >핫플레이스 
				<input type="checkbox" class="form-check-input" name="s_purpose_of_visit" value="그 외" onclick="onCheck(this);">그외 
			</td>
		</tr>
		<tr>
			<th class="table-success">만족도</th>
			<td>
				<input type="checkbox" class="form-check-input" name="s_level_of_satisfaction" value="5" onclick="levelCheck(this);">⭐⭐⭐⭐⭐ 
				<input type="checkbox" class="form-check-input" name="s_level_of_satisfaction" value="4" onclick="levelCheck(this);">⭐⭐⭐⭐ 
				<input type="checkbox" class="form-check-input" name="s_level_of_satisfaction" value="3" onclick="levelCheck(this);">⭐⭐⭐ 
				<input type="checkbox" class="form-check-input" name="s_level_of_satisfaction" value="2" onclick="levelCheck(this);">⭐⭐ 
				<input type="checkbox" class="form-check-input" name="s_level_of_satisfaction" value="1" onclick="levelCheck(this);">⭐
			</td>
		</tr>
		<tr>
			<th class="table-success">개선사항</th>
			<td><textarea name="s_improvements" class="form-control" cols="60" rows="5"> </textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit" class="btn btn-outline-info">등록</button>
	 		    <button type="button" class="btn btn-outline-info"><a href="/survey/surveyList" style="text-decoration : none;">돌아가기</a></button>
			</td>
		</tr>
	</table>
	 
    </form>
</body>
</html>