<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 04:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <center>
        <table width="600" border="1">
            <%----%>
            <tr >
                <td width="600" align="center">
                    <%@include file="Top.jsp"%>
                </td>
            </tr>
            <tr>
                <td width="600" align="center">
                    <img src="img/car.png" alt="" width="400" height="300">
                </td>
            </tr>
                <tr >
                    <td width="600" align="center">
                        <%@include file="Bottom.jsp"%>
                    </td>
                </tr>

        </table>
    </center>
</body>
</html>
