<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-21
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = (String)session.getAttribute("id");



    if (id==null)
    {
        id="GUEST";
    }


%>
<table width="800">
    <tr>
        <td colspan="3" align="center">
            <a href="Session_Main.jsp?center=Center.jsp"><img src="img/camping.jpg" alt="" width="200" height="200"></a>
        </td>
        <td colspan="3" align="left">
            <font size="10"> 낭만 캠핑!</font>
        </td>
    </tr>
    <tr>
        <td width="100" align="center">텐트</td>
        <td width="100" align="center">의자</td>
        <td width="100" align="center">식기</td>
        <td width="100" align="center">침낭</td>
        <td width="100" align="center">숯불</td>
        <td width="100" align="center">식탁</td>
        <%
            if(id.equals("GUEST")){
                %>
        <td width="100" align="center">GUEST
        <button onclick="location.href='Session_Main.jsp?center=Session_Login_Form.jsp'">로그인</button></td>
        <%
            }
            else{ %>
        <td width="100" align="center"><%=id%>님
        <button onclick="location.href='Session_Logout.jsp'">로그아웃</button></td>
        <% } %>

    </tr>
</table>
</body>
</html>
