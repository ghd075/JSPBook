<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>쉽게 배우는 JSP 웹 프로그래밍</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   <%@ include file="/pageModule/headPart.jsp" %>
</head>

<body>

    <!-- Preloader -->
    <div class="preloader">
        <div class="preloader-inner">
            <div class="preloader-icon">
                <span></span>
                <span></span>
            </div>
        </div>
    </div>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">JSP 표준 태그 라이브러리</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH17</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="about-us section">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
     					<!-- 
     						request.getHeader("User-Agent") request 내장 객체를 이용하여 가져온 header
     						'User-Agent'를 EL에서 header['User-Agent']로 작성이 가능합니다.
     					 -->               
     					 browser 변수 값 설정<br/>
     					 
     					 <c:set value="${header }" var="hd" />
     					 User-Agent : <c:out value="${hd['User-Agent'] }"/><br/>
     					 Host : <c:out value="${hd['Host'] }"/><br/>
     					 Accept : <c:out value="${hd['Accept'] }"/><br/>
     					 Accept-Language : <c:out value="${hd['Accept-Language'] }"/><br/>
     					 Referer : <c:out value="${hd['Referer'] }"/><br/>
     					 Coonection : <c:out value="${hd['Connection'] }"/><br/>
     					 Cache-Control : <c:out value="${hd['Cache-Control'] }"/><br/>
     					 
     					 <hr/>
     					 <c:set value="${header['User-Agent'] }" var="userAgent" />
     					 User-Agent : <c:out value="${userAgent }"/><br/>
     					 
     					 <p>browser 변수 값 제거 후(userAgent)</p>
     					 <c:remove var="userAgent"/>
     					 User-Agent : <c:out value="${userAgent }"/><br/>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>
</body>

</html>