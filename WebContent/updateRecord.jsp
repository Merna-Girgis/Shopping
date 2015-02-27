<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
Connection conn = null;
PreparedStatement stmt = null;

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");

int pID = Integer.parseInt(request.getParameter("UPID"));
String pName = request.getParameter("UPname");
int pQuant = Integer.parseInt(request.getParameter("UPQuant"));
String pCAT = request.getParameter("UPcat");
int pPrice = Integer.parseInt(request.getParameter("UPprice"));

try{
String sql = "update products set ProductName = ?, ProductQuant = ?, ProductCAT = ?, ProductPrice = ? WHERE ProductID = ?";
stmt = conn.prepareStatement(sql);
stmt.setString(1,pName);
stmt.setInt(2, pQuant);
stmt.setString(3,pCAT);
stmt.setInt(4, pPrice);
stmt.setInt(5, pID);
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
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Add Product</title>
<meta http-equiv="REFRESH" content="3;url=/Shopping/login.jsp">
</head>
<body>
Data is saved successfully.<br>
You will be redirected to the Previous Page in 3 seconds.....
</body>
</html>