<%@ page import="Model.MemberBean" %>
<%@ page import="Model.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-09
  Time: 20:24
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
%>
<jsp:useBean id="mbean" class="Model.MemberBean">
    <jsp:setProperty name="mbean" property="*"/>
</jsp:useBean>

<%
    String id = request.getParameter("id");
    MemberDAO mdao = new MemberDAO();

    String pass = mdao.getPass(id);


    if(mbean.getPwd().equals(pass)){
        mdao.updateMember(mbean);
        response.sendRedirect("Member_List.jsp");
    }
    else{
%>

<script>
    alert("패스워드가 틀립니다.");
    history.go(-1);
</script>
<%
    }
%>
</body>
</html>
