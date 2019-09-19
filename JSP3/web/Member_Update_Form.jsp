<%@ page import="Model.MemberDAO" %>
<%@ page import="Model.MemberBean" %>
<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-09
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id"); // 멤버리스트에서 보내준거

    MemberDAO mdao = new MemberDAO();

    MemberBean mbean = mdao.oneSelectMember(id);
%>
<div align="center">
    <h2><%=id%> 회원 정보</h2>
    <table width="400" border="1">
        <form action="Member_Update_Proc.jsp" method="post">
        <tr height="50">
            <td align="center" width="150">아이디</td>
            <td width="250"><%=mbean.getId()%></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">이메일</td>
            <td width="250"><input type="email"  value="<%=mbean.getEmail()%>" name="email"></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">전화번호</td>
            <td width="250"><input type="text"  value="<%=mbean.getTel()%>" name="tel"></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">정보</td>
            <td width="250"><input type="text"  value="<%=mbean.getComments()%>" name="comments"></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">비밀번호</td>
            <td width="250"><input type="password" placeholder="기존 비밀번호 입력" name="pwd" required ></td>
        </tr>
        <tr height="50">
            <td align="center" colspan="2">
                <input type="hidden" name="id" value="<%=mbean.getId()%>">
                <input type="submit" value="회원 수정하기" >&nbsp;&nbsp;
        </form>
                <button onclick="location.href='Member_List.jsp'">회원 전체 보기</button>
            </td>

        </tr>


    </table>
</div>
</body>
</html>
