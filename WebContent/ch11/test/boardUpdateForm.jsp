<%@page import="kr.or.ddit.ch07.BoardVO"%>
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
							1. 게시판 수정 페이지를 작성해주세요.
							
							[출력 예]
							
							게시글 등록
							─────────────────────────────
							제목 : 제목입니다1
							작성자 : 홍길동
							내용 : 내용입니다1
							─────────────────────────────
							[ 수정  ] [ 목록 ]
							
							2. 수정 버튼 클릭 시, 게시글 수정(boardUpdate.jsp)을 진행해주세요.
							3. 목록 버튼 클릭 시, 목록 페이지(boardList.jsp)로 이동해주세요. 
						 -->
						 <%
							 // 세션에서 "userId" 속성(세션에 저장된 사용자 ID)을 얻어옵니다.
							 BoardRepository board = BoardRepository.getInstance();
					 		 String no = request.getParameter("no");
					 		 BoardVO boardVO = board.getBoardById(Integer.parseInt(no)); // "no" 파라미터를 정수로 변환하여 사용
						 %>						 
						<h3>게시글 수정</h3>
						<hr /><br />
						<div class="container">
						    <form name="newBoard" action="boardUpdate.jsp?no=<%=no %>" class="form-horizontal" method="post" enctype="multipart/form-data">
						        <table class="table table-bordered">
						            <tr>
						                <td class="col-sm-2">제목</td>
						                <td class="col-sm-5">
						                    <input type="text" name="title" class="form-control" value="<%=boardVO.getTitle() %>">
						                </td>
						            </tr>
						            <tr>
						                <td class="col-sm-2">작성자</td>
						                <td class="col-sm-5">
						                    <input type="text" name="writer" class="form-control" value="<%= boardVO.getWriter() %>" readonly>
						                </td>
						            </tr>
						            <tr>
						                <td class="col-sm-2">내용</td>
						                <td class="col-sm-8">
						                    <textarea name="content" cols="50" rows="2" class="form-control"><%=boardVO.getContent() %></textarea>
						                </td>
						            </tr>
						            <tr>
						                <td class="col-sm-2">이미지</td>
						                <td class="col-sm-5">
						                    <input type="file" name="productImage" class="form-control">
						                </td>
						            </tr>
						            <tr>
						                <td class="col-sm-2">첨부파일 내용</td>
						                <td class="col-sm-5">
						                	<%=boardVO.getFileVO().getFileName() %>
						                </td>
						            </tr>
						        </table>
						        <div class="form-group row mt-3">
						            <div class="col-sm-offset-2 col-sm-10">
						                <input type="submit" class="btn btn-primary" value="수정">
						                <a href="boardList.jsp" class="btn btn-secondary">목록가기</a>
						            </div>
						        </div>
						    </form>
						</div>					 
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>