<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CodeGroupForm</title>
</head>
<body>
<br>
<form name="myForm" id="myForm" method="post" action="/codeGroup/codeGroupInst">

	<input type="text" name="ifcgName" id="ifcgName">
	<br>
	<select name="telecom" id="telecom">
		<option>선택하세요</option>
		<option value="1">skt</option>
		<option value="2">kt</option>
		<option value="3">lgt</option>
	</select>
	<br>
	<input type="hidden" name="gender" value="">
	<input type="radio" id="gender1" name="gender" value="1">남성
	<input type="radio" id="gender2" name="gender" value="2">여성
	<input type="radio" id="gender3" name="gender" value="3">기타
	<br>
	<span style="cursor: pointer;" onClick="test()">span태그저장</span>
	<br>
	<!-- <a href="" onclick="bbb();">저장</a> -->
	<!-- <input type="submit" onclick="aaa();"> -->
	<!-- <span onclick="bbb();" style="cursor: pointer;" id="asdf">asdf</span> -->
	
	
	
</form>
<c:forEach items="${list}" var="list" varStatus="status">
	<c:out value="${list.ifcgSeq }"/> / <c:out value="${list.ifcgName }"/>
	<br>		
</c:forEach>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function test() {
		
		//alert("test");
		
		//alert(document.getElementById('ifcgName').value);
		
		//alert(document.getElementById('telecom').options[document.getElementById('telecom').selectedIndex].value);
		//alert(document.getElementById('telecom').value);

		//alert(document.querySelector("input[name='gender']:checked").value);
/*		
		if(document.getElementById("ifcgName").value == '' || document.getElementById("ifcgName").value == null){
			alert("입력해 주세요....");
			document.getElementById("ifcgName").value= "";
			document.getElementById("ifcgName").focus();
			//return true;
		}
*/		
		// var aaa = document.querySelector("input[name='gender']:checked").size();
		// alert("aaa: " + aaa);
		if(document.querySelector("input[name='gender']:checked") == null){
			alert("asdfa");
		} else {
			alert("zzz");
		}
		
		return false;
		document.getElementById("myForm").submit();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	function aaa() {
		alert("aaa");
		
		return false;
	}
	
	function bbb() {
		alert("bbb");
		// return false;
		// document.forms["myForm"].submit();
		
		alert(document.getElementById("ifcgName").value);
		
		
		
		document.getElementById("myForm").submit();
	}
	
	$("#asdf").on("click", function(){
		alert("jquery");
		alert($("#ifcgName").val());
		alert(document.getElementById("ifcgName").value);
		
		if(document.getElementById("ifcgName").value == '' || document.getElementById("ifcgName").value == null){
			alert("입력해 주세요....");
			return false;
		}
		$("#myForm").submit();
		return false;
	});
	
</script>
</body>
</html>