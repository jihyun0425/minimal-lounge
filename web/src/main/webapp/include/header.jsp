<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Minimal Lounge</title>
    <link rel="stylesheet" type="text/css" href="css/mainpagestyle.css"/>
    <script src="main.js"></script>
</head>
<body>
<div id="wrap" class="max-height-container">
    <header id="header">
        <h1>
            <a href="<c:url value='/index.do'/>">
                <p>Minimal Lounge</p>
            </a>
        </h1>


        <div class="inner">
            <button class="menu-toggle">
            <span class="icon"></span>
        </button>
            <ul class="login">
                <c:if test="${empty sessionScope.userId}">
                    <li><a href="<c:url value='/member/login.do'/>">로그인</a></li>
                    <li><a href="<c:url value='/member/join.do'/>">회원가입</a></li>
                </c:if>
                <c:if test="${not empty sessionScope.userId}">
                    <li><a href="<c:url value='/member/logout.do'/>">로그아웃</a></li>
                    <li><a href="<c:url value='/member/mypage.do'><c:param name='action' value='mypage' /></c:url>">마이페이지</a>
                    </li>
                </c:if>
            </ul>

            <nav id="menu">
                <ul>
                    <li><a href="<c:url value='/board/profile.do'><c:param name='action' value='intro' /></c:url>">소개</a>
                    </li>
                    <li>
                        <a href="<c:url value='/shop/goods.do'><c:param name='category' value='goods' /></c:url>">상점</a>
                    <li><a href="<c:url value='/board/list.do'><c:param name='board' value='1' /></c:url>">상품후기</a>
                    <li><a href="<c:url value='/board/list.do'><c:param name='board' value='2' /></c:url>">FAQ</a>
                </ul>
            </nav>
        </div>

    </header>
</div>
</body>
</html>
