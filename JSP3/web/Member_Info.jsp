<%@ page import="Model.MemberDAO" %>
<%@ page import="Model.MemberBean" %><%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-09
  Time: 19:30
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
        <tr height="50">
            <td align="center" width="150">아이디</td>
            <td width="250"><%=mbean.getId()%></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">이메일</td>
            <td width="250"><%=mbean.getEmail()%></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">전화번호</td>
            <td width="250"><%=mbean.getTel()%></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">취미</td>
            <td width="250"><%=mbean.getInterests()%></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">직업</td>
            <td width="250"><%=mbean.getJob()%></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">나이</td>
            <td width="250"><%=mbean.getAge()%></td>
        </tr>
        <tr height="50">
            <td align="center" width="150">정보</td>
            <td width="250"><%=mbean.getComments()%></td>
        </tr>
        <tr height="50">
            <td align="center"  colspan="2">
                <button onclick="location.href='Member_Update_Form.jsp?id=<%=mbean.getId()%>'">회원 수정</button>
                <button onclick="location.href='Member_Delete_Form.jsp?id=<%=mbean.getId()%>'">회원 삭제</button>
                <button onclick="location.href='Member_List.jsp?id=<%=mbean.getId()%>'">목록 보기</button>
                <button onclick="location.href='Member_Join.jsp?id=<%=mbean.getId()%>'">회원 가입</button>
            </td>
        </tr>

    </table>
</div>

</body>
</html>
