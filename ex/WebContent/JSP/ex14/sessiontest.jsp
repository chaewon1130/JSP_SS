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
		Enumeration enum3 = request.getAttributeNames();
		int i = 0;
		while(enum3.hasMoreElements()){
			i++;
			String name3 = enum3.nextElement().toString();
			String value3 = (String)request.getAttribute(name3);
			
			out.println(name3 + " : " + value3);
		}
		if(i == 0){
			out.println("해당 세션이 삭제되었습니다.");
		}
	%>
</body>
</html>