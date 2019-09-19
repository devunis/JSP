<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 04:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table width="800">
    <tr >
        <td colspan="2" align="center">
            <img src="img/camping.jpg" alt="" width="200" height="200">
        </td>
        <td colspan="4" align="left">
            <font size="10"> 낭만 캠핑!</font>
        </td>
    </tr>
    <tr>
        <td width="100" align="center">텐트</td>
        <td width="100" align="center">의자</td>
        <td width="100" align="center">식기</td>
        <td width="100" align="center">침낭</td>
        <td width="100" align="center">숯불</td>
        <td width="100" align="center">식탁</td>
        <td width="100" align="center"><%=request.getParameter("id")%></td>
    </tr>
</table>
</body>
</html>
