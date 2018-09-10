<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="DAO.*" %>
<%@ page import="DTO.*" %>

<%
    // Session for Admin
    String auth = session.getAttribute("admin") == null ? null : session.getAttribute("admin").toString();

    if (auth == null) {
        response.sendRedirect("/admin/login.jsp");
    } else {
        // Definition
        DTO.QNA qnaDTO = new DTO.QNA();
        DAO.QNA qnaDAO = new DAO.QNA();

        int index;
        String reply;

        // Required validation
        index = request.getParameter("index") == null ? -1 : request.getParameter("index").trim().equals("") ? -1 : Integer.parseInt(request.getParameter("index").trim());
        reply = request.getParameter("reply") == null ? null : request.getParameter("reply").trim().equals("") ? null : request.getParameter("reply").trim();

        if (reply != null) {
            qnaDTO.setIndex(index);
            qnaDTO.setReply(reply);

            qnaDAO.answer(qnaDTO);
        }

        response.sendRedirect("/admin/view.jsp?index=" + index);
    }
%>