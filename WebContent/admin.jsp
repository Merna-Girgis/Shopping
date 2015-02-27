<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Admin Page</title>
<script type="text/javascript">

function tab(tab) {
	document.getElementById('tab1').style.display = 'none';
	document.getElementById('tab2').style.display = 'none';
	document.getElementById('tab3').style.display = 'none';
	document.getElementById('li_tab1').setAttribute("class", "");
	document.getElementById('li_tab2').setAttribute("class", "");
	document.getElementById('li_tab3').setAttribute("class", "");
	document.getElementById(tab).style.display = 'block';
	document.getElementById('li_'+tab).setAttribute("class", "active");
	}
	
</script>

<style type="text/css">

.table-menu { border-collapse: collapse;width: 100%;text-align: center; }
#id-menu { border: 1px solid black;background: black;color: white; }
a:LINK { text-decoration: none;color: white; }
a:VISITED { text-decoration: none;color: orange; }
a:HOVER { text-decoration: none;color: blue; }
a:ACTIVE { text-decoration: none; }
#Tabs ul li { display: inline-block;float: center; }
#Tabs ul li a { position: relative;display: block;background:  #f6f6f6;border: 1px solid #ccc;
                border-bottom: 0px;width: 130px;color: black;text-decoration: none;
                font-weight: bold; }
#Tabs ul li a:hover { text-decoration: none;color: red; }
#Tabs #Content_Area { clear:both;overflow:hidden;position: relative; }
p { position: relative;display: block;margin: 0; }

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
    <h1>Admin Login</h1>
<div id="Tabs">
    <ul>
      <li id="li_tab1" onclick="tab('tab1')" ><a>Add Product</a></li>
      <li id="li_tab2" onclick="tab('tab2')"><a>Update Product</a></li>
      <li id="li_tab3" onclick="tab('tab3')"><a>Delete Product</a></li>
    </ul>
  <div id="Content_Area">
      <div id="tab1">
      <h3>Add Product to the Database</h3>
         <form name="form" method="post" action="saveRecord.jsp" onsubmit="">
         <table>
            <tr><td>Product ID</td><td> <input type="text" name="IPID"></td></tr>
            <tr><td>Product Name </td><td> <input type="text" name="IPname"></td></tr>
            <tr><td>Product Quantity </td><td> <input type="text" name="IPQuant"></td></tr>
            <tr><td>Product Category</td><td>  <input type="text" name="IPcat"></td></tr>
            <tr><td>Product Price</td><td>  <input type="text" name="IPprice"></td></tr>
       </table>
      <input type="submit" name="submit" value=" Submit ">
         </form>
      </div>

      <div id="tab2" style="display: none;"> 
      <h3>Update Product from the Database</h3>
         <form name="form2" method="post" action="updateRecord.jsp" onsubmit="">
         <table>
            <tr><td>Product ID</td><td> <input type="text" name="UPID"></td></tr>
            <tr><td>Product Name </td><td> <input type="text" name="UPname"></td></tr>
            <tr><td>Product Quantity </td><td> <input type="text" name="UPQuant"></td></tr>
            <tr><td>Product Category</td><td>  <input type="text" name="UPcat"></td></tr>
            <tr><td>Product Price</td><td>  <input type="text" name="UPprice"></td></tr>
       </table>
      <input type="submit" name="submit" value=" Submit ">
         </form>
      </div>

      <div id="tab3" style="display: none;"> 
      <h3>Delete Product from the Database</h3>
         <form name="frm" action="deleteRecord.jsp" onsubmit="">
          <table>
              <tr><td>Enter Product ID To Delete</td><td><input type="text" name="DPID"></td></tr>
          </table>
          <input type="submit" name="submit" value=" Submit ">
         </form>
      </div>
   </div> 
</div> 

</div>

</body>
</html>