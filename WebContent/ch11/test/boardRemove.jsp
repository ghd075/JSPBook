<%@page import="kr.or.ddit.ch07.BoardVO"%>
<%@page import="java.io.File"%>
<%@page import="kr.or.ddit.ch07.BoardFileVO"%>
<%@page import="kr.or.ddit.ch07.BoardRepository"%>
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
							삭제할 게시글 정보를 넘겨받고, 삭제를 진행해주세요.
							삭제가 실패하여 에러가 발생 할 경우, exceptionBoard_error.jsp 페이지로 이동할 수 있게 해주세요.
							
							삭제 완료 후, 게시판 목록 페이지(boardList.jsp)로 이동해주세요.
						 -->
						 <!-- 
							1. 게시글 삭제를 처리해주세요.
								> 삭제 성공 후, 상세보기 페이지(boardList.jsp)로 이동해주세요.
								> 삭제 실패 후, 에러 페이지(exceptionBoard_error.jsp)로 이동해주세요.
						 -->
						 <%
						 	request.setCharacterEncoding("UTF-8");
							 // 삭제할 게시글 번호를 파라미터에서 얻어옵니다.
							 String realFolder = request.getServletContext().getRealPath("/resources/images");
							 
							 BoardRepository board = BoardRepository.getInstance();
							 String no = request.getParameter("no");
							 BoardVO boardOld = board.getBoardById(Integer.parseInt(no)); // "no" 파라미터를 정수로 변환하여 사용
							 BoardFileVO fileVO = boardOld.getFileVO();;
	
							 try {
							 	// 게시글 삭제 메소드를 호출하여 해당 게시글을 삭제합니다.
								// 이전 이미지 파일 삭제
								 if (fileVO != null && fileVO.getFileName() != null && !fileVO.getFileName().isEmpty()) {
								    String oldFileName = fileVO.getFileName();
								    File oldFile = new File(realFolder + "/" + oldFileName);
								    if (oldFile.exists()) {
								        oldFile.delete();
								    }
								}	
							 	board.deleteBoard(Integer.parseInt(no));
	
							 	// 삭제 성공 시, 게시판 목록 페이지로 이동합니다.
							 	response.sendRedirect("boardList.jsp");
							 } catch (Exception e) {
							 	// 게시글 삭제 실패 시, 에러 페이지로 이동합니다.
							 	request.getRequestDispatcher("exceptionBoard_error.jsp").forward(request, response);
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