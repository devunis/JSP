<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-07-31
  Time: 03:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>구구단 출력</h1>
<%
    for (int i = 1; i < 10 ; i ++){
        for (int j = 1; j < 10 ; j ++){
            %>
    <%=i%>*<%=j%>=<%=i*j%> &nbsp;
    <%
        }
        %>
    <br>
    <%
    }
%>
</body>
</html>
