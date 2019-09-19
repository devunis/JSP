<%@ page import="Model.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-07
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    request.setCharacterEncoding("euc-kr");

    String [] interests = request.getParameterValues("interests");
    String textInterests = "";

    if (interests == null) {
        textInterests ="봄모노";
    }
    else {
        for (int i = 0; i < interests.length; i ++){
            textInterests += interests[i]+" ";
        }
    }

%>

<jsp:useBean id="mbean" class="Model.MemberBean">
    <jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>
<h2>로딩중...</h2>

<%
    mbean.setInterests(textInterests);

    MemberDAO mdao = new MemberDAO();
    mdao.insertMember(mbean);

    response.sendRedirect("Member_List.jsp");
%>

</body>
</html>
