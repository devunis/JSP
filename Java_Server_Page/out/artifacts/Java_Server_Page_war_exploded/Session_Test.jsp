<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 03:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" e%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>���� ����</h1>
<%
    request.setCharacterEncoding("EUC-KR");
    String name = "��";
    session.setAttribute("name1",name);
    session.setMaxInactiveInterval(10); //10�ʰ� ���� ����
%>
<a href="Session_Name.jsp">���� ���� �������� �̵�
</a>
</body>
</html>
