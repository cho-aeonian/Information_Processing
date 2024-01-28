<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2><b>차량조회</b></h2>
<%
	request.setCharacterEncoding("UTF-8");
	String car_number = request.getParameter("car_number");
	if(car_number.isEmpty()){ 
%>
<jsp:forward page="search.jsp"></jsp:forward>
<%	
	
	}
	try {
		String sql = "select pa.car_number, car_name, owner_name, location,entrance_time,departure_time " +
		"from tbl_parking_202301 pa, tbl_car_202301 ca "+
		"where trim(pa.car_number) = ? and trim(ca.car_number) = trim(pa.car_number)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,car_number);
		ResultSet rs = ps.executeQuery();
		if(rs.next()) {
			System.out.println("good" + rs.getString(1));
%>
			<table border="1">
			<tr>
				<td>차량번호</td>
				<td>차량종류</td>
				<td>소유자이름</td>
				<td>주차위치</td>
				<td>입차시간</td>
				<td>출차시간</td>
			</tr>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				
			</tr>
		</table>
<%
		}
		else{
%>
			<jsp:forward page="notfound.jsp"></jsp:forward>
			<%
		}
		
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>