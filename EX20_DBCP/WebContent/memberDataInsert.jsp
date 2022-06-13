<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection connection;
	PreparedStatement preparedStatement;
	ResultSet resultSet;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@172.30.1.31:1521:xe";
	String uid = "scott";
	String upw = "pcwk";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Class.forName(driver);
		connection = DriverManager.getConnection(url, uid, upw);
		int n;
		String query = "INSERT INTO MEMBERFORPRE (id, pw, name, phone) VALUES (?, ?, ?, ?)";
		preparedStatement = connection.prepareStatement(query);
		
		preparedStatement.setString(1, "TOT_SON");
		preparedStatement.setString(2, "SON7");
		preparedStatement.setString(3, "SON");
		preparedStatement.setString(4, "7");
		n = preparedStatement.executeUpdate();
		preparedStatement.setString(1, "TOT_KANE");
		preparedStatement.setString(2, "KANE10");
		preparedStatement.setString(3, "KANE");
		preparedStatement.setString(4, "10");
		n = preparedStatement.executeUpdate();
		preparedStatement.setString(1, "TOT_DAVIES");
		preparedStatement.setString(2, "DAVIES33");
		preparedStatement.setString(3, "DAVIES");
		preparedStatement.setString(4, "33");
		n = preparedStatement.executeUpdate();
	%>
</body>
</html>