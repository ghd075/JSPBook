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
							1. 게시판 등록 페이지를 작성해주세요.
							
							[출력 예]
							
							게시글 등록
							─────────────────────────────
							제목 : 
							작성자 : 
							내용 :
							─────────────────────────────
							첨부파일 : [파일 선택 ]
							─────────────────────────────
							[ 등록  ] [ 목록  ]
							
							2. 등록 버튼 클릭 시, 게시글 등록(boardInsert.jsp)을 진행해주세요.
							3. 목록 버튼 클릭 시, 게시판 목록 페이지(boardList.jsp)로 이동해주세요
						
						 -->
						 <%
							 // 세션에서 "userId" 속성(세션에 저장된 사용자 ID)을 얻어옵니다.
							 String userId = (String) session.getAttribute("userId");
						 %>
						<h3>게시글 등록</h3>
						<hr /><br />
						<div class="container">
						    <form id="boardForm" name="boardForm" action="boardInsert.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
						        <div class="form-group row">
						            <label class="col-sm-2">제목</label>
						            <div class="col-sm-5">
						                <input type="text" name="title" id="title" class="form-control">
						            </div>
						        </div>
						        <div class="form-group row mt-3">
						            <div class="col-sm-5">
						                <input type="hidden" id="writer" name="writer" class="form-control" value="<%= userId %>">
						            </div>
						        </div>
						        <div class="form-group row mt-3">
						            <label class="col-sm-2">내용</label>
						            <div class="col-sm-8">
						                <textarea id="content" name="content" cols="50" rows="2" class="form-control"></textarea>
						            </div>
						        </div>
						        <div class="form-group row mt-3">
						            <label class="col-sm-2">이미지</label>
						            <div class="col-sm-5">
						                <input type="file" name="file" id="file" class="form-control">
						            </div>
						        </div>
						        <div class="form-group row mt-3">
						            <div class="col-sm-offset-2 col-sm-10">
						                <input id="boardInsBtn" type="button" class="btn btn-primary" value="등록">
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
	<script type="text/javascript">
		$(function(){
			// 게시글 등록 처리 이동 겸 validation 처리
			$("#boardInsBtn").click(function(){
				var titleVal = $("#title").val();
				var contentVal = $("#content").val();
				var fileVal = $("#file").val();
				var writerVal = $("#writer").val();
				var boardForm = $("#boardForm");
				
				if(!titleVal) {
					alert("게시글 제목을 입력해 주세요.");
					$("#title").focus();
					return false;
				}
				if(!contentVal) {
					alert("게시글 내용을 입력해 주세요.");
					$("#content").focus();
					return false;
				}
				//console.log("fileVal : " + fileVal);
				if(!fileVal) {
					alert("파일을 넣어 주세요.");
					$("#content").focus();
					return false;
				}
				
				boardForm.submit();
			});	
		});
	</script>
</body>
</html>