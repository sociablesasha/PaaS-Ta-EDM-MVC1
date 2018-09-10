<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>
    <title>클라우드 파스-타 기반 데이터 활용 서비스 경진대회</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/style/layout.css" type="text/css">
</head>

<body>
<div class="box_type">
    <div class="top__menu__cover">
        <ul class="tab_box">
            <li><a href="/index.jsp">공모전 안내</a></li>
            <li><a href="/index2.jsp"><strong>참가 방법</strong></a></li>
            <li class="on"><a href="/index3.jsp">파스-타 가이드</a></li>
            <li><a href="/index4.jsp">데이터·API안내</a></li>
            <li><a href="/index5.jsp">묻고 답하기</a></li>
        </ul>
        <div class="btn">
            <a href="#" onclick="javascript:window.open('https://docs.google.com/forms/d/e/1FAIpQLSdWdLCHojkQrkdJprQU5wSBPDAK_CY9pTq1wgzwVLEmYrz3Qw/viewform','','width=740,height=1699,top=0,left=0,scrollbars=yes');" title="새창으로 열림">참가 신청</a>
        </div>
    </div>
    <div class="cont cont_back">
        <div class="guide__header"><br>
            <font color="orange" style="font-weight: 600; font-size: 45px;">파스-타</font>는 클라우드 상에서 <br> 손쉽게 서비스를 개발&middot;운영할 수 있게 도와주는오픈소스 클라우드 플랫폼입니다.</div>
        <div class="table__cover">
            <table class="guide__table" id="guide__media" width=500px>
                <thead>
                <tr>
                    <td class="guide__title">파스-타 동영상 가이드</td>
                </tr>
                </thead>
                <tr>
                    <td style="padding: 10px;"><iframe id="ytplayer" src="https://www.youtube.com/embed/9KHn0SIynEs" width="640" height="360" frameborder="0"></iframe></td>
                </tr>
            </table>
            <table class="guide__table guide__text">
                <thead>
                <tr>
                    <td class="guide__title">파스-타 활용 가이드</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><a href="https://github.com/PaaS-TA/Guide-3.0-Penne-/blob/master/Use-Guide/portal/PaaS-TA%20%EC%82%AC%EC%9A%A9%EC%9E%90%20%ED%8F%AC%ED%83%88%20%EA%B0%80%EC%9D%B4%EB%93%9C_v1.1.md">파스-타 사용자 포탈 활용 가이드</a></td>
                </tr>
                <tr>
                    <td><a href="https://github.com/PaaS-TA/Guide-1.0-Spaghetti-/blob/master/Use-Guide/OpenPaas%20CLi%20%EA%B0%80%EC%9D%B4%EB%93%9C.md">CF CLI(Command Line Interface) 사용</a></td>
                </tr>
                <tr>
                    <td><a href="https://github.com/PaaS-TA/Guide-1.0-Spaghetti-/blob/master/Use-Guide/Open%20PaaS%20%EA%B0%9C%EB%B0%9C%ED%99%98%EA%B2%BD%20%EC%82%AC%EC%9A%A9%20%EA%B0%80%EC%9D%B4%EB%93%9C.md">CF CLI(Command Line Interface) 사용</a></td>
                </tr>
                </tbody>

            </table>
            <table class="guide__table guide__text">
                <thead>
                <tr>
                    <td class="guide__title">서비스 개발 가이드</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><a href="https://github.com/PaaS-TA/Guide-1.0-Spaghetti-/blob/master/Sample-App-Guide/OpenPaaS_PaaSTA_Application_Nodejs_develope_guide.md">nodeJS</a></td>
                </tr>
                <tr>
                    <td><a href="https://github.com/PaaS-TA/Guide-1.0-Spaghetti-/blob/master/Sample-App-Guide/OpenPaaS_PaaSTA_Application_PHP_develope_guide.md">PHP</a></td>
                </tr>
                <tr>
                    <td><a href="https://github.com/PaaS-TA/Guide-1.0-Spaghetti-/blob/master/Sample-App-Guide/OpenPaaS_PaaSTA_Application_Python_develope_guide.md">Python</a></td>
                </tr>
                <tr>
                    <td><a href="https://github.com/PaaS-TA/Guide-1.0-Spaghetti-/blob/master/Sample-App-Guide/OpenPaaS_PaaSTA_Application_Ruby_develope_guide.md">Ruby</a></td>
                </tr>
                <tr>
                    <td><a href="https://github.com/PaaS-TA/Guide-1.0-Spaghetti-/blob/master/Sample-App-Guide/OpenPaaS_PaaSTA_Application_Java_develope_guide.md">Java</a></td>
                </tr>
                <tr>
                    <td><a href="https://github.com/PaaS-TA/Guide-1.0-Spaghetti-/blob/master/Sample-App-Guide/OpenPaaS_PaaSTA_Application_Go_develope_guide.md">Go</a></td>
                </tr>
                </tbody>
            </table>
        </div>

    </div>
</div>
</body>

</html>