<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
							1. 시큐리티 보호자원 이동 시, 인증 페이지를 작성해주세요.
							
							[출력 예시]
							아이디 : ________
							비밀번호 : _________
							[ 로그인  ]
						 -->
						<form class="form-signin" action="j_security_check" method="post">
							<div class="form-group mt-2">
								<label for="inputUserName" class="sr-only">User Name</label> 
								<input	type="text" class="form-control" placeholder="ID" name='j_username' required autofocus>
							</div>
							<div class="form-group mt-2">
								<label for="inputPassword" class="sr-only">Password</label> 
								<input 	type="password" class="form-control" placeholder="Password" name='j_password' required>
							</div>
							<br/><br/>
							<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
						</form>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>