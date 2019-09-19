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
        회원가입
    </h2>
    <form action="Request_Join_Proc.jsp" method="post">
        <table>
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
                <td>
                    패스워드 확인
                </td>
                <td>
                    <input type="password" name="pwd1">
                </td>
            </tr>
            <tr>
                <td>
                    이메일
                </td>
                <td>
                    <input type="email" name="email">
                </td>
            </tr>
            <tr>
                <td>
                    전화번호
                </td>
                <td>
                    <input type="tel" name="tel">
                </td>
            </tr>
            <tr>
                <td>
                    관심분야
                </td>
                <td>
                    <input type="checkbox" name="interests" value="서새봄">서새봄
                    <input type="checkbox" name="interests" value="새봄추">새봄추
                    <input type="checkbox" name="interests" value="ssb">ssb
                </td>
            </tr>
            <tr>
                <td>
                    직업
                </td>
                <td>
                    <select name="job" id="job">
                        <option value="교사">교사</option>
                        <option value="의사">의사</option>
                        <option value="판사">판사</option>
                        <option value="트수">트수</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    연령대
                </td>
                <td>
                    <input type="radio" name="age" value="10대">10대
                    <input type="radio" name="age" value="10대">20대
                    <input type="radio" name="age" value="10대">30대
                    <input type="radio" name="age" value="10대">40대
                </td>
            </tr>
            <tr>
                <td>
                    코멘ㅌㅡ
                </td>
                <td>
                    <textarea name="comment" id="comment" cols="25" rows="5"></textarea>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" value="전송">
                    <input type="reset" value="cancele">
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
