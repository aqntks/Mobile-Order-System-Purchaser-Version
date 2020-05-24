<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
	<div class="container">
<!--주문 내역 페이지-->
		<section id='basket_page' data-role='page'>
			<header data-role='header' data-position="fixed">
				<h1>주문 내역</h1>
			</header>
			<div class='content'>
<!--주문 내역-->

					<h4><a data-role="button">주문번호 : ${orderNumber}</a></h4>
				
				<ul data-role="listview" id="basketLists" data-inset="true">
					<c:forEach var="basket" items="${ baskets }">
						<li id="basketItem${basket.id} }">${ basket.menuName }<span
							class="ui-li-count">${ basket.count }</span>
						</li>
					</c:forEach>
				</ul>
				<h4>
					<a data-role="button">합계 : ${count}원</a>
				</h4>
			</div>
			<footer data-role='footer' data-position="fixed">
				<h4>
					<a data-role="button" href='purchaser_main'>홈으로</a>
				</h4>
			</footer>
		</section>
<!--홈버튼 액션시트-->
		<div data-role="dialog" id="homeActS2" data-position="fixed">
			<div data-role="content">
				정보가 초기화됩니다. </br> 처음 화면으로 돌아가시겠습니까? <a href="main" data-role="button">네</a>
				<a href="#basket_page" data-role="button">아니오</a>
			</div>
		</div>

	</div>
</body>
</html>
