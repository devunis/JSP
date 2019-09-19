<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-07-30
  Time: 02:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java"
         pageEncoding="EUC-KR"
         errorPage="Error.jsp"  %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  홈화면<br>

  <a href="Gugudan.jsp">구구단</a>


  <%
    for (int i = 1 ; i < 11; i++){
  %>
  <%= i%> <br>
  <%
    }
  %>
  </body>
</html>
