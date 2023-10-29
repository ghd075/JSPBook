<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>About Us - ClassiGrids Classified Ads and Listing Website Template</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="/resources/assets/images/favicon.svg" />

    <link
        href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

    <!-- ========================= CSS here ========================= -->
    <link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/resources/assets/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="/resources/assets/css/animate.css" />
    <link rel="stylesheet" href="/resources/assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="/resources/assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="/resources/assets/css/main.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	
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
                        <h1 class="page-title">스크립트 태그</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html">INDEX</a></li>
                        <li>CH02</li>
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
                    		구구단 1 ~ 9단까지 출력해주세요.
                    		짝수 단인 경우에는 빨간색으로 출력해주세요.
                    		- 정렬 기준을 2가지로 제공하고, 제공된 정렬에 따라 출력을 다르게 해주세요.
                    			> 가로로 정렬, 세로로 정렬 
                    	 -->
                    	 <select id="orderSelect">
                    	 	<option>--선택해주세요--</option>
                    	 	<option value="1">가로로 정렬</option>
                    	 	<option value="2">세로로 정렬</option>
                    	 </select>
                    	 
                    	 <div id="t1">
                    	 <%
                    		// 변수 'color'를 선언하고 초기화합니다.
                    	 	String color = "";
                    	 	
                    	 	// HTML 표 시작 태그를 출력합니다. class는 table table-bordered, 너비가 100%로 설정
                    	 	out.println("<table class='table table-bordered' width='100%'>");
                    	 	// 외부 반복문: 1부터 9까지 행을 생성합니다.
                    	 	for(int i = 1; i < 10; i++) {
                    	 		// 각 행 시작 태그를 출력합니다. 행을 가운데 정렬합니다.
                    	 		out.println("<tr align='center'>");
                    	 		// 내부 반복문: 1부터 9까지 열을 생성합니다.
                    	 		for(int j = 1; j < 10; j++) {
                    	 			// 행이 홀수인지 짝수인지에 따라 배경색을 설정합니다.
                    	 			if(i % 2 == 0) {
                    	 				color = "red";		// 짝수 행은 빨간색 배경
                    	 			} else {
                    	 				color = "black";	// 홀수 행은 검은색 배경
                    	 			}
                    	 			// 표의 각 셀에 구구단 결과를 출력합니다. 텍스트의 색상은 'color' 변수에 따라 지정됩니다.
                    	 			out.println("   <td><font color='" + color + "'>" + (i) + 
                    	 					" x " + (j) + " = " + (i) * (j) + "</font></td>");
                    	 		}
                    	 		// 각 행 종료 태그를 출력합니다.
                    	 		out.println("</tr>");
                    	 	}
                    	 	// HTML 표 종료 태그를 출력합니다.
                   	 		out.println("</table>");
                    	 %>
                    	 </div>
            	        <br />           	 
            	        <div id="t2">
                    	 <%
                    	 	out.println("<table class='table table-bordered' width='100%'>");
                    	 	for(int i = 1; i < 10; i++) {
                    	 		out.println("<tr align='center'>");
                    	 		for(int j = 1; j < 10; j++) {
                    	 			if(j % 2 == 0) {
                    	 				color = "red";
                    	 			} else {
                    	 				color = "black";
                    	 			}
                    	 			out.println("   <td><font color='" + color + "'>" + (j) + 
                    	 					" x " + (i) + " = " + (i) * (j) + "</font></td>");
                    	 		}
                    	 		out.println("</tr>");
                    	 	}
                   	 		out.println("</table>");
                    	 %>
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
     <script type="text/javascript">
     // 페이지가 완전히 로드되면 해당 스크립트가 실행된다.
	 $(function() {
		// 'orderSelect' 변수는 idrk "orderSelect"인 <select> 요소를 jQuery 선택자로 선택한다.
		var orderSelect = $("#orderSelect");
		
		// 초기 상태: "t1" 및 "t2" id를 가진 <div> 요소를 숨깁니다.(display : none과 비슷함)
		$("#t1").hide();
		$("#t2").hide();
		
		// 'orderSelect' 요소의 'change' 이벤트가 발생하게 되면
		orderSelect.on("change", function() {
	        // 'this'는 'orderSelect' 요소를 가리킵니다.
	        // 선택된 값을 가져옵니다.
			var value = $(this).val();
			
			if(value == "1") {
	            // 만약 값이 "1"이라면:
	            // "t1" 요소를 표시하고(display:block과 비슷) "t2" 요소를 숨깁니다.(display : none과 비슷함)
				$("#t1").show();
				$("#t2").hide();
			} else {
	            // 다른 값이 선택된 경우:
	            // "t2" 요소를 표시하고(display:block과 비슷) "t1" 요소를 숨깁니다.(display : none과 비슷함)
				$("#t2").show();
				$("#t1").hide();
			}
		})
	});
	</script>
</body>

</html>