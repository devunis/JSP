<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-07-31
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h2>
        ȸ������
    </h2>
    <form action="Request_Join_Proc.jsp" method="post">
        <table>
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
                <td>
                    �н����� Ȯ��
                </td>
                <td>
                    <input type="password" name="pwd1">
                </td>
            </tr>
            <tr>
                <td>
                    �̸���
                </td>
                <td>
                    <input type="email" name="email">
                </td>
            </tr>
            <tr>
                <td>
                    ��ȭ��ȣ
                </td>
                <td>
                    <input type="tel" name="tel">
                </td>
            </tr>
            <tr>
                <td>
                    ���ɺо�
                </td>
                <td>
                    <input type="checkbox" name="interests" value="������">������
                    <input type="checkbox" name="interests" value="������">������
                    <input type="checkbox" name="interests" value="ssb">ssb
                </td>
            </tr>
            <tr>
                <td>
                    ����
                </td>
                <td>
                    <select name="job" id="job">
                        <option value="����">����</option>
                        <option value="�ǻ�">�ǻ�</option>
                        <option value="�ǻ�">�ǻ�</option>
                        <option value="Ʈ��">Ʈ��</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    ���ɴ�
                </td>
                <td>
                    <input type="radio" name="age" value="10��">10��
                    <input type="radio" name="age" value="10��">20��
                    <input type="radio" name="age" value="10��">30��
                    <input type="radio" name="age" value="10��">40��
                </td>
            </tr>
            <tr>
                <td>
                    �ڸ़��
                </td>
                <td>
                    <textarea name="comment" id="comment" cols="25" rows="5"></textarea>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" value="����">
                    <input type="reset" value="cancele">
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
