<%@page import="java.util.Enumeration"%>
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
		Enumeration enum1 = session.getAttributeNames();
		while(enum1.hasMoreElements()){
			String name = enum1.nextElement().toString();
			String value = (String)session.getAttribute(name);
			
			if(value.equals("abcde")){
				out.println(value + "님 안녕하세요 <br>");
			}
		}
	%>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>