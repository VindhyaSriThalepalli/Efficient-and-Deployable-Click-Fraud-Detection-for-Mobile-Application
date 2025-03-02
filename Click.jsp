<%-- 
    Document   : Click
    Created on : 23 Feb, 2021, 3:04:37 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=(String)session.getAttribute("id");
String username=(String)session.getAttribute("username");
String add_id=request.getParameter("add_id");

try{
 int c=0;
 ResultSet r=Queries.getExecuteQuery("select count(*) from clicks where add_id='"+add_id+"' and user_id='"+id+"'");
    while(r.next()){
        c=r.getInt(1);
    }
out.println(c);
  if(c!=0){
      ResultSet rr=Queries.getExecuteQuery("select * from clicks where add_id='"+add_id+"' and user_id='"+id+"'");
      while(rr.next()){
       int ii=Integer.parseInt(rr.getString("click"));   
       int j=ii+1;
       int ig=Queries.getExecuteUpdate("update clicks set click='"+j+"'where add_id='"+add_id+"' and user_id='"+id+"'");
       if(ig>0){
         response.sendRedirect("ViewAdd.jsp?add_id="+add_id);
     }else{
          response.sendRedirect("UserHome.jsp");
     }
      }
  } else{
     int i=Queries.getExecuteUpdate("insert into clicks values('"+add_id+"','"+id+"','"+username+"','1')");
     if(i>0){
         response.sendRedirect("ViewAdd.jsp?add_id="+add_id);
     }else{
          response.sendRedirect("UserHome.jsp");
     }
} 
    
}catch(Exception e){
 out.println(e);   
}
%>
