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
		Enumeration enum2 = request.getAttributeNames();
		
		while(enum2.hasMoreElements()){
			String name2 = enum2.nextElement().toString();
			String value2 = (String)request.getAttribute(name2);
			
			if(value2.equals("abcde")){
				session.removeAttribute(name2);
			}
		}
	%>
	<a href="sessiontest.jsp">sessionTest</a>
</body>
</html>