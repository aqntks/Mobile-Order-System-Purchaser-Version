<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
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
<script src="${R}res/common.js"></script>
<link rel="stylesheet" href="${R}res/common.css">
</head>
<body>
	<div class="container">
		<!--메뉴 관리 페이지-->
		<section id='menu_management_page' data-role='page'>
			<header data-role='header' data-position="fixed">
				<h1>메뉴 관리</h1>
				<a href="seller_main" data-role="button" data-icon="arrow-l"
					data-iconpos="notext"></a> <a href="#homeActS2" data-role="button"
					data-icon="home" data-iconpos="notext"></a>
			</header>
			<div class='content'>
				<h1>메뉴목록</h1>
				<table class="table table-bordered mt5">
					<thead>
						<tr>
							<th>id</th>
							<th>메뉴</th>
							<th>가격</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="menu" items="${ menus }">
							<tr data-url="menu_management_page?id=${ menu.id }">
								<td>${ menu.id }</td>
								<td>${ menu.name }</td>
								<td>${ menu.price }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
			<footer data-role='footer' data-position="fixed">
				<div data-role="navbar" data-iconpos="bottom">
					<ul>
						<li><a href="add_menu_page" data-icon="action">메뉴 추가</a></li>
						<li><a class="ui-btn-active ui-state-persist" href='#'
							data-icon="edit">메뉴 수정</a></li>
						<li><a href="#" data-icon="delete">메뉴 삭제</a></li>
					</ul>
				</div>

			</footer>
		</section>
		<!--홈버튼 액션시트-->
		<div data-role="dialog" id="homeActS2" data-position="fixed">
			<div data-role="content">
				정보가 초기화됩니다. </br> 처음 화면으로 돌아가시겠습니까? <a href="seller_main"
					data-role="button">네</a> <a href="#menu_managemet_page"
					data-role="button">아니오</a>
			</div>
		</div>

	</div>
</body>
</html>
