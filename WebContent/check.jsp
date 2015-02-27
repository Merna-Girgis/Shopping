<%-- 
    Document   : check
    Created on : May 15, 2012, 12:18:10 PM
    Author     : Diaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select adminName,adminPass from admins where adminName='"+user+"' and adminPass='"+pass+"'");
          int count=0;
          while(rs.next())
          {

                   count++;
          }

                    if(count>0)
          {
            response.sendRedirect("admin.jsp");
          }
          else
          {
                       response.sendRedirect("login.jsp");
          }
%>
