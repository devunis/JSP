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
    <form action="Member_Join_Proc.jsp" method="post">
        <table>
            <tr height="50">
                <td>아이디</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr height="50">
                <td>패스워드</td>
                <td><input type="password" name="pwd"></td>
            </tr>
            <tr height="50">
                <td>패스워드 확인</td>
                <td>
                    <input type="password" name="pwd1">
                </td>
            </tr>
            <tr height="50">
                <td>이메일</td>
                <td>
                    <input type="email" name="email">
                </td>
            </tr>
            <tr height="50">
                <td>전화번호</td>
                <td>
                    <input type="tel" name="tel">
                </td>
            </tr>
            <tr height="50">
                <td>관심분야</td>
                <td>
                    <input type="checkbox" name="interests" value="서새봄" checked>서새봄
                    <input type="checkbox" name="interests" value="새봄추">새봄추
                    <input type="checkbox" name="interests" value="ssb">ssb
                </td>
            </tr>
            <tr height="50">
                <td>직업</td>
                <td>
                    <select name="job" id="job">
                        <option value="교사">교사</option>
                        <option value="의사">의사</option>
                        <option value="판사">판사</option>
                        <option value="트수">트수</option>
                    </select>
                </td>
            </tr>
            <tr height="50">
                <td>연령대</td>
                <td>
                    <input type="radio" name="age" value="10대">10대
                    <input type="radio" name="age" value="20대">20대
                    <input type="radio" name="age" value="30대">30대
                    <input type="radio" name="age" value="40대">40대
                </td>
            </tr>
            <tr height="50">
                <td>코멘트</td>
                <td>
                    <textarea name="comments"  cols="25" rows="5"></textarea>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" value="전송">
                    <input type="reset" value="cancel">
                    <button onclick="location.href='Member_List.jsp'">회원 전체 보기</button>
                </td>
            </tr>
        </table>
    </form>

</center>
</body>
</html>
