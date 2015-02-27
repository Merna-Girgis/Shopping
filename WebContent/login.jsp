<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Login</title>
<script>
function validate(){
var username=document.form.user.value;
var password=document.form.pass.value;
if(username==""){
 alert("Enter Username!");
  return false;
}
if(password==""){
 alert("Enter Password!");
  return false;
}
return true;
}
</script>
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
    <h1>Please Login</h1>
    <form name="form" method="post" action="check.jsp" onsubmit="javascript:return validate();">
    Username: <input type="text" name="user" id="user"/>
    </br>
    Password: <input type="password" name="pass" id="pass"/>
    </br>
    <button type="submit">Submit</button>
    </form>
   </div>
</body>
</html>
