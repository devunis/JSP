<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-07-31
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
%>
<h2>����� ���̵�� <%=id%> �н������ <%=pwd%> �̴�.
</h2>
</body>
</html>