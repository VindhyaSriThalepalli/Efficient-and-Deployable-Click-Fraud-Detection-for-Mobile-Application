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

String userid=(String)session.getAttribute("userid");
String add_id=request.getParameter("add_id");

try{
 int c=0;
 ResultSet r=Queries.getExecuteQuery("select count(*) from clicks where add_id='"+add_id+"' and user_id='"+userid+"'");
    while(r.next()){
        c=r.getInt(1);
    }
out.println(c);
  if(c!=0){
      ResultSet rr=Queries.getExecuteQuery("select * from clicks where add_id='"+add_id+"' and user_id='"+userid+"'");
      while(rr.next()){
       int ii=Integer.parseInt(rr.getString("click"));   
       int j=ii+1;
       int ig=Queries.getExecuteUpdate("update clicks set click='"+j+"'where add_id='"+add_id+"' and user_id='"+userid+"'");
       if(ig>0){
         response.sendRedirect("ViewAdd1.jsp?add_id="+add_id);
     }else{
          response.sendRedirect("URLPage.jsp");
     }
      }
  } else{
     int i=Queries.getExecuteUpdate("insert into clicks values('"+add_id+"','"+userid+"','URL Based','1')");
     if(i>0){
         response.sendRedirect("ViewAdd1.jsp?add_id="+add_id);
     }else{
          response.sendRedirect("URLPage.jsp");
     }
} 
    
}catch(Exception e){
 out.println(e);   
}
%>
