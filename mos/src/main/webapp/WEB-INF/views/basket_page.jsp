<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
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

	function deleteMenu(id){
		db.transaction(function(tx){
			tx.executeSql("DELETE FROM Basket WHERE rowid = ?;", [id]);
		});
		location.reload();
		idReset();
		}	
</script>
</head>
<body>
	<div class="container">
		<!--장바구니 페이지-->
		<section id='basket_page' data-role='page'>
			<header data-role='header' data-position="fixed">
				<h1>장바구니</h1>
				<a href="order_page" data-role="button" data-icon="arrow-l"
					data-iconpos="notext"></a> <a href="#homeActS2" data-role="button"
					data-icon="home" data-iconpos="notext"></a>
			</header>
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

				<ul data-role="listview" id="basketList" data-inset="true">
				</ul>
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
					<a data-role="button" href='payment_page.html'>결제하기</a>
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
