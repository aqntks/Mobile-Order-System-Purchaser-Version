<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<link rel="stylesheet" href="greenTheme.min.css" />
<link rel="stylesheet" href="jquery.mobile.icon.min.css" />
</head>
<body>
	<div class="container">
		<section id="menu_management_page" data-role="page">
			<header data-role="header" data-position="fixed">
				<h1>메뉴 관리</h1>
				<a href="seller_main" data-role="button" data-icon="arrow-l"
					data-iconpos="notext"></a> <a href="seller_main" data-role="button"
					data-icon="home" data-iconpos="notext"></a>
			</header>
			<div class='content'>
<!-- 등록된 메뉴 출력 -->
				<ul data-role="listview" data-inset="true">
					<c:forEach var="menus" items="${ menus }">
						<li><a href="edit?id=${ menus.id }"><h3>${ menus.name }</h3>
								<p>${ menus.price }원</p> </a></li>
					</c:forEach>
				</ul>
			</div>
			<footer data-role='footer' data-position="fixed">
			<h4>
					<a data-role="button" href="create">메뉴추가</a>
				</h4>
			</footer>
		</section>
	</div>
</body>
</html>
