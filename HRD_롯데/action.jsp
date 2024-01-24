<%@include file = "dbconnect.jsp" %>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request .setCharacterEncoding("utf-8");
	String pid = request.getParameter("pid");
	String pname = request.getParameter("pname");
	String pposition = request.getParameter("pposition");
	String pdate = request.getParameter("pdate");
	String pgrade = request.getParameter("pgrade");
	out.print(pid);
	out.print(pname);
	
	try{
		   String sql = "select * from giants_player values()";
		   PreparedStatement ps = conn.prepareStatement(sql) ;
		   ps.setInt(1,Integer.parseInt(pid)); //Integer.parseInt(변수)
		   ps.setString(2,pname);
		   ps.setString(3,pposition);
		   ps.setString(2,pdate);
		   ps.setString(2,pgrade);
		   ps.executeUpdate();
		   %>
		   <jsp:forward page="List.jsp"></jsp:forward>
		   <%
		   
}
		catch(Exception e){
		   e.printStackTrace();
		}
	

%>