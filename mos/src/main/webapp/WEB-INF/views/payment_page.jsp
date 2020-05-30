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
<!--결제 선택 페이지-->
		<section id='payment_page' data-role='page'>
			<header data-role='header' data-position="fixed">
				<h1>결제 방법 선택</h1>
<!--처음으로-->
				<a href="basket_page" data-role="button" data-icon="arrow-l"
					data-iconpos="notext"></a> <a href="#homeActS3" data-role="button"
					data-icon="home" data-iconpos="notext"></a>
			</header>
			<div data-role='content'>
<!--결제 방법 선택-->
				<fieldset data-role="controlgroup">
					<input type="radio" name="payment" id="payment1" value="1" /> <label
						for="payment1">카카오페이</label> <input type="radio" name="payment"
						id="payment2" value="2" /> <label for="payment2">네이버페이</label> <input
						type="radio" name="payment" id="payment3" value="3" /> <label
						for="payment3">페이코</label>
				</fieldset>
			</div>
			<footer data-role='footer' data-position="fixed">
				<h4>
					<a data-role="button" href='middle_page'>결제하기</a>
				</h4>
			</footer>
		</section>
<!--홈버튼 액션시트-->
		<div data-role="dialog" id="homeActS3" data-position="fixed">
			<div data-role="content">
				정보가 초기화됩니다. </br> 처음 화면으로 돌아가시겠습니까? <a href="main"
					data-role="button">네</a> <a href="#payment_page" data-role="button">아니오</a>
			</div>
		</div>
	</div>
</body>
</html>