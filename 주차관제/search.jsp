<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="sytle.css">
<title>주차 관제 프로그램</title>
</head>
<body>
<script type="text/javascript" src="check.js"></script>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2><b>차량조회</b></h2>
	<form name="frm2" method = "get" action="list.jsp">
		<table border="1">
		<tr>
			<td>차량번호를 입력하시오.</td>
			<td><input type="text" name="car_number"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" onclick="submit()" value="차량조회">
				<input type="button" value="홈으로" onclick="window.location='index.jsp'">
			</td>
		</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>