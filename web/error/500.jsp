<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% response.setStatus(HttpServletResponse.SC_OK); %>

<!DOCTYPE html>
<html>
<head>
    <title>클라우드 파스-타 기반 데이터 활용 서비스 경진대회</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/style/layout.css" type="text/css">
</head>

<body>

<div class="box_type">
    <div class="top__menu__cover">
        <ul class="tab_box">
            <li><a href="/index.jsp"><strong>공모전 안내</strong></a></li>
            <li><a href="/index2.jsp">참가 방법</a></li>
            <li><a href="/index3.jsp">파스-타 가이드</a></li>
            <li><a href="/index4.jsp">데이터·API안내</a></li>
            <li><a href="/index5.jsp">묻고 답하기</a></li>
        </ul>
        <div class="btn">
            <a href="#"
               onclick="javascript:window.open('https://docs.google.com/forms/d/e/1FAIpQLSdWdLCHojkQrkdJprQU5wSBPDAK_CY9pTq1wgzwVLEmYrz3Qw/viewform','','width=740,height=1699,top=0,left=0,scrollbars=yes');"
               title="새창으로 열림"><span color="#ffffff">참가 신청</span></a>
        </div>
    </div>
    <div class="cont">
        <img src="/image/500.jpg" alt="sample" border="0">
    </div>
</div>
</body>
</html>
