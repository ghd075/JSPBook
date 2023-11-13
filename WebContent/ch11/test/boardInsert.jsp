<%@page import="kr.or.ddit.ch07.BoardVO"%>
<%@page import="kr.or.ddit.ch07.BoardFileVO"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="kr.or.ddit.ch07.BoardRepository"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
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
						1. 게시글 등록을 처리해주세요.
							> 게시글 등록 성공 시, 상세보기 페이지(boardView.jsp)로 이동해주세요.
							> 게시글 등록 실패 시, 에러 페이지(exceptionBoard_error.jsp)로 이동해주세요.
					 -->
					 <%
						request.setCharacterEncoding("UTF-8");

						String realFolder = request.getServletContext().getRealPath("/resources/images");
						String encType = "UTF-8";
						
						int maxSize = 5 * 1024 * 1024;		// 최대 업로드 될 파일 크기(5MB)

						File folder = new File(realFolder);
						if(!folder.exists()) {
							folder.mkdirs();
						}
						
						BoardRepository board = BoardRepository.getInstance();
						BoardFileVO fileVO = new BoardFileVO();
						
						try {
							DiskFileUpload upload = new DiskFileUpload();
							upload.setSizeMax(maxSize);					// 최대 크기
							upload.setSizeThreshold(maxSize);			// 메모리상에 저장할 최대크기(byte)
							upload.setRepositoryPath(realFolder);		// 업로드 된 파일을 임시로 저장할 경로
							
							List items = upload.parseRequest(request);
							Iterator params = items.iterator();
							
							String title = "";
							String writer = "";
							String content = "";
							String fileName = "";
							
							while(params.hasNext()) {
								FileItem item = (FileItem) params.next();
								
								if(item.isFormField()) {	// 일반 데이터일 때
									String fieldName = item.getFieldName();
									//out.println(fieldName + " = "  + item.getString(encType) + "<br/>");
									if(fieldName.equals("title")) {
										title = item.getString(encType);
									} else if(fieldName.equals("writer")) {
										writer = item.getString(encType);
									} else if(fieldName.equals("content")) {
										content = item.getString(encType);
									}
										
								} else {						// 파일 데이터일 때
									String FileFieldName = item.getFieldName();		// 요청 파라미터 이름
									fileName = item.getName();	// 저장 파일의 이름
									String contentType = item.getContentType();		// 파일 컨텐츠 타입
									long fileSize = item.getSize();		// 파일 크기 정보
									File saveFile = new File(realFolder + "/" + fileName);
									item.write(saveFile);		// 파일 복사
									
									//out.println("──────────────────────<br/>");
									fileVO.setFileName(fileName);
									fileVO.setContentType(contentType);
									fileVO.setFileSize(fileSize);
									//out.println("요청 파라미터 이름 : " + FileFieldName + "<br/>");
									//out.println("저장 파일이름 : " + fileName + "<br/>");
									//out.println("파일 컨텐츠 타입 : " + contentType + "<br/>");
									//out.println("파일 크기 : " + fileSize + "<br/>");
								}
							}
							
							BoardVO boardVO = new BoardVO();
							boardVO.setTitle(title);
							boardVO.setWriter(writer);
							boardVO.setContent(content);
							boardVO.setFileVO(fileVO);
							boardVO.setHit(0);
							
							board.addBoard(boardVO);
							
							response.sendRedirect("boardView.jsp?no=" + boardVO.getNo());
						} catch (Exception e) {
							request.getRequestDispatcher("exceptionBoard_error.jsp").forward(request, response);
						  	// 게시글 등록 실패 시 에러 페이지로 이동
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