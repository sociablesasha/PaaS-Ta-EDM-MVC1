<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="DAO.*" %>
<%@ page import="DTO.*" %>
<%@ page import="java.util.*" %>

<%
    DTO.QNA qnaDTO = new DTO.QNA();
    DAO.QNA qnaDAO = new DAO.QNA();

    ArrayList<DTO.QNA> list;
    int nowPage;

    nowPage = request.getParameter("page") == null ? 1 : request.getParameter("page").trim().equals("") ? 1 : Integer.parseInt(request.getParameter("page").trim());

    list = qnaDAO.list(nowPage);
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
                <div class="decription">
                    클라우드 파스-타 기반 데이터 활용 서비스 경진대회에 관하여 궁금하신 사항이 있으면 직접 물어보세요.
                </div>
            </div>
            <table class="table">
                <colgroup>
                    <col style="width: 8%">
                    <col style="width: 62%">
                    <col style="width: 10%">
                    <col style="width: 10%">
                    <col style="width: 10%">
                </colgroup>
                <thead>
                <tr bgcolor="#F4F4F4">
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
                        onclick="accessFunction(<%=accessType%>, <%=accessParameter%>)"><%=qnaDTO.getTitle()%><i
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
            <%
                int totalCount;
                int countList;
                int totalPage;
                int pageList;
                int nowPageList;
                int startPage;
                int endPage;

                totalCount = qnaDAO.totalCount();
                countList = 10;
                totalPage = (int) Math.ceil(totalCount / (double) countList);
                pageList = 10;
                nowPageList = (int) Math.ceil(nowPage / (double) pageList);
                startPage = (nowPageList - 1) * pageList + 1;
                endPage = (nowPageList) * pageList < totalPage ? (nowPageList) * pageList : totalPage;
            %>
            <div class="bottom__footer">
                <div class="pagination">
                    <ul>
                        <li class="direction">
                            <a href="/index5.jsp">&#60&#60</a>
                        </li>
                        <li class="direction">
                            <a href="/index5.jsp?page=<%=nowPage - 1%>">&#60</a>
                        </li>
                        <%
                            for (int count = startPage; count <= endPage; count++) {
                                if (count == nowPage) {
                        %>
                        <li class="active">
                            <a href="/index5.jsp?page=<%=count%>"><%=count%>
                            </a>
                        </li>
                        <% } else { %>
                        <li>
                            <a href="/index5.jsp?page=<%=count%>"><%=count%>
                            </a>
                        </li>
                        <%
                                }
                            }
                        %>
                        <li class="direction">
                            <a href="/index5.jsp?page=<%=nowPage + 1%>">&#62</a>
                        </li>
                        <li class="direction">
                            <a href="/index5.jsp?page=<%=totalPage%>">&#62&#62</a>
                        </li>
                    </ul>
                </div>
                <button class="button btn-blue" onclick="location.href='/index5_question.jsp'">글쓰기</button>
            </div>
        </div>
    </div>
</div>

<script>
    var accessFunction = (accessType, accessParameter) =>
    {
        var password = accessType === "private" ? inputPassword() : null;
        if (accessType === "private") {
            if (password == null || password == "") {
                return false;
            }
            else {
                location.href = "/index5_read.jsp?" + accessParameter + "&password=" + password;
            }
        } else if (accessType == "public") {
            location.href = "/index5_read.jsp?" + accessParameter;
        }
    }

    var inputPassword = () =>
    {
        return prompt("작성할때 적었던 비밀번호를 입력하세요.");
    }
</script>

</body>

</html>
