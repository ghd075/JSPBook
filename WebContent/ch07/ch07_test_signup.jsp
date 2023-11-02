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
							1. 아이디, 비밀번호, 이름, 성별, 프로필 이미지를 입력받고 회원가입을 진행해주세요.
							2. 회원가입 진행 경로는 ch07_test_signup_process.jsp로 이동하여  회원가입 처리를 진행해주세요.
							3. 뒤로가기 버튼을 생성하고, 뒤로가기 버튼을 클릭 시 다시 로그인 화면으로 나갈 수 있도록 해주세요.
						 -->
                     	<form action="ch07_test_signup_process.jsp" method="post" enctype="multipart/form-data">
                    		아이디 : <input type="text" name="id" id="id"/><br/>
                    		비밀번호 : <input type="text" name="pw" id="pw"/><br/>
                    		이름 : <input type="text" name="name" id="name"/><br/>
							성별 :
							<input type="radio" name="gender" value="m" checked>남자
							<input type="radio" name="gender" value="f">여자                    		
                    		<br/>
                    		프로필 이미지 : 
                    		<input type="file" name="filename" multiple="multiple" /> <br/>
                    		<input type="submit" value="전송">
                    		<input type="button" value="뒤로가기" onclick="goBack();">
                    	</form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>
    
    <script type="text/javascript">

	   function goBack(){
	      window.history.back();
	   }

	</script>
    
</body>
</html>