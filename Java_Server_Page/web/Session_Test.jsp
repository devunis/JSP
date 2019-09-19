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
<h1>세션 연습</h1>
<%
    request.setCharacterEncoding("EUC-KR");
    String name = "신";
    session.setAttribute("name1",name);
    session.setMaxInactiveInterval(10); //10초가 세션 유지
%>
<a href="Session_Name.jsp">세션 네임 페이지로 이동
</a>
</body>
</html>
