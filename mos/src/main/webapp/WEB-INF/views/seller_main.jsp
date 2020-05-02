<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!--메인 페이지-->
		<section id='main_page' data-role='page'>
			<header data-role="header" data-position="fixed">
				<h1>MOS (판매자)</h1>
			</header>
			<div data-role="content">
<!-- 판매 화면으로 -->
				<a data-role="button" id="start_btn" data-theme="b"
					href='sales_page'>판매</a> 
<!-- 메뉴 관리 화면으로 -->
					<a data-role="button" id="start_btn"
					data-theme="b" href='menu_management_page'>메뉴 관리</a>
			</div>
		</section>
	</div>
</body>
</html>
