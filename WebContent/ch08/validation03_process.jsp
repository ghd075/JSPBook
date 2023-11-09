<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <h1 class="page-title">유효성 검사</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH08</li>
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
                    	<%
                    		request.setCharacterEncoding("UTF-8");
                    	
                    		String id = request.getParameter("id");
                    		String pw = request.getParameter("pw");
                    		String id2 = request.getParameter("id2");
                    		String pw2 = request.getParameter("pw2");
                    		
                    		out.println("Javascript 버전<br/>");
                    		out.println("아이디 : " + id + "<br/>");
                    		out.println("비밀번호 : " + pw + "<br/>");
                    		out.println("Jquery 버전<br/>");
                    		out.println("아이디 : " + id2 + "<br/>");
                    		out.println("비밀번호 : " + pw2 + "<br/>");
                    	%>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>
    <script type="text/javascript">
    	// 자바스크립트 onsubmit 이벤트 처리
    	function submitEvent() {
    		console.log("Submit Event...!");
    		alert("Submit Event...!");
    		
    		var id = document.loginForm.id.value;
    		var pw = document.loginForm.pw.value;
    		
    		if(id == "") {
	    		alert("아이디가 누락되었습니다.");
    			return false;
    		}
    		if(pw == "") {
	    		alert("비밀번호가 누락되었습니다.");
    			return false;
    		}
    	}
    </script>
</body>

</html>