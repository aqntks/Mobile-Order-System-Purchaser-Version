<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="R" value="/" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

<script type="text/javascript">

</script>
</head>
<body>
	<div class="container">
		<!--주문 페이지-->
		<section id="order_page" data-role="page">
			<header data-role="header" data-position="fixed">
				<h1>메뉴 주문</h1>
				<a href="#homeActS1" data-role="button" data-icon="home"
					data-iconpos="notext"></a>
				<!--처음으로-->
				<a href="#basketPanel" data-role="button" data-icon="shop"
					data-iconpos="notext"></a>
				<!--간편 장바구니 아이콘-->
			</header>
			<div data-role="content">

				<!--주문내역 패널-->
				<div data-role="panel" id="basketPanel" data-display="overlay"
					data-theme="b" data-position="right">
					<div class='content'>
						<ul data-role="listview">
							<li data-role="list-divider">음료</li>
							<li data-icon="minus"><a href="#">음료1<span
									class="ui-li-count">1</span></a></li>
							<li data-icon="minus"><a href="#">음료2<span
									class="ui-li-count">2</span></a></li>
							<li data-role="list-divider">디저트</li>
							<li data-icon="minus"><a href="#">디저트1<span
									class="ui-li-count">2</span></a></li>
							<li data-icon="minus"><a href="#">디저트2<span
									class="ui-li-count">1</span></a></li>
						</ul>
					</div>
					<h4>
						<a data-role="button" href='payment_page'>결제하기</a>
					</h4>
				</div>

				<!--메뉴 출력-->
				<ul data-role="listview" id="menuList" data-inset="true">
					<c:forEach var="menu" items="${ menus }">
						<li id="menuItem${menu.id} }"><a>
								<h3>${ menu.name }</h3>
								<p>${ menu.price }원</p>
						</a></li>
					</c:forEach>
				</ul>
			</div>

			<footer data-role="footer" data-position="fixed">
				<div data-role="navbar" data-iconpos="bottom">
					<ul>
						<li><a class="ui-btn-active ui-state-persist" href="#"
							data-icon="grid">메뉴</a></li>
						<li><a href='basket_page' data-icon="shop">장바구니</a></li>
					</ul>
				</div>
				<a
					class="ui-shadow ui-btn ui-corner-all ui-btn-inline ui-btn-b ui-mini"
					href="#">초기화</a> <a
					class="ui-shadow ui-btn ui-corner-all ui-btn-inline"
					href="payment_page">결제하기</a>
			</footer>
		</section>
		<!--홈버튼 액션시트-->
		<div data-role="dialog" id="homeActS1" data-position="fixed">
			<div data-role="content">
				정보가 초기화됩니다. </br> 처음 화면으로 돌아가시겠습니까? <a href="main" data-role="button">네</a>
				<a href="#order_page" data-role="button">아니오</a>
			</div>
		</div>
	</div>
</body>
</html>
