<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
Connection conn = null;
PreparedStatement stmt = null;

int custID = Integer.parseInt(request.getParameter("CUSTID"));
String custName = request.getParameter("CUSTNAME");
String custPhone = request.getParameter("CUSTPHONE");
String custMail = request.getParameter("CUSTMAIL");
String custAdd = request.getParameter("CUSTADDR");
int PID = Integer.parseInt(request.getParameter("OPID"));

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");
try{
String sql = "insert into ordercustomer (CustID, custName, CustEmail, CustAdress, ProductID, custPhone) values(?,?,?,?,?,?)";
stmt = conn.prepareStatement(sql);
stmt.setInt(1,custID);
stmt.setString(2,custName);
stmt.setString(3, custMail);
stmt.setString(4,custAdd);
stmt.setInt(5, PID);
stmt.setString(6, custPhone);
stmt.executeUpdate();

}catch(Exception e){
	response.sendRedirect("buy.jsp");
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
<meta http-equiv="REFRESH" content="3;url=/Shopping/index.jsp">
</head>
<body>
Data is saved successfully.<br>
You will be redirected to the Previous Page in 3 seconds.....
</body>
</html>