<%@page import="java.util.Enumeration"%>
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
                    	<table>
                    		<tr>
                    			<th>요청 파라미터 이름</th>
                    			<th>요청 파라미터 값</th>
                    		</tr>
                    	<%
                    		request.setCharacterEncoding("UTF-8");
                    	
                    		// getParameterNames()
                    		// 모든 입력 양식의 요청 파라미터 이름을 순서에 상관없이 Enumeration(열거형) 형태로 전달받음
                    		Enumeration en = request.getParameterNames();
                    		// hasMoreElements()
                    		// Enumeration(열거형) 요소가 있으면 true를 반환하고, 그렇지 않으면 false를 반환
                    		// 전송된 요청 파라미터가 없을 때까지 반복
       						while(en.hasMoreElements()) {
       							// nextElement()
       							// Enumeration(열거형) 요소를 반환함
       							// 폼 페이지에서 전송된 요청 파라미터의 이름을 가져옴
       							String name = (String) en.nextElement();
       							out.println("<tr><td>" + name + "</td>\n");
       							
       							// 폼 페이지에서 전송된 요청 파라미터 값을 얻어옴
       							String value = request.getParameter(name);
       							if(name.equals("hobby")) {
       								value = "";
       								String[] hobbyArr = request.getParameterValues(name);
       								for(int i = 0; i < hobbyArr.length; i++) {
       									value += hobbyArr[i] + " ";
       								}
       							}
       							out.println("<td>" + value + "</td></tr>\n");		
       						}
                    	%>
                    	</table>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>
</body>

</html>