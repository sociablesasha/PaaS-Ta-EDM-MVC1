<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="DAO.*" %>
<%@ page import="DTO.*" %>

<%
    // Before Setting
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");

    // Definition
    DTO.QNA qnaDTO = new DTO.QNA();
    DAO.QNA qnaDAO = new DAO.QNA();
    int result;

    // Definition of return value
    int success = 1;

    String username;
    String password;
    String title;
    String content;
    String access;

    // Required validation
    username = request.getParameter("username") == null ? null : request.getParameter("username").trim().equals("") ? null : request.getParameter("username").trim();
    password = request.getParameter("password") == null ? null : request.getParameter("password").trim().equals("") ? null : request.getParameter("password").trim();
    title = request.getParameter("title") == null ? null : request.getParameter("title").trim().equals("") ? null : request.getParameter("title").trim();
    content = request.getParameter("content") == null ? null : request.getParameter("content").trim().equals("") ? null : request.getParameter("content").trim();
    access = request.getParameter("access") == null ? null : request.getParameter("access").trim().equals("") ? null : request.getParameter("access").trim();

    // Additional validation
    // 작성 필요

    qnaDTO.setUsername(username);
    qnaDTO.setPassword(password);
    qnaDTO.setTitle(title);
    qnaDTO.setContent(content);
    qnaDTO.setAccess(access);

    result = qnaDAO.question(qnaDTO);

    if (result == success) {
        response.getWriter().append("<script>");
        response.getWriter().append("alert('질문이 성공적으로 등록되었습니다.');");
        response.getWriter().append("location.href='/index5.jsp'");
        response.getWriter().append("</script>");
    } else {
        response.getWriter().append("<script>");
        response.getWriter().append("alert('입력이 안 된 사항이 있습니다.');");
        response.getWriter().append("history.back();");
        response.getWriter().append("</script>");
    }

%>