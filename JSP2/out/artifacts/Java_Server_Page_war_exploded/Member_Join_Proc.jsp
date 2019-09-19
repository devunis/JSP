<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>회원 정보 보기</h1>
    <%
        request.setCharacterEncoding("euc-kr");
    %>

    <jsp:useBean id="mbean" class="Bean.Member_Bean">
        <jsp:setProperty name="mbean" property="*"/>
    </jsp:useBean>
    <h2>당신의 아이디는 <jsp:getProperty property="id" name="mbean"/></h2>
    <h2>당신의 전화번호는 <jsp:getProperty property="tel" name="mbean"/></h2>
    <h2>당신의 이메일는 <jsp:getProperty property="email" name="mbean"/></h2>

    <h2>당신의 주소는
    <%=mbean.getAddress()%>입니다.
    </h2>
</center>
</body>
</html>
