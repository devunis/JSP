<%--
  Created by IntelliJ IDEA.
  User: jeongyoon
  Date: 2019-08-21
  Time: 15:19
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


    //쿠키 클래스 생성


    String id = request.getParameter("id");
    //chech박스를 체크했는지 안했는지... null인지 1인지
    String save = request.getParameter("save");

    if (save != null){

        Cookie cookie = new Cookie("id",id); // 왼쪽은 키값 오른쪽은 해당 밸류값 * 디폴트는 없어요

        //쿠키 유효시간 설정
        cookie.setMaxAge(10*60); //10분간 유효

        response.addCookie(cookie);

        out.println("쿠키 생성 완료");

    }

%>

</body>
</html>
