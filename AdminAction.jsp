<%-- 
    Document   : AdminAction
    Created on : 23 Feb, 2021, 11:48:00 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>

<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    session.setAttribute("username", username);
    try
    {
     Connection con=DbConnection.getConnection();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from admin where username='"+username+"' and password='"+password+"'");
    if(rs.next())
    {
        
        %>
        <script type="text/javascript">
            window.alert("Admin Login Sucessfully");
            window.location="AdminHome.jsp";
            </script>
        <%
        
    }
    else
    {
        %>
        <script type="text/javascript">
            window.alert("Admin Login Failes");
            window.location="Admin.jsp";
            </script>
        <%  
    }   
    
    
    }
    catch(Exception e)
    {
     out.println(e);   
    }
    %>