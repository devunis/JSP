<%@ page import="Model.MemberDAO" %>
<%@ page import="Model.MemberBean" %><%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-15
  Time: 17:14
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
    <h2><%=id%> 회원 정보 삭제</h2>
    <table width="400" border="1">
        <form action="Member_Delete_Proc.jsp" method="post">
            <tr height="50">
                <td align="center" width="150">아이디</td>
                <td width="250"><%=request.getParameter("id")%></td>
            </tr>
            <tr height="50">
                <td align="center" width="150">패스워드</td>
                <td width="250"><input type="password" name="pwd"></td>
            </tr>
            <tr height="50">
                <td align="center" colspan="2">
                    <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
                    <input type="submit" value="회원 삭제하기" >&nbsp;&nbsp;
        </form>
                <button onclick="location.href='Member_List.jsp'">회원 전체 보기</button>
                 </td>
            </tr>
    </table>
</div>
</body>
</html>
