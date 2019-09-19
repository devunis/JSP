<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
이페이지는 로그인 정보가 넘어는 페이지입니다. <br>
아이디는
<%
    request.setCharacterEncoding("EUC-KR");
    String id = request.getParameter("id");
    out.println(id);
    // response.sendRedirect("Response_Redirect.jsp?id="+id); //흐름제어
%>
<jsp:forward page="Response_Redirect.jsp">
    <jsp:param value="허정윤" name="id"></jsp:param>
</jsp:forward>
님 환영합니다.
</body
</html>
