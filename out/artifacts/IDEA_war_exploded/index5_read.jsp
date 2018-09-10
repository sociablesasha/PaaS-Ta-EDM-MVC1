<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="DAO.*" %>
<%@ page import="DTO.*" %>

<%
    DTO.QNA qnaDTO = new DTO.QNA();
    DAO.QNA qnaDAO = new DAO.QNA();

    int index;
    String password;
    String access;

    // Required validation
    index = request.getParameter("index") == null ? -1 : request.getParameter("index").trim().equals("") ? -1 : Integer.parseInt(request.getParameter("index").trim());
    password = request.getParameter("password") == null ? null : request.getParameter("password").trim().equals("") ? null : request.getParameter("password").trim();
    access = request.getParameter("access") == null ? null : request.getParameter("access").trim().equals("") ? null : request.getParameter("access").trim();

    qnaDTO.setIndex(index);
    qnaDTO.setPassword(password);
    qnaDTO.setAccess(access);

    if (qnaDTO.getAccess().equals("private")) {
        qnaDTO = qnaDAO.readPrivate(qnaDTO);
    } else if (qnaDTO.getAccess().equals("public")) {
        qnaDTO = qnaDAO.readPublic(qnaDTO);
    }

    String accessClass = qnaDTO.getAccess().equals("private") ? "fa fa-lock" : "";
%>

<!DOCTYPE html>
<html>

<head>
    <title>클라우드 파스-타 기반 데이터 활용 서비스 경진대회</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/style/layout.css" type="text/css">
    <link rel="stylesheet" href="/style/qna.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
</head>

<body>
<div class="box_type">
    <div class="top__menu__cover">
        <ul class="tab_box">
            <li><a href="/index.jsp">공모전 안내</a></li>
            <li><a href="/index2.jsp"><strong>참가 방법</strong></a></li>
            <li><a href="/index3.jsp">파스-타 가이드</a></li>
            <li><a href="/index4.jsp">데이터·API안내</a></li>
            <li class="on"><a href="/index5.jsp">묻고 답하기</a></li>
        </ul>
        <div class="btn">
            <a href="#"
               onclick="javascript:window.open('https://docs.google.com/forms/d/e/1FAIpQLSdWdLCHojkQrkdJprQU5wSBPDAK_CY9pTq1wgzwVLEmYrz3Qw/viewform','','width=740,height=1699,top=0,left=0,scrollbars=yes');"
               title="새창으로 열림">참가 신청</a>
        </div>
    </div>
    <div class="cont cont_back">
        <div class="content">
            <div class="top__header">
                <div class="title">
                    묻고 답하기
                </div>
            </div>
            <div class="view__table">
                <div id="title"><%=qnaDTO.getTitle()%><i style="margin-left: 5px;" class="<%=accessClass%>"></i></div>
                <div class="sub__info">
                    <div class="username">
                        <span class="title">* 작성자</span> | <span id="username"><%=qnaDTO.getUsername()%></span>
                    </div>
                    <div class="date">
                        <span class="title">* 등록일</span> | <span id="date"><%=qnaDTO.getDate().substring(0, 10)%></span>
                    </div>
                </div>
                <div id="content">
                    <%=qnaDTO.getContent()%>
                </div>
                <div class="reply">
                    <div class="reply__top">관리자 답변</div>
                    <div class="reply__content"><%=qnaDTO.getReply() == null ? "아직 답변이 없습니다. 빠른 시일내에 답변하겠습니다." : qnaDTO.getReply()%>
                    </div>
                </div>
            </div>
            <div class="buttons">
                <button class="button btn-default" onclick="location.href='/index5.jsp'; return false;">목록으로</button>
            </div>
        </div>
    </div>
</div>
</body>

</html>