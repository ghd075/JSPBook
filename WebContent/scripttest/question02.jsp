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
    <%@ include file="/pageModule/header.jsp" %>

    <div class="breadcrumbs" style="padding-top:40px;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Script Test</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>01</li>
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
                   		<div class="table-responsive">
							<caption>앞(SEM PC 자리)</caption>
							<table class="table table-bordered" width="100%" style="text-align:center; font-size:24px;">
								<tr width="100%" height="80px">
									<td width="10%">김지호</td>
									<td width="10%">홍창용</td>
									<td width="10%">김선욱</td>
									<td width="10%">김영진</td>
									<td width="20%"></td>
									<td width="10%">이건정</td>
									<td width="10%">최룡</td>
									<td width="10%">강민택</td>
									<td width="10%">강진석</td>
								</tr>
								<tr height="80px">
									<td>장낙훈</td>
									<td>최성동</td>
									<td>한동욱</td>
									<td>송시운</td>
									<td></td>
									<td>김민채</td>
									<td>정소현</td>
									<td>최예원</td>
									<td></td>
								</tr>
								<tr height="80px">
									<td>박상협</td>
									<td>전승표</td>
									<td>민지현</td>
									<td></td>
									<td></td>
									<td>전민균</td>
									<td>하지웅</td>
									<td></td>
									<td></td>
								</tr>
								<tr height="80px">
									<td></td>
									<td>조현준</td>
									<td>신찬섭</td>
									<td>서강민</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</table>
							<p id="process">진행 Process를 나타내주세요!</p>
						</div>
						<hr/><br/>
						
						<button type="button" id="clickBtn">출력</button>
						<div id="output"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="/pageModule/footer.jsp" %>

    <%@ include file="/pageModule/footerPart.jsp" %>
</body>
<script type="text/javascript">
	$(function(){
		let firstCell = null;
		var html = "";
		$("td").on("click", function(){ 
			console.log('선택된 값 : ', $(this));
			if(firstCell === null ) {
				firstCell = $(this);
			} else {
				let secondCell = $(this);
				
				// 교체를 위한 임시 변수 선언
				// 3개의 값을 체인지
				let temp = firstCell.html();
				firstCell.html(secondCell.html());
				secondCell.html(temp);
				
				// 결과 출력
				let outputText;
				// 두 값 중 하나라도 값이 있다면 true 없으면 false 반환
				let valueCheck = firstCell.text().trim() || secondCell.text().trim();
				
				// 둘 중 하나의 값만 비어있을 경우에 조건문 발동
	            if(valueCheck !== "" ) {
	            	outputText = valueCheck + "님 자리를 이동하셨습니다."		            	
	            }
	            
	            if(firstCell.text().trim() !== "" && secondCell.text().trim() !== ""){
					outputText = firstCell.text() + "님과 " + secondCell.text() + "님이 서로 변경되었습니다.";
	            }
				
	            console.log(outputText);

	            // 결과를 한 번만 출력
	            $("#process").text(outputText);
				firstCell = null;
			}
		});
		
		$("#clickBtn").on("click", function(){
			$('#output').empty();
			
			let cTable = $('.table-responsive').clone(true);
			
			cTable.find('td:contains("홍창용")').html('<marquee style="color: green;">홍창용</marquee>');
			console.log('복제한 요소 : ', cTable);
			$('#output').html(cTable);
		});
	});
</script>
</html>











