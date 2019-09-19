<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-09-18
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table align="center" border="1">

    <c:forEach var="i" begin="1" end="9">

    <tr>

        <c:forEach var="j" begin="2" end="9">

            <c:if test="${j%2==1 }">

                <td>${j } x ${i } = ${i*j }</td>

            </c:if>

        </c:forEach>

    </tr>

    </c:forEach>
</body>
</html>
