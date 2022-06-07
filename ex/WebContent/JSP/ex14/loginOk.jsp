<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id, pwd;
	%>
	<%
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		
		if(id.equals("abcde") && pwd.equals("12345")){
			session.setAttribute("id", id);
			response.sendRedirect("welcome.jsp");
		}else{
			response.sendRedirect("login.html");
		}
	%>
</body>
</html>