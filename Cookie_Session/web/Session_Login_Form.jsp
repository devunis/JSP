<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-21
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
<table>
    <h2>세션 로그인</h2>
    <form action="Session_Login_Proc.jsp" method="post">
        <tr>
            <td align="right">아이디 : </td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td align="right">패스워드 : </td>
            <td><input type="password" name="pwd"></td>
        </tr>
        <tr>
            <td colspan="2" align="right">아이디 저장 <input type="checkbox" name="save" value="1"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="로그인"></td>
        </tr>
    </form>
</table>
</div>
</body>
</html>
