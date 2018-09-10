<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="DAO.*" %>
<%@ page import="DTO.*" %>

<%
    // Session for Admin
    String auth = session.getAttribute("admin") == null ? null : session.getAttribute("admin").toString();

    if (auth == null) {
        response.sendRedirect("/admin/login.jsp");
    }

    DTO.QNA qnaDTO = new DTO.QNA();
    DAO.QNA qnaDAO = new DAO.QNA();

    int index;

    // Required validation
    index = request.getParameter("index") == null ? -1 : request.getParameter("index").trim().equals("") ? -1 : Integer.parseInt(request.getParameter("index").trim());

    qnaDTO.setIndex(index);

    qnaDTO = qnaDAO.readAdmin(qnaDTO);

    String accessClass = qnaDTO.getAccess().equals("private") ? "fa fa-lock" : "";

    String formURL = "/action/answerAction.jsp?index=" + qnaDTO.getIndex();

    String formValue = qnaDTO.getReply() == null ? "답변" : "수정";
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/admin/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <title>ADMIN PAGE</title>
</head>

<body>
<div class="wrapper">
    <div class="top__header">관리자 페이지
        <button style="float: right; margin: 15px 20px;" onclick="location.href='/action/logoutAction.jsp'">로그아웃</button>
    </div>
    <nav>
        <ul>
            <li class="active">
                <a href="/admin/admin.jsp?reply=wait">답변 대기 목록</a>
            </li>
            <li>
                <a href="/admin/admin.jsp?reply=done">답변 완료 목록</a>
            </li>
        </ul>
    </nav>
    <div class="view__table">
        <div class="view__group">
            <span class="view__title">제목</span><%=qnaDTO.getTitle()%><i style="margin-left: 5px;" class="<%=accessClass%>"></i>
        </div>
        <div class="view__group">
            <span class="view__title">작성자</span><%=qnaDTO.getUsername()%>
        </div>
        <div class="view__group">
            <span class="view__title">작성일</span><%=qnaDTO.getDate().substring(0, 10)%>
        </div>
        <div class="view__group__content">
            <div style="padding-left: 5px;">
                <span class="view__title">내용</span>
            </div>

            <div id="view__content">
                <%=qnaDTO.getContent()%>
            </div>
        </div>
        <div class="reply">
            <h4 style="padding-left: 15px;">답변</h4>
            <form action="<%=formURL%>" method="post">
                <textarea style="width: 99.5%;margin: 0; padding: 0; font-size: 15px;" name="reply" id="" cols="30" rows="10"><%=qnaDTO.getReply() == null ? "" : qnaDTO.getReply()%></textarea>
                <div style="text-align: right">
                    <input type="submit" value="<%=formValue%>">
                </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>