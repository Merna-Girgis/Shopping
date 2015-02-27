<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
        Connection conn = null;
        Statement stmt = null;
        
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");
        stmt = conn.createStatement();
        String sql ="SELECT * FROM products";
        ResultSet rs = stmt.executeQuery(sql);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Online Shopping</title>
<style>
.table-menu {
            border-collapse: collapse;
            width: 100%;
            text-align: center;
}
#id-menu { 
         border: 1px solid black;
         background: black;
         color: white;
}
a:LINK {
	text-decoration: none;
	color: red;
}
a:VISITED {
	text-decoration: none;
	color: orange;
}
a:HOVER {
	text-decoration: none;
	color: blue;
}
a:ACTIVE {
	text-decoration: none;
}

</style>
</head>
<body>
<div align="center">
  <div class="menu">
    <table class="table-menu">
        <tr>
           <td id="id-menu"><a href="index.jsp"> Home</a></td>
           <td id="id-menu"><a href="login.jsp">Login</a></td>
           <td id="id-menu">About</td>
            <td id="id-menu">Contact</td>
        </tr>
    </table>
    </div>
   <h1>Show Products</h1>
   <table>
        <tr>
           <td bgcolor="#33CCCC">Product Number</td>
           <td bgcolor="#33CCCC">Product ID</td>
           <td bgcolor="#33CCCC">Product Name</td>
           <td bgcolor="#33CCCC">Product Quantity</td>
           <td bgcolor="#33CCCC">Product Category</td>
           <td bgcolor="#33CCCC">Product Price</td>
           <td bgcolor="#33CCCC">Add to Cart</td>
        </tr>
    <%
    int count = 1;
    while (rs.next()){
    %>
        <tr>
           <td><%=count%></td>
           <td><%=rs.getInt("ProductID")%></td>
           <td><%=rs.getString("ProductName")%></td>
           <td><%=rs.getInt("ProductQuant")%></td>
           <td><%=rs.getString("ProductCAT")%></td>
           <td><%=rs.getInt("ProductPrice")%></td>
           <td><a href="buy.jsp">BUY</a></td>
        </tr>      
    <%
    count++;
    }
    %>
   
   </table>
</div>
</body>
</html>
<%
try{
	if(conn!=null){
		conn.close();
	}
	if(rs!=null){
		rs.close();
	}
}catch(Exception e){
	e.printStackTrace();
}
%>


