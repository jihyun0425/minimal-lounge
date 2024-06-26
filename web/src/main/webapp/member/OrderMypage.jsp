<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>주문내역</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=DM+Serif+Text&family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&display=swap');

        * {
            text-decoration: none;
            list-style: none;
        }
        body {

            font-family: 'Noto Sans KR', sans-serif;
            font-size: 1.3em;
            line-height: 1.6;
        }

        .mypage {
            width: 1200px;
            display: flex;
            justify-content: space-between;
            width: calc((100% - 100px) / 2);
        }

        h1 {
            padding-left: 100px;
        }

        h1 > a {
            color: black;
        }

        .nav > ul {
            text-align: center;
            width: calc(1200px - 800px);
        }

        .nav > ul > li {
            margin-left: 100px;
            padding: 30px;
        }

        .nav > ul > li > a {
            color: #575757;
        }

        .order {
            padding-top: 70px;
            font-size: 1.0rem;
            width: 800px;

        }

        .order > .title {
            display: flex;
            justify-content: left;
            align-items: center;
            width: 700px;
            background: black;
            border-radius: 4px;
            color: #ffffff;
            padding: 5px 0 5px 15px;
            font-weight: 600;
        }

        table {
            width: 700px;
            text-align: center;
        }
        table td {
            padding-top: 30px;
        }

        span {
            color: rgb(128, 128, 128);
        }
        footer {transform: translate(0, 50px)}
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
        <div class="order">
            <ul class="title">
                <li>주문내역조회</li>
            </ul>
            <table>
                <thead>
                    <tr>
                        <th>주문 번호</th>
                        <th>상품 정보</th>
                        <th>주문 일자</th>
                        <th>주문 상태</th>
                    </tr>
                </thead>
                <tbody>
                    <c:choose>
                        <c:when test="${not empty orderList}">
                            <c:forEach items="${orderList}" var="order" varStatus="loop">
                                <tr>
                                    <td>${order.id}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${order.getProductListLength() > 0}">
                                                ${order.getProductName(0)}<c:if test="${order.getProductListLength() > 1}"> 등, ${order.getProductListLength()}개 상품</c:if>
                                            </c:when>
                                            <c:otherwise>
                                                상품 목록이 없습니다.
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td><fmt:formatDate value="${order.order_date}" pattern="yyyy-MM-dd"/></td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${order.status == 1}">결제 대기중</c:when>
                                            <c:when test="${order.status == 2}">결제 완료</c:when>
                                            <c:when test="${order.status == 3}">배송 준비중</c:when>
                                            <c:when test="${order.status == 4}">배송중</c:when>
                                            <c:when test="${order.status == 5}">배송 완료</c:when>
                                            <c:otherwise>오류 발생</c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="4">주문하신 내역이 없습니다.</td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>
    </div>
    <footer>
        <jsp:include page="../include/Footer.jsp"/>
    </footer>
</body>
</html>
