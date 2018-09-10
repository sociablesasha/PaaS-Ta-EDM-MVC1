<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="DAO.*" %>
<%@ page import="DTO.*" %>
<%@ page import="java.util.*" %>

<%
    // Session for Admin
    String auth = session.getAttribute("admin") == null ? null : session.getAttribute("admin").toString();

    if (auth == null) {
        response.sendRedirect("/admin/login.jsp");
    }

    DTO.QNA qnaDTO = new DTO.QNA();
    DAO.QNA qnaDAO = new DAO.QNA();

    ArrayList<DTO.QNA> list;
    String reply;

    reply = request.getParameter("reply") == null ? null : request.getParameter("reply").trim().equals("") ? null : request.getParameter("reply").trim();

    list = qnaDAO.list(reply);
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/admin/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
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
    <table class="list__table">
        <colgroup>
            <col style="width: 10%">
            <col style="width: 60%">
            <col style="width: 10%">
            <col style="width: 10%">
            <col style="width: 10%">
        </colgroup>
        <thead>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>등록일</th>
            <th>상태</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (int count = 0; count < list.size(); count++) {
                qnaDTO = list.get(count);
                String accessClass = qnaDTO.getAccess().equals("private") ? "fa fa-lock" : "";
                String accessType = qnaDTO.getAccess().equals("private") ? "'private'" : "'public'";
                String accessParameter = "'index=" + qnaDTO.getIndex() + "&access=" + qnaDTO.getAccess() + "'";
        %>
        <tr>
            <td><%=qnaDTO.getIndex()%>
            </td>
            <td class="title"
                onclick="location.href='/admin/view.jsp?index=<%=qnaDTO.getIndex()%>'"><%=qnaDTO.getTitle()%><i
                    style="margin-left: 5px;" class="<%=accessClass%>"></i></td>
            <td><%=qnaDTO.getUsername()%>
            </td>
            <td><%=qnaDTO.getDate().substring(0, 10)%>
            </td>
            <td><%=qnaDTO.getReply() != null ? "확인" : "대기중"%>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>

</html>