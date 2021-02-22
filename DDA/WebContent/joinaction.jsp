<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "Member.MemberDAO"  %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="member" class="Member.Members" scope="page"/>
<jsp:setProperty name="member" property="id"/>
<jsp:setProperty name="member" property="pw"/>
<jsp:setProperty name="member" property="phone"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		if (member.getId() == null || member.getPw() == null || member.getPhone() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			MemberDAO memberDAO = new MemberDAO();
			int result = memberDAO.join(member);
			if (result == -1) {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('이미 존재하는 아이디입니다.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location,href = 'main.jsp'");
				script.println("</script>");
			}
		}
		
	%>
	
</body>
</html>