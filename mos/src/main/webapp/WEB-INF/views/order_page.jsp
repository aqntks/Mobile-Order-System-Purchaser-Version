<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

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
<script src="${R}res/basketDatabase.js"></script>


<script>
	$(document).ready(function() { // DB생성
		createDB();
		createTable();
		selectData();
	});
	
	//메뉴 클릭 시 장바구니에 추가 함수
	function addBasket(menuId, menuName, menuPrice){
		
		basket
		
		db.transaction(function(tx){
			tx.executeSql("SELECT count FROM Basket WHERE menuId = ?", [menuId], function(tx, result){
				if(result.rows.length > 0){
				var row = result.rows.item(0);
				insertData(menuId, menuName, menuPrice, row.count);
				}
				else{
					insertData(menuId, menuName, menuPrice, 0);
				}
			});
		});
		}	

	function deleteMenu(id){
		db.transaction(function(tx){
			tx.executeSql("DELETE FROM Basket WHERE rowid = ?;", [id]);
		});
		idReset();
		location.reload();
		}	
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
						<ul data-role="listview" id="basketList" data-inset="true">
						</ul>
					</div>
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