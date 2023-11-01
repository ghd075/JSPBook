<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
                    		아이디 : a001
                    		비밀번호 : 12345
                    		이름 : 홍길동
                    		연락처 : 010-1234-1234
                    		성별 : 남자
                    		취미 : 운동 독서 영화 여행
                    		소개 : 안녕하세요! 반갑습니다!
                    		저는 홍길동이라고 합니다. 
                    	 -->
                    	 <%
                 			request.setCharacterEncoding("UTF-8");
                     	
	                 		String id = request.getParameter("id");
	                 		String pw = request.getParameter("pw");
	                 		String name = request.getParameter("name");
	                 		String gender = request.getParameter("gender");
	                 		String phone1 = request.getParameter("phone1");
	                 		String phone2 = request.getParameter("phone2");
	                 		String phone3 = request.getParameter("phone3");
	                 		String[] hobby = request.getParameterValues("hobby");
	                 		String comment = request.getParameter("comment");
                    	 %>
                	    <c:set value="<%=id %>" var="mem_id" />
                    	<c:set value="<%=pw %>" var="mem_pw" />
                    	<c:set value="<%=name %>" var="mem_name" />
                    	<c:set value="<%=gender %>" var="mem_gender" />
                    	<c:set value="<%=phone1 %>" var="mem_phon1" />
                    	<c:set value="<%=phone2 %>" var="mem_phon2" />
                    	<c:set value="<%=phone3 %>" var="mem_phon3" />
                    	<c:set value="<%=hobby %>" var="mem_hobby" />
                    	<c:set value="<%=comment %>" var="mem_comment" />
                    	 
                    	아이디 : <c:out value="${mem_id }"/> <br/>
                    	비밀번호 : <c:out value="${mem_pw }"/> <br/>                   	
                    	이름 : <c:out value="${mem_name }"/> <br/>                   	
                    	연락처 : <c:out value="${mem_phon1 }"/> - <c:out value="${mem_phon2 }"/> - <c:out value="${mem_phon3 }"/> <br/>                   	
                    	성별 :
                    	<c:if test="${mem_gender ne null }">
	                    	<c:if test="${mem_gender eq 'M' }">
	                    		<c:out value="남성"/>
	                    	</c:if>
	                    	<c:if test="${mem_gender eq 'G' }">
	                    		<c:out value="여성"/>
	                    	</c:if> 
                    	</c:if> 
                    	<br/>
                    	<p>취미 : 
                    		<c:if test="${mem_hobby ne null }">
                    			<c:forEach var="hobbArr" items="${mem_hobby}">
                    				<c:choose>
                    					<c:when test="${hobbArr eq 'book'}">
                    						<c:set value="독서" var="hobbyA" />
                    					</c:when>
                    					<c:when test="${hobbArr eq 'power'}">
                    						<c:set value="운동" var="hobbyA" />
                    					</c:when>
                    					<c:when test="${hobbArr eq 'movie'}">
                    						<c:set value="영화" var="hobbyA" />
                    					</c:when>
                    					<c:when test="${hobbArr eq 'music'}">
                    						<c:set value="음악" var="hobbyA" />
                    					</c:when>
                    					<c:when test="${hobbArr eq 'trip'}">
                    						<c:set value="여행" var="hobbyA" />
                    					</c:when>
                    				</c:choose>
                    				<c:out value="${hobbyA }" escapeXml="falase"/>
                    			</c:forEach>
                    		</c:if>
                    	</p>                    	                   	
                    	<p style="white-space: pre-wrap;">가입인사 : <c:out value="${mem_comment}"/> </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>
</body>

</html>