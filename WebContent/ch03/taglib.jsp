<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>About Us - ClassiGrids Classified Ads and Listing Website Template</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.svg" />
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/assets/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="/resources/assets/css/animate.css" />
    <link rel="stylesheet" href="/resources/assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="/resources/assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="/resources/assets/css/main.css" />
</head>

<body>
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
                        <h1 class="page-title">디렉티브 태그</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html">INDEX</a></li>
                        <li>CH03</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="about-us section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
                    	<div class="card card-primary">
                    		<div class="card-header">
                    			<h6>변수 k가 1부터 10까지 1씩 증가하도록 JSTL의 Core태그 반복문을 작성</h6>
                    		</div>
                    		<div class="card-body">
		                    	<c:forEach begin="1" end="10" step="1" var="k">
		                    		<c:out value="${k }" />
		                    	</c:forEach>
                    		</div>
                    	</div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
                    	<div class="card card-primary">
                    		<div class="card-header">
                    			<h6>
                    				변수 k가 1부터 10까지 1씩 증가하도록 JSTL의 Core태그 반복문을 작성 <br/>
                    				<font color="red">(짝수일 때만 출력)</font>
                    			</h6>
                    		</div>
                    		<div class="card-body">
		                    	<c:forEach begin="1" end="10" step="1" var="k">
		                    		<c:if test="${k % 2 == 0}">
			                    		<c:out value="${k }" />
		                    		</c:if>
		                    	</c:forEach>
                    		</div>
                    	</div>
                    </div>
                </div>                
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
                    	<div class="card card-primary">
                    		<div class="card-header">
                    			<h6>
                    				스크립틀릿과 표현문/JSTL을 통해 str 출력 <br />
                    				<font color="red">(스크립틀릿으로 선언)</font>
                    			</h6>
                    		</div>
                    		<div class="card-body">
                    			<%
                    				String str = "스크립틀릿으로 선언한 개똥이";
                    			%>
                    			<%= str %>
                    		</div>
                    	</div>
                    </div>
                </div>                
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
                    	<div class="card card-primary">
                    		<div class="card-header">
                    			<h6>
                    				스크립틀릿과 표현문/JSTL을 통해 str 출력 <br />
                    				<font color="red">(JSTL의 Core태그 out으로 선언)</font>
                    			</h6>
                    		</div>
                    		<div class="card-body">
                    			<!-- 변수 str에 문자열을 넣고 JSTL의 Core 태그로 setter 작성 -->
                    			<c:set value="core태그로 선언한 개똥이" var="str" />
                    			<!-- Core 태그 setter로 넣은 변수 str을 Core 태그 out으로 출력 값에 EL언어로 출력 -->
                    			<c:out value="${str }"/>
                    		</div>
                    	</div>
                    </div>
                </div>                
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
                    	<div class="card card-primary">
                    		<div class="card-header">
                    			<h6>
                    				스크립틀릿과 표현문/JSTL을 통해 Collection 출력 <br />
                    				<font color="red">(스크립틀릿으로 선언)</font>
                    			</h6>
                    		</div>
                    		<div class="card-body">
                    			<%
                    				List<String> list = new ArrayList<String>();
                    				list.add("개똥이");
                    				list.add("김철수");
                    				list.add("메뚜기");
                    			%>
                    			<%= list %>
                    		</div>
                    	</div>
                    </div>
                </div>                
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
                    	<div class="card card-primary">
                    		<div class="card-header">
                    			<h6>
                    				스크립틀릿과 표현문/JSTL을 통해 Collection 출력 <br />
                    				<font color="red">(JSTL의 Core태그 forEach를 통해 Collection 출력)</font>
                    			</h6>
                    		</div>
                    		<div class="card-body">
                    			<c:forEach items="<%= list %>" var="item" varStatus="stat">
                    				index : ${stat.index } | count : ${stat.count } | <c:out value="${item}" /><br/>
                    			</c:forEach>
                    		</div>
                    	</div>
                    </div>
                </div>                
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
                    	<div class="card card-primary">
                    		<div class="card-header">
                    			<h6>
                    				JSTL을 통해 범위 내 값 출력 <br />
                    				<font color="red">(choose-when/otherwise를 이용)</font>
                    			</h6>
                    		</div>
                    		<div class="card-body">
                    			<c:set value="5000" var="money" />
                    			<p>내가 가진 돈은 ${money }원 입니다.</p>
                    			<c:choose>
                    				<c:when test="${money <= 0 }">
                    					무일푼
                    				</c:when>
                    				<c:when test="${money >= 5000 and money <= 10000}">
                    					커피 한잔의 여유 가능
                    				</c:when>
                    				<c:otherwise>
                    					밥 먹자!
                    				</c:otherwise>
                    			</c:choose>
                    		</div>
                    	</div>
                    </div>
                </div>                
                <div class="col-lg-6 col-md-12 col-12">
                    <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
                    	<div class="card card-primary">
                    		<div class="card-header">
                    			<h6>
                    				JSTL을 통해 범위 내 값 출력 <br />
                    				<font color="red">(if를 이용)</font>
                    			</h6>
                    		</div>
                    		<div class="card-body">
                    			<p>내가 가진 돈은 ${money }원 입니다.</p>
                    			<c:if test="${money <= 0 }">
                    				무일푼
                    			</c:if>
                    			<c:if test="${money >= 5000 and money <= 10000 }">
                    				커피 한잔의 여유 가능
                    			</c:if>
                    			<c:if test="${money > 10000 }">
                    				밥 먹자!
                    			</c:if>
                    		</div>
                    	</div>
                    </div>
                </div>                
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="footer-bottom">
            <div class="container">
                <div class="inner">
                    <div class="row">
                        <div class="col-12">
                            <div class="content">
                                <p class="copyright-text">대덕인재개발원 JSP</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Footer Middle -->
    </footer>

    <a href="#" class="scroll-top btn-hover">
        <i class="lni lni-chevron-up"></i>
    </a>

    <script src="/resources/assets/js/bootstrap.min.js"></script>
    <script src="/resources/assets/js/wow.min.js"></script>
    <script src="/resources/assets/js/tiny-slider.js"></script>
    <script src="/resources/assets/js/glightbox.min.js"></script>
    <script src="/resources/assets/js/count-up.min.js"></script>
    <script src="/resources/assets/js/main.js"></script>
    <script type="text/javascript">
        tns({
            container: '.client-logo-carousel',
            slideBy: 'page',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            gutter: 15,
            nav: false,
            controls: false,
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 3,
                },
                768: {
                    items: 4,
                },
                992: {
                    items: 4,
                },
                1170: {
                    items: 6,
                }
            }
        });
    </script>
</body>
</html>