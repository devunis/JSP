<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
리스폰스 리다이렉트 페이지입니다 <br>
<%
    request.setCharacterEncoding("EUC-KR");
    String id = request.getParameter("id");
    out.println(id);
    //response.sendRedirect("Response_Redirect.jsp?id="+id);
%>
님 환영합니다.
</body>
</html>
