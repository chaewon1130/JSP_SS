<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.javalec.ex16.Student" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty property="name"       name="student" value="김동호"/>
	<jsp:setProperty property="age"        name="student" value="29"/>
	<jsp:setProperty property="grade"      name="student" value="4"/>
	<jsp:setProperty property="studentNum" name="student" value="3"/>
	
	이름  : <jsp:getProperty property="name" name="student"/><br>
	나이  : <jsp:getProperty property="age" name="student"/><br>
	학년  : <jsp:getProperty property="grade" name="student"/><br>
	번호  : <jsp:getProperty property="studentNum" name="student"/>
</body>
</html>