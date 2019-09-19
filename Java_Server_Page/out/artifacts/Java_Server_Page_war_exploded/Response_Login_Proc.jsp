<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-03
  Time: 02:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>로그인 확인 페이지</h1>
    <%
        request.setCharacterEncoding("EUC-KR");

        String dbid = "admin";
        String dbpwd = "";

        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");

        if (dbid.equals(id) && dbpwd.equals(pwd)){
            response.sendRedirect("Response_Mainpage.jsp?id="+id);

        }
        else{
            %>
    <script>
        alert("아이디나 비밀번호가 틀립니다");
        history.go(-1);
    </script>
    <%
        }

    %>
</body>
</html>
