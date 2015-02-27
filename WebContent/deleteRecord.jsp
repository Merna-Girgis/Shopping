<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
Connection conn = null;
PreparedStatement stmt = null;

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");

int pDID = Integer.parseInt(request.getParameter("DPID"));

try{
String sql = "delete from products where ProductID = ?";
stmt = conn.prepareStatement(sql);
stmt.setInt(1, pDID);
stmt.executeUpdate();
}catch(Exception e){
	response.sendRedirect("admin.jsp");
}
finally{
	if(stmt!=null){
		stmt.close();
	}
	if(conn!=null){
		conn.close();
	}
}


%>

<html>
<head>
 <meta http-equiv="REFRESH" content="3;url=/Shopping/login.jsp">
<title>Delete Product</title>
</head>
<body>
Data is deleted successfully.<br>
You will be redirected to the Previous Page in 3 seconds.....
</body>
</html>