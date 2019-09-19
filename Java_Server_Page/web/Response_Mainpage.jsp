<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 02:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
환영합니다. &nbsp;

<%
    String id = request.getParameter("id");
    out.println(id+"님"+"!");
%>
</body>
</html>
