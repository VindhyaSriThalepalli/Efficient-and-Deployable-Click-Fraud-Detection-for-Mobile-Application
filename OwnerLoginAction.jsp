<%-- 
    Document   : LoginAction
    Created on : 23 Feb, 2021, 12:05:02 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>

<%
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    session.setAttribute("username", username);
    try
    {
     Connection con=DbConnection.getConnection();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from register where username='"+username+"' and password='"+password+"' and usertype='Owner'");
    if(rs.next())
    {
        String id=rs.getString("id");
        session.setAttribute("id",id);
        session.setAttribute("username",username);
        %>
        <script type="text/javascript">
            window.alert("User Login Sucessfully");
            window.location="OwnerHome.jsp";
            </script>
        <%
        
    }
    else
    {
        %>
        <script type="text/javascript">
            window.alert("User Login Failes");
            window.location="Owner.jsp";
            </script>
        <%  
    }   
    
    
    }
    catch(Exception e)
    {
     out.println(e);   
    }
    %>