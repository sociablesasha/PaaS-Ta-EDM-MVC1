<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>클라우드 파스-타 기반 데이터 활용 서비스 경진대회</title>
    <link rel="stylesheet" type="text/css" href="/style/layout.css">
</head>

<body class="nanumgothic">
<div class="box_type">

    <div class="top__menu__cover">
        <ul class="tab_box">
            <li><a href="/index.jsp">공모전 안내</a></li>
            <li><a href="/index2.jsp"><strong>참가 방법</strong></a></li>
            <li><a href="/index3.jsp">파스-타 가이드</a></li>
            <li class="on"><a href="/index4.jsp">데이터·API안내</a></li>
            <li><a href="/index5.jsp">묻고 답하기</a></li>
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
                    데이터 API 안내
                </div>
                <div class="decription">
                    목록 외 공공·민간기관에서 제공하는 모든 데이터와 API를 활용하실 수 있습니다.
                </div>
            </div>
            <table class="api__table">
                <thead>
                <tr>
                    <th align="center">순번</th>
                    <th align="center">데이터명</th>
                    <th align="center">제공기관</th>
                    <th align="center">링크</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td align="center">1</td>
                    <td align="center">국가학술정보 OpenAPI</td>
                    <td align="center">국회도서관</td>
                    <td align="center"><a href="http://losi-open.nanet.go.kr/" target="_blank">losi-open.nanet.go.kr</a>
                    </td>
                </tr>

                <tr>
                    <td align="center">2</td>
                    <td align="center">공공데이터포탈</td>
                    <td align="center">한국정보화진흥원</td>
                    <td align="center"><a href="https://www.data.go.kr/" target="_blank">data.go.kr</a></td>
                </tr>

                <tr>
                    <td align="center">3</td>
                    <td align="center">공공 인공지능 오픈 API·DATA 서비스 포털</td>
                    <td align="center">한국전자통신연구원</td>
                    <td align="center"><a href="http://aiopen.etri.re.kr/" target="_blank">aiopen.etri.re.kr</a></td>
                </tr>

                <tr>
                    <td align="center">4</td>
                    <td align="center">아담 오픈 플랫폼</td>
                    <td align="center">솔트룩스</td>
                    <td align="center"><a href="http://adams.ai/" target="_blank">adams.ai</a></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>

</html>