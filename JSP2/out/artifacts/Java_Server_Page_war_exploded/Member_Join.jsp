<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">ȸ������</h1>
<form action="Member_Join_Proc.jsp" method="post">
    <table width="400" align="center">
        <tr height="50">
            <td width="150" align="center">���̵�</td>
            <td width="250">
                <input type="text"  name="id" size="40">
            </td>
        </tr>
        <tr height="50">
            <td width="150" align="center">�н�����</td>
            <td width="250">
                <input type="password" name="pwd" size="40">
            </td>
        </tr>
        <tr height="50">
            <td width="150" align="center">�̸���</td>
            <td width="250">
                <input type="email"  name="email" size="40">
            </td>
        </tr>
        <tr height="50">
            <td width="150" align="center">��ȭ��ȣ</td>
            <td width="250">
                <input type="text"  name="tel" size="40">
            </td>
        </tr>
        <tr height="50">
            <td width="150" align="center">�ּ�</td>
            <td width="250">
                <input type="text"  name="address" size="40">
            </td>
        </tr>
        <tr height="50">
            <td width="250" colspan="2" align="center">
                <input type="submit" value="�α���"> <input type="reset" value="����">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
