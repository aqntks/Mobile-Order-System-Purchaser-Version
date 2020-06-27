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
	
<link rel="stylesheet"
	href="greenTheme.min.css"/>
<link rel="stylesheet"
	href="jquery.mobile.icon.min.css"/>
</head>
<body>
	<div class="container">
<!--장바구니 페이지-->
		<section id='basket_page' data-role='page'>
			<header data-role='header' data-position="fixed">
				<h1>장바구니</h1>
<!--처음으로-->
				<a href="order_page" data-role="button" data-icon="arrow-l"
					data-iconpos="notext"></a> <a href="#homeActS2" data-role="button"
					data-icon="home" data-iconpos="notext"></a>
			</header>
			<div class='content'>
<!--장바구니 내역-->
				<ul data-role="listview" id="basketLists" data-inset="true">
					<li data-role="list-divider">음료</li>
					<c:forEach var="basket" items="${ baskets }">
						<li data-icon="minus" id="basketItem${basket.id} }"><a href="basketDelete?id=${ basket.id }">${ basket.menuName }
								<span class="ui-li-count">${ basket.count }</span>
						</a></li>
					</c:forEach>
					<li data-role="list-divider">디저트</li>
				</ul>
				
					<h4><a data-role="button">합계 : ${count}원</a></h4>
						
			</div>
			<footer data-role='footer' data-position="fixed">
				<div data-role="navbar" data-iconpos="bottom">
					<ul>
						<li><a href="order_page" data-icon="grid">메뉴</a></li>
						<li><a class="ui-btn-active ui-state-persist"
							href='basket_page' data-icon="shop">장바구니</a></li>
					</ul>
				</div>
				<h4>
					<a data-role="button" href='payment_page'>결제하기</a>
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
