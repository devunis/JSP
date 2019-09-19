<%@ page import="java.sql.Connection" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %><%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <button onclick="location.href='Member_Join.jsp'">회원가입</button>
  <button onclick="location.href='Member_List.jsp'">회원정보</button>
  <%
    Connection conn=null;

    Boolean connect=false;
    try{
      Context init = new InitialContext();
      DataSource ds = (DataSource) init.lookup("java:comp/env/junDB");

      conn = ds.getConnection();
      connect = true;
    }catch(Exception e){
      connect=false;
      e.printStackTrace();
    }

    if(connect){
      System.out.println("연결o");
    }else{
      System.out.println("연결x");
    }
  %>
  </body>
</html>
