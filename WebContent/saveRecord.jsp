<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
Connection conn = null;
PreparedStatement stmt = null;

int pID = Integer.parseInt(request.getParameter("IPID"));
String pName = request.getParameter("IPname");
int pQuant = Integer.parseInt(request.getParameter("IPQuant"));
String pCAT = request.getParameter("IPcat");
int pPrice = Integer.parseInt(request.getParameter("IPprice"));

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");
try{
String sql = "INSERT INTO products"
		+ "(ProductID, ProductName, ProductQuant, ProductCAT, ProductPrice) VALUES"
		+ "(?,?,?,?,?)";
stmt = conn.prepareStatement(sql);
stmt.setInt(1,pID);
stmt.setString(2,pName);
stmt.setInt(3, pQuant);
stmt.setString(4,pCAT);
stmt.setInt(5, pPrice);
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