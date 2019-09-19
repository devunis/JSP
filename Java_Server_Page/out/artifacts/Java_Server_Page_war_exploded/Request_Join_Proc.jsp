<%@ page import="java.util.Collections" %><%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-07-31
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("EUC-KR");
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String pwd1 = request.getParameter("pwd1");
    String [] interests = request.getParameterValues("interests");
    String job = request.getParameter("job");
    String email = request.getParameter("email");
    String tel = request.getParameter("tel");
    String age = request.getParameter("age");
    String comment = request.getParameter("comment");
%>

<%
    if(!pwd.equals(pwd1)){

%>
<script>
    alert("비밀번호가 틀립니다.");
    history.go(-1); //전 단계로 돌아가기
</script>
<%
    }
%>


    <table>
        <tr>
            <td>
                아이디
            </td>
            <td>
                <%=id%>
            </td>
        </tr>
        <tr>
            <td>
                이메일
            </td>
            <td>
                <%=email%>
            </td>
        </tr>
        <tr>
            <td>
                전화번호
            </td>
            <td>
                <%=tel%>
            </td>
        </tr>
        <tr>
            <td>
                관심분야
            </td>
            <td>
                <%
                    for(int i = 0 ; i < interests.length; i++){
                %>
                <%=interests[i]%>
                <%
                    }
                %>

            </td>
        </tr>
        <tr>
            <td>
                직업
            </td>
            <td>
                <%=job%>
            </td>
        </tr>
        <tr>
            <td>
                연령대
            </td>
            <td>
                <%=age%>
            </td>
        </tr>
        <tr>
            <td>
                코멘ㅌㅡ
            </td>
            <td>
                <%=comment%>
            </td>
        </tr>
    </table>


</body>
</html>
