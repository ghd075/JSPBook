<%@page import="kr.or.ddit.ch07.BoardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.ch07.BoardRepository"%>
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
							첨부한 파일들을 확인 할 수 있는 자료실 페이지를 구성해주세요.
							- 자료실을 구성하는데 필요한 내용 모두는 board를 작성했던 방식을 참고하여 작성한다.
							
							1. 파일의 유형에 따라 유형에 맞는 default 이미지로 리스트를 구성하세요.
							
							[출력 예]
							
							자료실
							[pdf]	[excel]	[excel]	[ppt]
							[image] [txt]	[word]	[txt]
							[etc]	[etc]	[pdf]	[ppt]
							[...]
							
							목록 
						 -->
						<h4>메뉴 박스</h4>
						<hr />
						<div class="btn-group btn-group-justified mt-2">
						    <a href="boardList.jsp" class="btn btn-primary rounded-pill px-4">게시판</a>
						    <a href="dropbox.jsp" class="btn btn-info rounded-pill px-4 mx-2">자료실 페이지</a>
						    <a href="#" onclick="Logout();" class="btn btn-danger rounded-pill px-4">로그아웃</a>
						</div>
						<hr />
						<h4>자료실</h4>
						<hr />
						<%
							BoardRepository board = BoardRepository.getInstance();
							ArrayList<BoardVO> listOfBoard = board.selectBoardList();
						%>
						<div class="row">
						    <!-- 파일 목록을 동적으로 생성합니다. -->
						    <div class="col-3">
						        <img src="${pageContext.request.contextPath}/resources/images/pdf-icon.png" alt="PDF" class="img-fluid mb-3" style="width: 50px; height: 50px;">
						    </div>
						    <div class="col-3">
						        <img src="${pageContext.request.contextPath}/resources/images/excel-icon.png" alt="Excel" class="img-fluid mb-3" style="width: 50px; height: 50px;">
						    </div>
						    <div class="col-3">
						        <img src="${pageContext.request.contextPath}/resources/images/ppt-icon.png" alt="PPT" class="img-fluid mb-3" style="width: 50px; height: 50px;">
						    </div>
						    <div class="col-3">
						        <img src="${pageContext.request.contextPath}/resources/images/txt-icon.png" alt="Text" class="img-fluid mb-3" style="width: 50px; height: 50px;">
						    </div>
						</div>
						<div class="row">
						    <div class="col-3">
						        <img src="${pageContext.request.contextPath}/resources/images/jpg-image-icon.png" alt="jpg" class="img-fluid mb-3" style="width: 50px; height: 50px;">
						    </div>
						    <div class="col-3">
						        <img src="${pageContext.request.contextPath}/resources/images/word-icon.png" alt="Word" class="img-fluid mb-3" style="width: 50px; height: 50px;">
						    </div>
						    <div class="col-3">
						        <img src="${pageContext.request.contextPath}/resources/images/png-image-icon.png" alt="png" class="img-fluid mb-3" style="width: 50px; height: 50px;">
						    </div>
						</div>
						<c:set value="<%=listOfBoard%>" var="boardList" />
					 	<table class="table table-hover" style="margin-top: 10px;">
					 		<c:choose>
					 			<c:when test="${empty boardList}">
				 					<tr>
										<td colspan="2">조회할 파일 목록이 없습니다.</td>
									</tr>
					 			</c:when>
					 			<c:otherwise>
					 				<c:forEach var="v" items="${boardList}">
					 					<c:set value="${v.fileVO}" var="f" />
								 		<tr>
								 			<td>
								 				<img src="${pageContext.request.contextPath }/resources/images/${f.fileName}" class="card-img-top" alt="${f.fileName}" style="width: 300px;"/>
								 			</td>
								 			<td>
								 				이미지 파일명 : 
								 				<a href="${pageContext.request.contextPath }/resources/images/${f.fileName}" download="${f.fileName}">${f.fileName}</a><br />
								 				이미지 크기 : ${f.fileSize} 
								 			</td>
								 		</tr>
					 				</c:forEach>
					 			</c:otherwise>
					 		</c:choose>
					 	</table>
					</div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
    <script type="text/javascript">

	   function Logout(){
		   sessionStorage.removeItem("userId");
		   location.href = "login.jsp";
	   }

	</script>	
</body>
</html>