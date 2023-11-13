<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<%@ include file="/pageModule/header.jsp" %>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">JSP 개요</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH01</li>
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
							1. 로그인 페이지를 작성해주세요.
							** 아래 처럼 만들어주세요.
							아이디 : _________
							비밀번호 : __________
							[  로그인   ]
							
							2. 로그인 처리는 login_process.jsp 로 요청해주세요.
							> 회원가입을 진행하지 않고, 특정 아이디/비밀번호를 정해서 로그인 처리해주세요.
						 -->
						<%
							String error = request.getParameter("error");
							if(error != null && error.equals("-1")) {
								out.println("<script>");
								out.println("alert('로그인 실패!')");
								out.println("</script>");
							} else if(error != null && error.equals("0")) {
								out.println("<script>");
								out.println("alert('비밀번호를 확인해주세요.')");
								out.println("</script>");
							}
							
						%>						 
						<form class="form-signin" id="loginForm" name="loginForm" action="<c:url value="login_process.jsp" />" method="post">
						    <div class="form-group mt-2">
						        <label for="id" class="sr-only">아이디: </label>
						        <input type="text" class="form-control" id="id" name="id" required>
						    </div>
						    <div class="form-group mt-2">
						        <label for="pw" class="sr-only">비밀번호: </label>
						        <input type="password" class="form-control" id="pw" name="pw" required>
						    </div>
						    <br/><br/>
						    <button id="loginBtn" type="button" class="btn btn-lg btn-success btn-block">로그인</button>
						</form>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
	<script type="text/javascript">
		$(function(){
			var loginForm = $("#loginForm");
			var loginBtn = $("#loginBtn");
			
			loginBtn.on("click", function(){
				var loginId = $("#id").val();
				var loginPw = $("#pw").val();
				if(!loginId) {
					alert("아이디를 입력해주세요.");
					return false;
				}
				if(!loginPw) {
					alert("비밀번호를 입력해주세요.");
					return false;
				}
				loginForm.submit();
			});
			
		});
	</script>	
	
</body>
</html>