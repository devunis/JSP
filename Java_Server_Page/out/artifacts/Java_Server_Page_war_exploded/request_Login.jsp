<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-07-31
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h2>�α��� ������</h2>
    <form action="request_Login_Proc.jsp" method="post">
        <table width="400" border="1">
            <tr>
                <td>
                    ���̵�
                </td>
                <td>
                   <input type="text" name="id">
                </td>
            </tr>
            <tr>
                <td>
                    �н�����
                </td>
                <td>
                    <input type="password" name="pwd">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                <input type="submit" value="����">
            </tr>
        </table>

    </form>

</center>
</body>
</html>
