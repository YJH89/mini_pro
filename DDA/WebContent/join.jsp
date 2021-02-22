<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
</head>
<body>
	<center>
		<form action="/joinaction.jsp" method="POST" id="signform">
			<h1>회원가입</h1>
			<div id="wrapper">
				<p> 
					<label>아이디 : </label><input type="text" name="id" id="id" placeholder="영문+숫자">
				<div class="id regex"></div>
				</p>

				<p>
					<label>패스워드 : </label><input type="password" name="pw" id="pw"placeholder="영문+숫자"><br>
				<div class="pw regex"></div>
				</p>

				<p>
					<label>전화번호 : </label><input type="text" name="phone" id="phone"placeholder="-없이 표기"><br>
				<div class="phone regex"></div>

				<button type="submit">회원가입하기</button>
		</form>
	</center>

<script>
    $(function openIdChk(){
		
    	window.name = "parentForm";
    	window.open("member/IdCheckForm.jsp",
    			"chkform","wifth=500, heigh=300, resizable = no, scrollbars=no");
    

    </script>
</body>
</html>
