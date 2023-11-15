<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                        <h1 class="page-title">JSP 개요</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="/">INDEX</a></li>
                        <li>CH01</li>
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
							<table class="table table-bordered" style="text-align:center; font-size:24px;">
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
									<td></td>
									<td>신찬섭</td>
									<td>서강민</td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</table>
							<hr/>
							<div class="progress" style="height: 40px;">
								<div class="progress-bar progress-bar-striped" id="myBar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 1px; height: 40px;">
									<span class="sr-only">60% Complete</span>
								</div>
							</div>
							<br/>
							<h4 id="txt"></h4>
							<button type="button" onclick="SeatMoveEvent()" style="padding:12px;border:none;cursor:pointer;">출력</button>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<%@ include file="/pageModule/footer.jsp" %>

	<%@ include file="/pageModule/footerPart.jsp" %>
</body>
	<script type="text/javascript">
		// 학생 랜덤 추첨기
		var myArray = ["김지호", "홍창용", "김선욱", "김영진", "이건정", "최룡", "강민택", "강진석", "장낙훈", "최성동", "한동욱", "송시운", "김민채",
			"정소현", "최예원", "박상협", "전승표", "민지현", "하지웅", "신찬섭", "서강민"];
		var cnt = 0;		// myArray에서 이름을 꺼낼 때 사용하는 index 변수
		var seat = 0;		// show를 위한 index(td에 index를 배정할 때 사용) 변수
		
	    // 학생들 선정을 위한 setInterval 이벤트를 활용
	    // # 랜덤 이벤트 설정
	    // - Math.floor(Math.random() * 원하는 숫자 범위);	0 ~ 원하는 범위 -1
	    function SeatMoveEvent() {
	    	var elem = document.getElementById("myBar");
	    	var width = 0;
	    	var seatMove = setInterval(move, 100);
	    	
	    	function move() {
	    		$("td").css("background-color", "white");		// 처음에 선택된 td 자리를 흰색으로 초기화
	    		if(width >= 100) {	// progressbar가 100%dlf Eo
	    			cnt = Math.floor(Math.random() * 22);		// 0 ~ 21 학생 수
	    			
	    			$("#txt").html(myArray[cnt]);		// 결과 출력
	    			var tds = document.getElementsByTagName("td");
	    			for(var j = 0; j < tds.length; j++) {
	    				if(tds[j].innerText == myArray[cnt]) {				// 테이블 td의 이름과 이름 집합 배열의 이름이 같을 때
	    					tds[j].style.backgroundColor = "yellow";		// 최종 선택된 학생의 이름에 노란색 배치
	    				}
	    			}
	    			
	    			clearInterval(seatMove);		// interval 이벤트가 종료
	    		} else {	// 결과를 꾸미기 까지의 show
	    			seat = Math.floor(Math.random() * 36);			// 0 ~ 35 자리 수
	    			
	    			$("td:eq(" + seat +")").css("background-color", "yellow");
	    			
	    			width++;		// 프로그레스바 증가
	    			elem.style.width = width + "%";
	    			elem.innerHTML = width + "%";
	    			
	    			// 프로그레스바 진행률에 따른 결과 출력
	    			if(width == 10) {
	    				$("#txt").html("학생을 랜덤으로 셋팅중입니다!!!");
	    			}
	    			
	    			if(width == 20) {
	    				$("#txt").html("학생을 선정중입니다!!!");
	    			}
	    			
	    			if(width == 30) {
	    				$("#txt").html("학생을 출력중입니다!!!");
	    			}
	    			
	    			if(width == 80) {
	    				$("#txt").html("학생이 곧 출력됩니다!!!");
	    			}
	    			
	    		}
	    	}
	    }
	</script>
</html>