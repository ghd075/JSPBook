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
                        <h1 class="page-title">쿠키</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH14</li>
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
                    		넘겨받은 아이디와 비밀번호를 꺼낸 후,
                    		임의로 설정한 아이디/비밀번호와 일치하는 경우에 "인증 성공했습니다!" 메시지를 출력하고
                    		쿠키를 저장해주세요.
                    		
                    		일치하지 않는 정보인 경우, "인증 실패했습니다!" 메시지를 출력하고
                    		다시 로그인 페이지로 이동할 수 있는 버튼을 제공해주세요.
                    	-->
                    	<%
                    		String id = request.getParameter("id");
                    		String pw = request.getParameter("pw");
                    		String chk = request.getParameter("chk");
                    		
                    		if(id.equals("admin") && pw.equals("1234")) {	// 인증 성공
                    			out.println("인증 성공했습니다!");
                    			out.println("<a href='ch14_test.jsp'>로그인 이동</a>");
                    			
                    			// 아이디 저장을 체크 했는가?
                 				Cookie cookie = null;
                    			if(chk != null) {		// 아이디 저장 체크 true
                    				cookie = new Cookie("chk", id);
                    			} else {
                    				cookie = new Cookie("chk", id);
                    				cookie.setMaxAge(0);
                    			}
                    			response.addCookie(cookie);
                    		} else {		// 인증 실패
                    			out.println("인증 실패했습니다!");
                    			out.println("<a href='ch14_test.jsp'>로그인 이동</a>");                    			
                    		}
                    	%>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>
</body>

</html>