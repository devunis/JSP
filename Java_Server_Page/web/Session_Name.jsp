<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 03:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>세션 네임 페이지</h2>
<%
    request.setCharacterEncoding("EUC-KR");
    String name = (String)session.getAttribute("name1");
%>
<%=name%> 님 반갑습니다.
</body>
</html>
