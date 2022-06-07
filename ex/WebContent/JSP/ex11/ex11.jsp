<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int age = Integer.parseInt(request.getParameter("age"));
		
		if(age > 20){
			response.sendRedirect("ex11_success.jsp");
		}else{
			response.sendRedirect("ex11_fail.jsp");
		}
	%>
</body>
</html>