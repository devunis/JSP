<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-21
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>세션 로그인 처리 2</h2>
<%
    request.setCharacterEncoding("euc-kr");

    String id = (String)session.getAttribute("id");
    String pwd = (String)session.getAttribute("pwd");
%>
<h2>당신의 아이디는 <%=id%> 패스워드는 <%=pwd%> 입니다.</h2> <br>
<%
    response.sendRedirect("Session_Main.jsp");
%>
</body>
</html>
