<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>소개 페이지</title>
    <link rel="stylesheet" type="text/css" href="../css/profilepagestyle.css"/>
    <link rel="stylesheet" type="text/css" href="../css/header.css"/>
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
<body>
<div id="wrap">
    <header>
    <jsp:include page="/include/header.jsp"/>
    </header>

    <main id="main">
        <Section id="sec1"><p>좋은 제품을 드리겠다는 마음으로 이 사이트를 개발했습니다</p></Section>
        <Section id="sec2">
            <div data-aos="fade-up"
                 data-aos-offset="200"
                 data-aos-duration="1000"
                 data-aos-easing="ease-in-out"
                 data-aos-mirror="true"
                 data-aos-once="false"
                 data-aos-anchor-placement="top-center">
                <p>
                    re-coder는 다양한 소품 및 서비스를 제공하는 브랜드입니다<br>
                    제공 중인 제품에는 문구, 식기, 장식품 등 다양한 소품이 있고<br>
                    제품에 문제가 생길 시 무상으로 수리하는 서비스도 제공해드립니다<br>
                    앞으로 더 발전하는 re-coder가 되겠습니다
                </p>
            </div>
        </Section>
    </main>

    <jsp:include page="/include/Footer.jsp"/>

</div>

<script>
    AOS.init();
</script>
</body>
</html>
