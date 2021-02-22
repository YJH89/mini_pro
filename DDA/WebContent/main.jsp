<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>따릉이는 처음이라</title>
</head>
<body>
    <center>
        <h1>로그인</h1>
        <table>
            <form action="/loginaction.jsp" method="post">
                <p><input id="user_id" name="id" type="text" placeholder="ID"></p>
                
                <p><input id="password" name="pw" type="password" placeholder="Password"></p>
               
                <button type="submit ">로그인</button> &nbsp;
            </form>
            <form action="/join.jsp">
                <button type="submit">회원가입</button>
            </form>

        </table>
    </center>
    
</body>

</html>
</body>
</html>