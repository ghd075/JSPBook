<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
                        <h1 class="page-title">JSP 표준 태그 라이브러리</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH17</li>
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
     						문제) 306호 학생들의 각 성씨에 따른 인원수는 각각 몇명인지 작성해주세요.
     						
     						[출력예시]
     						'김'씨 성을 가진 사람 : 00명
     						'박'씨 성을 가진 사람 : 00명
     						'이'씨 성을 가진 사람 : 00명
     						...
     						...
     						
     						JSTL을 적극 활용하여 문제를 풀어주세요!
     					 --> 
                  	     <%
                  	     	String[] names = {
                  	     			"유재석", "박명수", "하동훈", "정준하",
                  	     			"조현준", "홍길동", "홍길순", "정형돈",
                  	     			"노홍철", "길성준", "조세호", "남창희",
                  	     			"김용명", "이용진"
                  	     	};
                  	     	List<String> nameList = new ArrayList<String>();
                  	     	for(int i = 0; i < names.length; i++) {
                  	     		nameList.add(names[i]);
                  	     	}
                  	     	out.println("306호 전체 인원<br/>");
                  	     	out.println(Arrays.toString(names));
                  		 %>
                  		<br/>
                  		<font color="red">306호 학생들의 각 성씨에 따른 인원수는 각각 몇명인지 작성해주세요.</font><br/>
                  		<c:set value="<%=nameList %>" var="names" />
                  		<c:set var="firstNames" value="" />
                  		
                  		<c:forEach items="${names }" var="name">
                  			<c:set var="text" value="${name }" />
                  			<c:set var="first" value="${fn:substring(text, 0, 1)}" />
                  			<c:if test="${fn:contains(firstNames, first) eq false}">
	                  			<c:set var="count" value="0" />
	                  			
	                  			<c:forEach items="${names }" var="firstName">
							        <c:if test="${fn:startsWith(firstName, first)}">
							            <c:set var="count" value="${count + 1}" />
							        </c:if>
	                  			</c:forEach>
								<c:if test = "${fn:contains(text, first)}">
									'${first}'씨 성을 가진 사람: ${count}명<br/>
								</c:if>
								<c:set var="firstNames" value="${firstNames}${first}" />
                  			</c:if>
                    	</c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>
</body>

</html>