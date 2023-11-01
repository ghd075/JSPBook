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

    <!-- Preloader -->
    <div class="preloader">
        <div class="preloader-inner">
            <div class="preloader-icon">
                <span></span>
                <span></span>
            </div>
        </div>
    </div>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">폼 태그</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH06</li>
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
                    	<form method="post">
                    		아이디 : 	<input type="text" id="id" name="id" />
                    			   	<input type="button" value="중복확인" /><br/>
                    		비밀번호 : <input type="text" id="pw" name="pw" /><br/>
                    		이름 : 	<input type="text" id="name" name="name" /><br/>
                    		연락처 : 	<input type="text" id="phon1" name="phone1" maxlength="3" size="3"/>-
                    				<input type="text" id="phon2" name="phone2" maxlength="4" size="4"/>-
                    				<input type="text" id="phon3" name="phone3" maxlength="4" size="4"/><br/>
                    		성별 :	<input type="radio" id="genderM" name="gender" value="M"/> 남자&nbsp;
                    				<input type="radio" id="genderG" name="gender" value="G"/> 여자<br/>
                    		취미 :	<input type="checkbox" id="hobby1" name="hobby1" /> 독서&nbsp;
                    				<input type="checkbox" id="hobby2" name="hobby2" /> 운동&nbsp;
                    				<input type="checkbox" id="hobby3" name="hobby3" /> 영화&nbsp;<br/>
                    		<input type="submit" value="전송"/>
                    		<input type="reset" value="리셋"/>
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