<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>주차 관제 프로그램</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2><b>차량번호 정보가 존재하지 않습니다.</b></h2>
<input type="submit" onclick="window.location='search.jsp'" value="돌아가기">
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>