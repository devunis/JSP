<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 02:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h2>로그인 페이지</h2>
    <form action="Response_Login_Proc.jsp" method="post">
        <table width="400" border="1">
            <tr>
                <td>
                    아이디
                </td>
                <td>
                    <input type="text" name="id">
                </td>
            </tr>
            <tr>
                <td>
                    패스워드
                </td>
                <td>
                    <input type="password" name="pwd">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="전송">
            </tr>
        </table>

    </form>



</center>
</body>
</html>
