<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-09-18
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <form action="/Calc">
        <input type="text" name="num1" value="${num1}">
        <select name="math">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
        <input type="text" name="num2" value="${num2}">
        =
        <input type="text" value="${result}">
        <input type="submit">
    </form>
    ${RS}
</div>
</body>
</html>
