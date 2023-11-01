<%@page import="java.util.Calendar"%>
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

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">내장객체</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH05</li>
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
							아이디, 비밀번호, 이름, 성별, 핸드폰번호, 주소를 입력 받는 폼 양식을 구성하고
							ch05_test_process.jsp로 method방식 post로 전송해주세요.
							
							작성을 완료했으면 ch05_test_process.jsp로 넘어가 처리를 마무리해주세요.
							
							아이디는 type="text"
							비밀번호는 type="text"
							이름은 type="text"
							성별은 type="radio"
							핸드폰번호 1) type="select" (첫번째자리)
									2) type="text"	 (두번째자리)
									3) type="text"	 (세번째자리)
							주소 type="text"
							
							성별의 value는 한글이 아닌 영문으로 설정 후 데이터를 넘겨주세요.
							
						 -->	
						 <form action="ch05_test_process.jsp" method="post">
							<div class="mb-3 row">
								<label for="id" class="col-sm-1 col-form-label">아이디</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="id" name="id">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="pw" class="col-sm-1 col-form-label">비밀번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="pw" name="pw">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="name" class="col-sm-1 col-form-label">이름</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="name" name="name">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="gender" class="col-sm-1 col-form-label">성별</label>
								<div class="col-sm-10">
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="gender" id="genderM" value="M">
										<label class="form-check-label" for="genderM">남자</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio" name="gender" id="genderG" value="G">
										<label class="form-check-label" for="genderG">여자</label>
									</div>
								</div>
							</div>
							<div class="mb-3 row">
								<label for="phone" class="col-sm-1 col-form-label">핸드폰번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="phone" name="phone">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="address" class="col-sm-1 col-form-label">주소</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="address" name="address">
								</div>
							</div>
							<input class="btn btn-primary" type="submit" value="전송"/>
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






