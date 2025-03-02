<%-- 
    Document   : RegisterAction
    Created on : 23 Feb, 2021, 11:56:20 AM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String address=request.getParameter("address");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String utype = request.getParameter("utype");
  Connection conn = null;
        String message = null;

        try {

     String dbURL = "jdbc:mysql://localhost:3306/mobile_app";
     String dbUser = "root";
     String dbPass = "root";

           Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql1 = "select count(*) from register"; 
     Statement st=conn.createStatement();
     ResultSet rs=st.executeQuery(sql1);
     rs.next();
     int io=rs.getInt(1)+1;
     String id=""+io;
            String sql = "INSERT INTO register values (?,?,?, ?, ?, ?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, id);
            statement.setString(2, name);
            statement.setString(3, email);
            statement.setString(4, mobile); 
            statement.setString(5, address);
       
              statement.setString(6, username);
                statement.setString(7, password);
            statement.setString(8, utype);
            

            int row = statement.executeUpdate();
            if (row > 0) {

                        response.sendRedirect("Register.jsp?reg= Registration success");
            } else {
                response.sendRedirect("Register.jsp?reg= Registration Failed");

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } 

%>