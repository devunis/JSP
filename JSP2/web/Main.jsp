<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 05:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <table width="800">
        <tr>
            <td align="center" colspan="2" width="800">
                <jsp:include page="Top.jsp">
                    <jsp:param name="id" value="CampPapa"></jsp:param>
                </jsp:include>
            </td>
        </tr>
        <tr>
            <td align="center" width="100"> <jsp:include page="Left.jsp"/></td>
            <td align="center" width="700"> <jsp:include page="Center.jsp"/></td>
        </tr>
        <tr>
            <td align="center" width="800" colspan="2"> <jsp:include page="Bottom.jsp"/></td>
        </tr>


    </table>
</center>
</body>
</html>
