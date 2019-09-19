<%@ page import="Model.MemberDAO" %>
<%@ page import="java.util.Vector" %>
<%@ page import="Model.MemberBean" %><%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-09
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    MemberDAO mdao = new MemberDAO();
    //가변 길이인 벡터를 이용해 데이터를 저장
    Vector<MemberBean> vec = mdao.allSelectMember();
%>
<center>
    <h2>모든 회원 보기</h2>
    <table width="1000" border="1">
        <tr height="50">
            <td align="center" width="150">아이디</td>
            <td align="center" width="200">이메일</td>
            <td align="center" width="250">전화번호</td>

            <td align="center" width="200">취미</td>
            <td align="center" width="200">정보</td>
        </tr>
        <%
            for (int i = 0 ; i < vec.size(); i ++){
                MemberBean bean = vec.get(i);

        %>

        <tr height="50">
            <td align="center" width="150">
                <a href="Member_Info.jsp?id=<%=bean.getId()%>">
                    <%=bean.getId()%></a></td>
            <td align="center" width="200"><%=bean.getEmail()%></td>
            <td align="center" width="250"><%=bean.getTel()%></td>

            <td align="center" width="200"><%=bean.getInterests()%></td>
            <td align="center" width="200"><%=bean.getComments()%></td>
        </tr>
        <%
            }
        %>
        <tr height="50">
            <td align="center" width="150" colspan="5">
                <button onclick="location.href='Member_Join.jsp'" > 회원가입</button>
            </td>
        </tr>

    </table>
</center>



</body>
</html>
