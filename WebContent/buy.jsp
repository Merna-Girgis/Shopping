<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Order Product</title>
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
	color: white;
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
    <h1>Order Product</h1>
    <div>
      <form name="frm" action="updateOrder.jsp">
        <table>
       <tr><td>Customer ID</td><td> <input type="text" name="CUSTID"></td></tr>
       <tr><td>Customer Name </td><td> <input type="text" name="CUSTNAME"></td></tr>
       <tr><td>Customer Phone </td><td> <input type="text" name="CUSTPHONE"></td></tr>
       <tr><td>Customer Email</td><td>  <input type="text" name="CUSTMAIL"></td></tr>
       <tr><td>Customer Address</td><td>  <input type="text" name="CUSTADDR"></td></tr>
       <tr><td>Product ID</td><td>  <input type="text" name="OPID"></td></tr>
       </table>
      <input type="submit" name="submit" value=" Submit ">
      </form>
    </div>
</div>
</body>
</html>