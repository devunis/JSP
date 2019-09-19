<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-21
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String center = request.getParameter("center");

    //처음 실행시 널처리
    if(center==null){
        center = "Center.jsp";
    }
%>

<div align="center">
<table width="800">
    <tr>
        <td align="center" colspan="2" width="800">
            <jsp:include page="Top.jsp"/>
        </td>
    </tr>
    <tr>
        <td align="center" width="100"> <jsp:include page="Left.jsp"/></td>
        <td align="center" width="700"> <jsp:include page="<%=center%>"/></td>
    </tr>
    <tr>
        <td align="center" width="800" colspan="2"> <jsp:include page="Bottom.jsp"/></td>
    </tr>
</table>
</div>
</body>
</html>
