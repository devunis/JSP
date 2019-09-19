<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-21
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>세션 로그인 처리 1</h2>
<%
    request.setCharacterEncoding("euc-kr");

    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");

    session.setAttribute("id",id);
    session.setAttribute("pwd",pwd);
    session.setMaxInactiveInterval(60*2);
%>

    <h2>당신의 아이디는 <%=id%> 패스워드는 <%=pwd%> 입니다.</h2> <br>
    <a href="Session_Login_Proc2.jsp">다음 페이지로 이동</a>
    <%
        response.sendRedirect("Session_Login_Proc2.jsp");
    %>
</body>
</html>
