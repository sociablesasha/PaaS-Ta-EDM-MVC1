<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="DAO.*" %>
<%@ page import="DTO.*" %>

<!DOCTYPE html>
<html>

<head>
    <title>클라우드 파스-타 기반 데이터 활용 서비스 경진대회</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/style/layout.css" type="text/css">
    <link rel="stylesheet" href="/style/qna.css" type="text/css">
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
            <div class="notice">
                * 이곳은 클라우드 파스-타 기반 데이터 활용 서비스 경진대회 관련 질문을 문의하는 곳 입니다. <br> * 가능한 한 빠른 답변을 드리도록 하겠습니다.<br> * 저속한 표현, 타인에
                대한 명예 훼손, 불건전한 내용, 기타 게시판의 성격에 맞지 않는 내용을 담은 글은 이용자의 편의를 위하여 예고 없이 삭제될 수 있습니다.<br> * 특정인을 비방하는 글이;나 근거 없는
                내용을 담은 글은 삭제될 수 있습니다.<br> * 게시된 들은 다른 사람들이 조회 또는 열람할 수 있으니 개인 정보가 게시되지 않도록 주의 하시길 바랍니다.
            </div>
            <form action="/action/questionAction.jsp" method="post">
                <table class="input__table">
                    <colgroup>
                        <col style="width: 10%">
                        <col>
                    </colgroup>
                    <tbody>
                    <tr scope="row">
                        <th>제목</th>
                        <td>
                            <input type="text" name="title" id="title">
                        </td>
                    </tr>
                    <tr scope="row">
                        <th>공개 여부</th>
                        <td>
                            <input type="radio" name="access" value="public" id="open" checked><label
                                style="margin-right: 40px;" for="open">공개</label>
                            <input type="radio" name="access" value="private" id="notopen"><label
                                for="notopen">비공개</label> ( 비공개로 할 시 작성자만 글을 열람할 수 있습니다. )
                        </td>
                    </tr>
                    <tr scope="row">
                        <th>작성자</th>
                        <td>
                            <input type="text" name="username" id="username">
                        </td>
                    </tr>
                    <tr scope="row">
                        <th>비밀번호</th>
                        <td>
                            <input type="password" name="password" id="password">
                            ( 비밀번호 10자 이하 )
                        </td>
                    </tr>
                    <tr scope="row">
                        <th>내용</th>
                        <td class="content__td">
                            <textarea name="content" id="content"></textarea>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="buttons">
                    <button class="button btn-default" onclick="location.href='/index5.jsp'; return false;">목록으로
                    </button>
                    <button onclick="formCheck(); return false;" class="button btn-blue">글쓰기</button>
                </div>
            </form>
        </div>
    </div>

</div>
<script>
    var formCheck = () =>
    {
        var title = document.forms[0].title.value;
        var username = document.forms[0].username.value;
        var password = document.forms[0].password.value;
        var content = document.forms[0].content.value;
        if (title == null || title == "") {
            alert("제목을 입력하세요.");
            document.forms[0].title.focus();
        } else if (username == null || username == "") {
            alert("작성자를 입력하세요.");
            document.forms[0].username.focus();
        } else if (password.length > 10) {
            alert("패스워드는 10자 이하입니다.");
            document.forms[0].password.focus();
        } else if (password == null || password == "") {
            alert("비밃번호를 입력하세요.");
            document.forms[0].password.focus();
        } else if (content == null || content == "") {
            alert("내용을 입력하세요.");
            document.forms[0].content.focus();
        } else {
            document.forms[0].submit();
        }
    }
</script>
</body>

</html>