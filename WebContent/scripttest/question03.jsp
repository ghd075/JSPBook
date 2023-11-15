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
						<div class="card">
							<div class="card-body">
								<p class="card-title text-info">DAEDEOK COFFEE MENU</p>
								
								<div class="row">
									<div class="col-md-4 grid-margin grid-margin-md-0 stretch-card">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">COFFEE & ESPRESSO</h4>
												<ul class="list-ticked">
													<li>
														스타벅스 돌체 라떼 <code class="text-primary">5600</code>원
													</li>
													<li>
														화이트 초콜릿 라떼 <code class="text-primary">5600</code>원
													</li>
													<li>
														카라멜 마끼아또 <code class="text-primary">5600</code>원
													</li>
													<li>
														볼론드 에스프레소 라떼 <code class="text-primary">5600</code>원
													</li>
													<li>
														카페 모카 <code class="text-primary">5100</code>원
													</li>
													<li>
														카푸 치노 <code class="text-primary">4600</code>원
													</li>
													<li>
														카페 라떼 <code class="text-primary">4600</code>원
													</li>
													<li>
														오늘의 커피 <code class="text-primary">3800</code>원
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-md-4 grid-margin grid-margin-md-0 stretch-card">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">TEAVANA</h4>
												<ul class="list-arrow">
													<li>
														제주 유기농 말차로 만든 라떼 <code class="text-primary">6100</code>원
													</li>
													<li>
														유자 민트 티 <code class="text-primary">5600</code>원
													</li>
													<li>
														라임 패션 티 <code class="text-primary">5600</code>원
													</li>
													<li>
														자몽 허니 블랙 티 <code class="text-primary">5100</code>원
													</li>
													<li>
														차이 티 라떼 <code class="text-primary">5100</code>원
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-md-4 grid-margin grid-margin-md-0 stretch-card">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">DAEDEOK FIZZIO</h4>
												<ul class="list-star">
													<li>
														요거트 주스 & 망고 젤리 피지오 <code class="text-primary">6100</code>원
													</li>
													<li>
														쿨 라임 피지오 <code class="text-primary">6600</code>원
													</li>
													<li>
														패션 망고 티 레모네이드 피지오 <code class="text-primary">7100</code>원
													</li>
													<li>
														그린 티 레모네이드 피지오 <code class="text-primary">7100</code>원
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-8 grid-margin grid-margin-md-0 stretch-card">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">주문 진행표</h4>
												<div class="table-responsive">
													<table class="table table-bordered text-center" width="100%">
														<tr height="100px">
															<td width="20%">
																<p data-menu="돌체 라떼">
																돌체 라떼<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="화이트 초콜릿 라떼">
																화이트<br/>
																초콜릿 라떼<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="카라멜 마끼아또">
																카라멜<br/>
																마끼아또<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="볼론드 에스프레소 라떼">
																볼론드<br/>
																에스프레소 라떼<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="카페모카">
																카페모카<br/>
																</p>
																<code class="text-primary">5100</code>
															</td>
														</tr>
														<tr height="100px">
															<td width="20%">
																<p data-menu="카푸치노">
																카푸치노<br/>
																</p>
																<code class="text-primary">4600</code>
															</td>
															<td width="20%">
																<p data-menu="카페 라떼">
																카페 라떼<br/>
																</p>
																<code class="text-primary">4600</code>
															</td>
															<td width="20%">
																<p data-menu="오늘의 커피">
																오늘의 커피<br/>
																</p>
																<code class="text-primary">3800</code>
															</td>
															<td width="20%">
															</td>
															<td width="20%">
															</td>
														</tr>
														<tr height="100px">
															<td width="20%">
																<p data-menu="제주 유기농 말차로 만든 라떼">
																제주 유기농<br/>
																말차로<br/>
																만든 라떼<br/>
																</p>
																<code class="text-primary">6100</code>
															</td>
															<td width="20%">
																<p data-menu="유자민트 티">
																유자<br/>
																민트 티<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="라임 패션 티">
																라임<br/>
																패션 티<br/>
																</p>
																<code class="text-primary">5600</code>
															</td>
															<td width="20%">
																<p data-menu="자몽 허니 블랙 티">
																자몽 허니<br/>
																블랙 티<br/>
																</p>
																<code class="text-primary">5100</code>
															</td>
															<td width="20%">
																<p data-menu="차이 티 라떼">
																차이<br/>
																티 라떼<br/>
																</p>
																<code class="text-primary">5100</code>
															</td>
														</tr>
														<tr height="100px">
															<td width="20%">
																<p data-menu="망고 젤리 피지오">
																망고 젤리<br/>
																피지오<br/>
																</p>
																<code class="text-primary">6100</code>
															</td>
															<td width="20%">
																<p  data-menu="쿨 라임 피지오">
																쿨<br/>
																라임 피지오<br/>
																</p>
																<code class="text-primary">6600</code>
															</td>
															<td width="20%">
																<p data-menu="레모네이드 피지오">
																레모네이드<br/>
																피지오<br/>
																</p>
																<code class="text-primary">7100</code>
															</td>
															<td width="20%">
																<p data-menu="그린티 피지오">
																그린 티<br/>
																피지오<br/>
																</p>
																<code class="text-primary">7100</code>
															</td>
															<td width="20%">
															</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 grid-margin grid-margin-md-0">
										<div class="card">
											<div class="card-body">
												<h4 class="card-title">주문 내역</h4>
												<br/>
												<h6 id="ord-id">A-001</h6>
												<div class="table-responsive">
													<table class="table table-bordered text-center" width="100%" >
														<thead>
															<tr style='font-size:9px;'>
																<th>메뉴명</th>
																<th>수량</th>
																<th>금액</th>
															</tr>
														</thead>
														<tbody id="order-table">
														
														</tbody>
													</table>
												</div>
												<div>
													<h5>총 금액 : <font id="total"></font></h5>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
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
	$(function(){
	    // 선택한 메뉴 아이템을 저장하는 배열
	    var selectedItems = [];
	
	    // 메뉴를 클릭했을 때의 이벤트 핸들러
	    $('table.table-bordered p').click(function () {
	        var menuName = $(this).data('menu');		
	        var price = $(this).next('code').text();
	        
	        console.log('선택한 메뉴 명  : ', menuName, ", 가격 : ", price);
	
	        // 선택한 메뉴가 이미 주문 목록에 있는지 확인
	        var existingItem = selectedItems.find(function (item) {
	            return item.menu === menuName;
	        });
	
	        if (existingItem) {
	            // 이미 선택한 메뉴라면 수량 증가
	            existingItem.quantity++;
	        } else {
	            // 새로운 메뉴라면 배열에 추가
	            selectedItems.push({
	                menu: menuName,
	                price: parseInt(price),
	                quantity: 1
	            });
	        }
	
	        // 주문 테이블 업데이트
	        updateOrderTable();
	        
	        /*
	        Array.reduce(function(acc , cur, idx, arr){
				    // acc(누적변수) = return처리로 값을 누적시킬 수 있는데 이때 return처리되는 값의 누적값
				    // cur = 현재 루프 돌고 있는 값
				    // idx = 현재 루프 돌고 있는 배열위치
				    // arr = 전체 배열
				    
				    // return 처리를 할 경우 값이 acc에 값이 누적됨
				}, value);	
	        */
	        // 총 금액 계산(total값은 초깃값이 0부터 시작, 배열의 마지막 요소까지 반복 후 최종 값을 리턴함)
            var totalAmount = selectedItems.reduce(function (total, item) {
                return total + item.price * item.quantity;
            }, 0);
			
	        console.log('총 금액  : ', totalAmount);
	        
	        // 총 금액 표시(천단위로 콤마 찍기)
	        // toLocaleString은 말 그대로 특정 자료가 들어왔을 때 설정해놓은 지역에서 읽는 형태로 바꿔는 함수
	        $('#total').text(totalAmount.toLocaleString('ko-KR'));
	    });
	
	    // 주문 테이블을 업데이트하는 함수
	    function updateOrderTable() {
	        // 값을 비어주고
	        $('#order-table').empty();
	
	        // 선택한 각 항목에 대한 행 추가
	        selectedItems.forEach(function (item) {
	            var totalPrice = item.price * item.quantity;	// 금액 저장
	            
	            console.log('금액  : ', totalPrice);
	            $('#order-table').append('<tr><td>' + item.menu + '</td><td>' + item.quantity + '</td><td>' + totalPrice.toLocaleString('ko-KR') + '</td></tr>');
	        });
	    }
	});
</script>
</html>