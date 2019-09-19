<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-21
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    //사용자의 쿠키 값 읽어드림
    Cookie []cookies = request.getCookies();
    String id = "";

    if(cookies != null){
        for (int i = 0 ; i < cookies.length; i ++){
            if(cookies[i].getName().equals("id")){
                id = cookies[i].getValue();
                break;
            }
        }
    }

%>


<div align="center">
<table>
    <form action="Cookie_Login_Proc.jsp" method="post">
        <tr>
            <td align="right">아이디 : </td>
            <td><input type="text" name="id" value="<%=id%>" ></td>
        </tr>
        <tr>
            <td align="right">패스워드 : </td>
            <td><input type="password" name="pwd"></td>
        </tr>
        <tr>
            <td colspan="2" align="right">아이디 저장 <input type="checkbox" name="save" value="1"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="로그인"></td>
        </tr>
    </form>
</table>
</div>
</body>
</html>
