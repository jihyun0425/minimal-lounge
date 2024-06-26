<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<html>
<head>

    <title>회원정보</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=DM+Serif+Text&family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap');

        body {
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 1.3em;
            line-height: 1.6;
        }

        .mypage {
            width: 1200px;
            display: flex;
            justify-content: space-between;
        }

        h1 {
            padding-left: 100px;
        }

        h1 > a {
            color: #2d2d2d;
        }

        ul {
            list-style: none;
            text-align: center;
        }

        .nav > ul {
            text-align: center;
            width: calc(1200px - 800px);
        }

        li {
            margin-left: 100px;
            padding: 30px;
        }

        li > a {
            color: #2d2d2d;
        }

        a {
            text-decoration: none;
        }

        span {
            color: rgb(128, 128, 128);
        }
        #cartTable {
            padding-top: 70px;
        }
        #cartTable th {
            font-size: 1.1rem;
            background: black;
            border-radius: 4px;
            color: white;
            width: 800px;

        }
        #cartTable td {
            padding: 20px 0 0 20px;
            font-size: 1.0rem;
            width: 800px;
            text-align: center;
        }
        footer{transform: translate(0, 50px)}
    </style>
</head>
<body>
    <h1>
        <a href="<c:url value='/index.do'/>">Minimal Lounge</a>
    </h1>
    <div class="mypage">
        <div class="nav">
            <ul>
                <li><a href="<c:url value='/member/mypage.do'/>">회원정보</a></li>
                <li><a href="<c:url value='/member/mypage.do?action=Order'/>">주문내역</a></li>
                <li><a href="<c:url value='/member/mypage.do?action=QnA'/>">나의 문의내역</a></li>
                <li><a href="<c:url value='/member/mypage.do?action=Review'/>">나의 후기</a></li>
                <li><a href="<c:url value='/member/mypage.do?action=Shopping'/>">장바구니</a></li>
            </ul>
        </div>
        <p id="cartTable"></p>

    </div>

    <footer>
        <jsp:include page="../include/Footer.jsp"/>
    </footer>

    <script src="../js/shop.js"></script>
    <script type="text/javascript">
        renderCartTable();
    </script>
</body>
</html>
