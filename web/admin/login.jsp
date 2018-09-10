<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/admin/style.css">
    <title>ADMIN PAGE</title>
</head>
<body>
<div class="login__cover">
    <div class="login__top">관리자 로그인</div>
    <form action="/action/loginAction.jsp" method="post">
        <p><input type="text" name="admin" placeholder="관리자 아이디"></p>
        <p><input type="password" name="secret" placeholder="비밀번호"></p>
        <div><input type="submit" value="로그인"></div>
    </form>
</div>
</body>
</html>