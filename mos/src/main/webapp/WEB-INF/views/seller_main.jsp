<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<script src="${R}res/common.js"></script>
<link rel="stylesheet" href="${R}res/common.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>
	<div class="container">
		<!--메인 페이지-->
		<section id='main_page' data-role='page'>
			<header data-role="header" data-position="fixed">
				<h1>모바일 주문 시스템(판매자)</h1>
			</header>
			<div data-role="content">
				<a data-role="button" id="start_btn" data-theme="b"
					href='sales_page'>판매</a> <a data-role="button" id="start_btn"
					data-theme="b" href='menu_management_page'>메뉴 관리</a>
			</div>
		</section>

	</div>
</body>
</html>
