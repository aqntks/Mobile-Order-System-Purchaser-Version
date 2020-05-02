<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<!--주문 페이지-->
		<section id="order_page" data-role="page">
			<header data-role="header" data-position="fixed">
				<h1>메뉴 주문</h1>
<!--처음으로-->
				<a href="#homeActS1" data-role="button" data-icon="home"
					data-iconpos="notext"></a>
<!--간편 장바구니 아이콘-->
				<a href="#basketPanel" data-role="button" data-icon="shop"
					data-iconpos="notext"></a>
			</header>
			<div data-role="content">
<!--주문내역 패널(미완성)-->
				<div data-role="panel" id="basketPanel" data-display="overlay"
					data-theme="b" data-position="right">
					<div class='content'>
						<ul data-role="listview" id="basketLists" data-inset="true">
							<li data-role="list-divider">음료</li>
							<c:forEach var="basket" items="${ baskets }">
								<li data-icon="minus" id="basketItem${basket.id} }"><a
									href="#">${ basket.menuName }
										<span class="ui-li-count">${ basket.count }</span>
								</a></li>
							</c:forEach>
							<li data-role="list-divider">디저트</li>
						</ul>
					</div>
						<h4>
							<a data-role="button">합계 : ${count}원</a>
						</h4>
						<h4>
							<a data-role="button" href='payment_page'>결제하기</a>
						</h4>
				</div>
<!--메뉴 출력-->
				<ul data-role="listview" id="menuList" data-inset="true">
					<c:forEach var="menu" items="${ menus }">
						<li id="menuItem${menu.id} }"><form:form method="post"
								action="basketInsert" modelAttribute="basket">
								<button type="submit" class="btn btn-primary">
									<h3>${ menu.name }</h3>
									<p>${ menu.price }원</p>
									<input type="hidden" name="menuName" value="${ menu.name }"></input>
									<input type="hidden" name="menuPrice" value="${ menu.price }"></input>
									<input type="hidden" name="count" value="1"></input>
								</button>
							</form:form></li>
					</c:forEach>
				</ul>
			</div>
			<footer data-role="footer" data-position="fixed">
				<div data-role="navbar" data-iconpos="bottom">
					<ul>
						<li><a class="ui-btn-active ui-state-persist" href="order_page"
							data-icon="grid">메뉴</a></li>
						<li><a href='basket_page' data-icon="shop">장바구니</a></li>
					</ul>
				</div>
				<h4>
					<a data-role="button" href='payment_page'>결제하기</a>
				</h4>
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