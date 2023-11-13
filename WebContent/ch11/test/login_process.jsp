<%@page import="kr.or.ddit.ch07.MemberVO"%>
<%@page import="kr.or.ddit.ch07.MemberDAO"%>
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
						1. 로그인 화면에서 넘겨받은 아이디/비밀번호를 이용하여 로그인 인증을 진행해주세요.
						> 본인이 결정한 아이디/비밀번호일때 로그인 처리해주세요.
						
						2. 로그인 인증
						> 로그인 성공 시, menu.jsp로 이동합니다.
						> 로그인 실패 시, login.jsp로 이동합니다.
					 -->
						 <%
						 	request.setCharacterEncoding("UTF-8");
						 	String id = request.getParameter("id");
						 	String pw = request.getParameter("pw");
						 	
						 	String ctx = request.getContextPath();
						 	
						 	MemberDAO dao = MemberDAO.getInstance();
						 	
						 	int check = dao.loginCheck(id, pw);
						 	
					        if(check == 1)    // 로그인 성공
					        { 
					            // 세션에 사용자 ID 저장
					            session.setAttribute("userId", id);	
					        	request.getRequestDispatcher("menu.jsp").forward(request, response);
					        }
					        else if(check == 0) // 비밀번호가 틀릴경우
					        {
					        	response.sendRedirect(ctx + "/ch11/test/login_failed.jsp?failed=0");
					        }
					        else    // 아이디가 틀릴경우
					        {
					        	response.sendRedirect(ctx + "/ch11/test/login_failed.jsp?failed=-1");
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