<%@page import="kr.or.ddit.ch07.BoardVO"%>
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
							1. 게시글 상세보기를 출력해주세요.
								> JSTL을 활용해주세요. 
							
							[출력 예]
							
							게시판 상세보기
							──────────────────────────────────────────────
							제목 : 
							작성자 작성일 조회수
							──────────────────────────────────────────────
							내용
							──────────────────────────────────────────────
							
							[ 수정  ] [ 삭제  ] [ 목록  ]
							
							2. 수정 버튼 클릭 시, 수정 페이지(boardUpdateForm.jsp)로 이동합니다.
							3. 삭제 버튼 클릭 시, 해당 게시글이 삭제 처리 될 수 있도록 합니다.
								> "정말로 삭제하시겠습니까?" 알림창이 나타나고, [확인]버튼을 클릭 시 삭제가 처리(boardRemove.jsp) 될 수 있도록 해주세요.
								> "정말로 삭제하시겠습니까?" 알림창이 나타나고, [취소]버튼을 클릭 시 알림창이 꺼질 수 있게 해주세요.
							4. 목록 버튼 클릭 시, 목록 페이지(boardList.jsp)로 이동합니다.
						 -->
						 <h4>상세 페이지입니다.</h4>
						<%
							BoardRepository board = BoardRepository.getInstance();
							String no = request.getParameter("no");
							BoardVO boardVO = board.getBoardById(Integer.parseInt(no)); // "no" 파라미터를 정수로 변환하여 사용
						%>
						
						<c:set value="<%=boardVO %>" var="board"/>
					    <table class="table table-bordered" style="width: 50%;">
					        <tr>
					            <td style="width: 15%;">제목</td>
					            <td colspan="5">${board.title}</td>
					        </tr>
					        <tr>
							    <td colspan="2" style="border: 1px solid #dee2e6; width: 100%; letter-spacing: 2px;">
							    	${board.writer} | ${board.regDate} | ${board.hit}
							    </td>
					        </tr>
					        <tr>
					            <td style="width: 15%;">내용</td>
					            <td><c:out value="${board.content}" /></td>
					        </tr>
					        <tr>
					            <td style="width: 25%;">첨부파일</td>
					            <td>
						            <c:choose>
						                <c:when test="${not empty board.fileVO}">
						                    <a href="${pageContext.request.contextPath }/resources/images/${board.fileVO.fileName}" download="${boardVO.fileVO.fileName}">
						                        <c:out value="${board.fileVO.fileName}" />
						                    </a>
						                </c:when>
						                <c:otherwise>No file attached.</c:otherwise>
						            </c:choose>					            
					            </td>
					        </tr>
					    </table>
					
					    <a href="boardUpdateForm.jsp?no=<%= boardVO.getNo() %>" class="btn btn-primary">수정</a>
					    <a id="deleteButton" href="#" class="btn btn-danger">삭제</a>
					    <a href="boardList.jsp" class="btn btn-secondary">목록</a>
					</div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
	

	<script>
		$(function(){
			// 게시판 이동
			$("#deleteButton").click(function(){
				var result = confirm('정말로 삭제하시겠습니까?');
				if (result) {
					location.replace('boardRemove.jsp?no=' + <%= boardVO.getNo() %>);
				} else {
				    // 사용자가 취소 버튼을 눌렀을 경우, 아무 동작도 하지 않음
				};
			});
		});	
	</script>	
</body>
</html>