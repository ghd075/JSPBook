<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
     					 <h5>두번째 방법(Map과 JSTL을 이용하여)</h5> 
                  	     <%
                  	   		List<String> list = new ArrayList<String>();
                  	   		String[] names = {"유재석","홍길동","홍길순","정형돈","하동훈","정준하","길성준","박명수","노홍철"};
                  	   		
                  	     	for(int i = 0; i < names.length; i++) {
                  	     		list.add(names[i]);
                  	     	}
                  	     	
                  	     	Map<String, Integer> map = new HashMap<>();
                  		 %>
						<!-- 성을 key로 성에 따른 카운트 값을 value로 설정할 map 셋팅 -->
						<c:set value="<%=map %>" var="map"/>
						
						<!-- list안에 들어있는 이름들 전부 출력 -->
						<c:forEach items="<%=list %>" var="item">
							<c:out value="${item }"/>&nbsp;
						</c:forEach>
						<br/><hr/>
                  		 
                  		 <!-- 
                  		 	list의 이름을 하나씩 꺼내서 substring 함수를 이용하여 성을 만든 후,
                  		 	map의 키로 넘어 값이 있는지 여부를 체크한다.
                  		 	값이 없으면 map의 성을 키로 값은 1로 초기 셋팅한다.
                  		 	여부를 체크 후 값이 있으면 해당 성을 키로, 해당 성의 값의 +1한 값을 추가로 넣는다.
                  		  -->
						<c:forEach items="<%=list %>" var="item">
							<c:choose>
								<c:when test="${map.get(fn:substring(item,0,1)) == null }">
									<c:out value="${map.put(fn:substring(item,0,1), 1) }"/>
								</c:when>
								<c:otherwise>
									<c:out value="${map.put(fn:substring(item,0,1), map.get(fn:substring(item,0,1)) + 1) }"/>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<br/>
                  		  
                  		  <c:forEach items="<%=map.keySet() %>" var="item">
                  		  	<c:out value="'${item}'씨 성을 가진 사람 수 : ${map.get(item) }명" /><br/>
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