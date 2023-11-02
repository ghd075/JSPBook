<%@page import="kr.or.ddit.ch07.MemberVO"%>
<%@page import="kr.or.ddit.ch07.MemberDAO"%>
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
                        <h1 class="page-title">파일업로드</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH07</li>
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
							1. 로그인 페이지에서 전송한 아이디, 비밀번호를 받는다.
							2. 전달받은 아이디, 비밀번호에 해당하는 내 정보가 있는지 없는지 체크
								- DAO, VO를 활용하여 진행할 수 있도록 합니다.
								- 제공된 DAO, VO를 사용
							3. 전달받은 아이디, 비밀번호에 해당하는 회원인 경우에 ch07_test_memberList.jsp로 이동하여
								회원 목록 페이지를 완성해주세요.
							4. 전달받은 아이디 비밀번호에 해당하지 않는 회원인 경우에 ch07_test-signin.jsp로 이동하여 
								다시 로그인을 진행할 수 있도록 해주고, 에러 메세지를 출력해주세요! 
						 -->
						 <%
						 	request.setCharacterEncoding("UTF-8");
						 	response.setCharacterEncoding("UTF-8");
						 	String id = request.getParameter("id");
						 	String pw = request.getParameter("pw");
						 	
						 	MemberDAO dao = MemberDAO.getInstance();
						 	int check = dao.loginCheck(id, pw);
						 	
						 	String ctx = request.getContextPath();
						 	
					        
					        if(check == 1)    // 로그인 성공
					        { 
					        	session.setAttribute("member_id", id);
					            // 로그인 성공 시 알림 메시지를 표시
					            out.println("<script>");
					            out.println("alert('" + id + "님! 환영합니다.')");
					            out.println("</script>");
					            out.println("<script>");
					            out.println("window.location.href='" + ctx + "/ch07/ch07_test_memberList.jsp'");
					            out.println("</script>");
					        }
					        else if(check == 0) // 비밀번호가 틀릴경우
					        {
					        	response.sendRedirect(ctx + "/ch07/ch07_test_signin.jsp?msg=0");
					        }
					        else    // 아이디가 틀릴경우
					        {
					        	response.sendRedirect(ctx + "/ch07/ch07_test_signin.jsp?msg=-1");
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