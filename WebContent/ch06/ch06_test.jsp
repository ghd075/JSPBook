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
                    	<!-- 
                    		아이디, 비밀번호, 이름, 연락처, 성별, 취미, 소개를 입력받는 폼을 작성해주세요.
                    		- 연락처는 selectbox를 활용해서 작성
                    		- 취미는 checkbox를 활용해서 작성
                    		- 소개는 textarea의 wrap 속성을 hard로 설정 후 활용
                    		
                    		입력받은 데이터는 모두 영문으로 설정합니다.
                    		- 성별, 취미 모두 영문 value로 설정
                    		- 성별 : 남자(M), 여자(G)
                    		- 취미 : 독서(book), 운동(power), 영화(movie), 음악(music), 여행(trip)
                    		
                    		ch06_test_process.jsp로 데이터를 전송 후 해당 페이지에서 마무리 해주세요.
                    	 -->
                    	<form method="post" action="ch06_test_process.jsp">
                    		아이디 : 	<input type="text" id="id" name="id" />
                    			   	<input type="button" value="중복확인" /><br/>
                    		비밀번호 : <input type="text" id="pw" name="pw" /><br/>
                    		이름 : 	<input type="text" id="name" name="name" /><br/>
                    		연락처 :	<select name="phone1">
                    					<option value="010">010</option>
                    					<option value="011">011</option>
                    					<option value="016">016</option>
                    					<option value="017">017</option>
                    					<option value="019">019</option>
                    				</select>
                    				-
                    				<input type="text" id="phon2" name="phone2" maxlength="4" size="4"/>-
                    				<input type="text" id="phon3" name="phone3" maxlength="4" size="4"/><br/>
                    		성별 :	<input type="radio" id="genderM" name="gender" value="M"/> 남성&nbsp;
                    				<input type="radio" id="genderG" name="gender" value="G"/> 여성<br/>
                    		취미 :	<input type="checkbox" id="hobby1" name="hobby" value="book"/> 독서&nbsp;
                    				<input type="checkbox" id="hobby2" name="hobby" value="power"/> 운동&nbsp;
                    				<input type="checkbox" id="hobby3" name="hobby" value="movie"/> 영화&nbsp;
                    				<input type="checkbox" id="hobby4" name="hobby" value="music"/> 음악&nbsp;
                    				<input type="checkbox" id="hobby5" name="hobby" value="trip"/>  여행&nbsp;<br/>
                    		<span style="vertical-align: top;">가입인사</span> : <textarea rows="20" cols="50" name="comment" wrap="hard" placeholder="가입 인사를 입력해주세요."></textarea>
                    		<br/>
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