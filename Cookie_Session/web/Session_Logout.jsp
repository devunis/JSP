<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-21
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
        session.setAttribute("id",null);
        session.setMaxInactiveInterval(0); //지속시간을 0으로.. 끊어라!

        response.sendRedirect("Session_Main.jsp?center=Center.jsp");
%>


</body>
</html>
