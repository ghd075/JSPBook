<%@page import="kr.or.ddit.ch07.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.ddit.ch07.MemberDAO"%>
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
    <style>
		.img-thumbnail {
		    width: 250px;  
		    height: 250px; 
		}
    </style>    
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
							1. 로그인 성공 후, 넘어왔을때 'a001님! 환영합니다!' 메세지 출력을 완성해주세요.
								- 이때 a001은 로그인 시 사용한 아이디입니다
							2. 회원 목록에 저장되어있는 회원 모두를 출력해주세요.
							
								[로그아웃]
								───────────────────────────────────────────────────
									이미지	|		회원정보		|		버튼
								───────────────────────────────────────────────────
											|	아이디 : a001		|	
									이미지	|	비밀번호 : 1234	|	[상세정보]
											|	이름 : 홍길동		|	
											|	성별 : 남자		|
								───────────────────────────────────────────────────
								...
								...
								
							3. 회원등록 버튼을 클릭 시, 회원 가입 페이지로 이동하여 회원 등록을 진행할 수 있도록 해주세요.
									 
						 -->
						<%
							MemberDAO dao = MemberDAO.getInstance();
							ArrayList<MemberVO> listOfMembers = dao.getMemberList();
						%>
						<h3>회원목록</h3>
						 <hr/>
						 <br/><br/>
						 <button onclick="Logout();">로그아웃</button>
						 <table class="table table-bordered">
				            <thead>
				                <tr>
				                    <th>이미지</th>
				                    <th>회원정보</th>
				                    <th>버튼</th>
				                </tr>
				            </thead>
				            <tbody>
								<%
									for(int i = 0; i < listOfMembers.size(); i++) {
										MemberVO member = listOfMembers.get(i);
								%>
								<tr>
									<td>
										<img
											src="${pageContext.request.contextPath}/upload/<%=member.getFilename() %>"
											alt="회원 이미지" class="img-thumbnail">
									</td>
									<td>
				                        <p>아이디 : <%=member.getMem_id() %></p>
				                        <p>아이디 : <%=member.getMem_pw() %></p>
				                        <p>이름 : <%=member.getMem_name() %></p>
				                        <p>성별 : <%=member.getMem_sex() %></p>
				                    </td>
				                    <td>
				                        <div class="text-center">
				                            <a href="상세정보 페이지 URL">상세정보</a>
				                        </div>
				                    </td>
				                </tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
                </div>
            </div>
        </div>
    </section>
    
    <script type="text/javascript">

	   function Logout(){
		   sessionStorage.removeItem("member_id");
		   location.href = "ch07_test_signin.jsp";
	   }

	</script>
    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>
</body>
</html>