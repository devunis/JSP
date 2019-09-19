<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <form action="Response_Proc.jsp " method="post">
    <table width="400">
        <tr height="50">
            <td width="150" align="center">아이디</td>
            <td width="250">
                <input type="text"  name="id">
            </td>
        </tr>
        <tr height="50">
            <td width="150" align="center">패스워드</td>
            <td width="250">
                <input type="password"  name="pwd">
            </td>
        </tr>
        <tr height="50">
            <td width="250" colspan="2" align="center">
                <input type="submit" value="로그인"> <input type="reset" value="리셋">
            </td>
        </tr>
    </table>
    </form>
</center>
</body>
</html>
