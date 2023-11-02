<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="kr.or.ddit.ch07.MemberVO"%>
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
							1. 회원가입 폼에서 넘겨받은 일반 데이터, 파일 데이터를 전달받아서 일반 데이터와 파일명을 저장하여
								회원 객체 하나를 저장 후, 회원 목록에 해당하는 리스트에 저장하여 목록 페이지에서 리스트 데이터를
								활용할 수 있도록 해주세요.
							2. 회원가입이 완료되면, ch07_test_signin.jsp로 이동하여 로그인을 진행할 수 있도록 해주세요.
						 -->
						<%
							request.setCharacterEncoding("UTF-8");

		               	 	String id = "";
		               	 	String pw = "";
		               	 	String name = "";
	                		String gender = "";
	                		
	
							MemberDAO dao = MemberDAO.getInstance();
	
							MemberVO member = new MemberVO();

							
                    		// 폼 페이지에서 전송된 파일을 저장할 서버의 경로를 작성
                    		String fileUploadPath = request.getServletContext().getRealPath("upload");
                    		
                    		File file = new File(fileUploadPath);
                    		if(!file.exists()) {	// 설정한 경로에 폴더가 없으면
                    			file.mkdirs();		// 폴더를 만들어주세요.
                    		}
							
                    		DiskFileUpload upload = new DiskFileUpload();
                    		
                    		// 서버로 넘어온 파일에 대한 설정
                    		upload.setSizeMax(5 * 1024 * 1024);			// 업로드 할 파일의 최대 크기(byte)
                    		upload.setSizeThreshold(4 * 1024 * 1024);	// 메모리상에 저장할 최대 크기(byte)
                    		upload.setRepositoryPath(fileUploadPath);	// 업로드된 파일을 임시로 저장할 경로
                    		
                    		List items = upload.parseRequest(request);
                    		
                    		Iterator params = items.iterator();
                    		
							int maxSize = 4 * 1024 * 1024;		// 파일 업로드 시 1개의 파일 당 사이즈(최대사이즈)
							while(params.hasNext()) {
								FileItem fileItem = (FileItem)params.next();
								
								if(fileItem.isFormField()) {	// 일반 데이터일 때
									String names = fileItem.getFieldName();		// 파라미터의 이름
									String value = fileItem.getString("UTF-8");	// 파라미터의 값
									//out.println(names + " = "  + value + "<br/>");
									if ("id".equals(names)) {
							            id = value;
							        } else if ("pw".equals(names)) {
							            pw = value;
							        } else if ("name".equals(names)) {
							            name = value;
							        } else if ("gender".equals(names)) {
							            if ("m".equals(value)) {
							                gender = "남자";
							            } else if ("f".equals(value)) {
							                gender = "여자";
							            }
							        }

								} else {						// 파일 데이터일 때
									String fileName = fileItem.getName();				// 파일명
									long fileSize = fileItem.getSize();					// 파일크기
									
									File newFile =new File(fileUploadPath + "/" + fileName);
									
									// 최대크기를 넘어버림(최대사이즈보다 큰 파일이 업로드됨)
									if(maxSize < fileSize) {
										out.println("파일 크기를 초과하였습니다!<br/>");
									} else {
										fileItem.write(newFile);		// 파일 복사
									}
									
									member.setMem_id(id);
									member.setMem_pw(pw);
									member.setMem_name(name);
									member.setMem_sex(gender);
									member.setFilename(fileName);
									//out.println(member.toString());
									dao.insertMember(member);
								}
							}
                    		
						%>
					</div>
                </div>
            </div>
        </div>
    </section>
	<script>
	    var id = '<%=id%>';
	    alert(id + '님 회원가입 완료되었습니다.');
	    location.href = 'ch07_test_signin.jsp';
	</script>

    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>

</body>
</html>