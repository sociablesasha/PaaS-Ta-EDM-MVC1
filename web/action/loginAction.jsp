<%@ page contentType="text/html; charset=UTF-8" %>

<%
    // Before Setting
    request.setCharacterEncoding("UTF-8");

    String admin;
    String secret;

    // Required validation
    admin = request.getParameter("admin") == null ? null : request.getParameter("admin").trim().equals("") ? null : request.getParameter("admin").trim();
    secret = request.getParameter("secret") == null ? null : request.getParameter("secret").trim().equals("") ? null : request.getParameter("secret").trim();

    // Admin Account
    String realAdmin = "pass-ta";
    String realSecret = "master";

    if (realAdmin.equals(admin) && realSecret.equals(secret)) {
        session.setAttribute("admin", "admin");
        response.sendRedirect("/admin/admin.jsp");
    } else {
        response.sendRedirect("/admin/login.jsp");
    }
%>