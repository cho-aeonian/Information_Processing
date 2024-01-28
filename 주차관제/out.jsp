<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<script src ="check.js"></script>
<title>주차 관제 프로그램</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
<section>
	<h2><b>차량출차</b></h2>
	<form name="frm3" action="o-action.jsp" method="post">
	<table border=1>
		   <%  %>
			<tr>
				<td>차량번호</td>
				<td>
				<select name="car_number" onchange ="get_name(this.value)">
				<option value="">차량번호</option>
						<%	
						 		    
							try {
								Class.forName("oracle.jdbc.OracleDriver");
								Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
								String sql =  "select trim(tp.car_number), tb.owner_name " +
										"from tbl_parking_202301 tp, tbl_car_202301 tb " +
										"where tp.car_number = tb.car_number and departure_time is NULL";
								PreparedStatement ps = conn.prepareStatement(sql);
								ResultSet rs = ps.executeQuery();
							
								while(rs.next()) {
								%>
									
									<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
								<%
								}
															
						%>
					</select>
				
				</td>
			</tr>
			<tr>
				
				<td>소유자이름</td>
				<td><input type="text" name="owner" value= "" readonly></td>
			<% 
			} catch(Exception e) {
				e.printStackTrace();
			}
		%>
			</tr>
			<tr>
				<td>출차시간</td>
				<td><input type="text" name="out_time">예) 22:03</td>
			</tr>
			<tr>
				<td colspan="2" align = "center">
					<input type="submit" value="출차등록" onclick="check_out_info()">
					<input type="reset" value="다시쓰기" onclick="alert('정보를 지우고 처음부터 다시 입력합니다!');">	
				</td>
			</tr>		
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>