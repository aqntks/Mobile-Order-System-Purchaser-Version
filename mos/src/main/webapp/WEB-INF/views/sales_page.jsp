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
</head>
<body>
	<div class="container">
		<section id="sales_page" data-role="page">
			<header data-role="header" data-position="fixed">
				<h1>판매</h1>
				<a href="seller_main" data-role="button" data-icon="arrow-l"
					data-iconpos="notext"></a> <a href="seller_main" data-role="button"
					data-icon="home" data-iconpos="notext"></a>
			</header>
			<div class='content'>
<!-- 등록된 메뉴 출력 -->
			 	<ul data-role="listview" data-inset="true">
			 	<li><p>주문번호&nbsp ㅣ
			 	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 메뉴 
			 	&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			 	 ㅣ&nbsp가격</p></li>
					<c:forEach var="ordersList" items="${ ordersList }">
						<li><a>${ ordersList.id }
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								${ ordersList.basketId }
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								${ ordersList.price }원	
								<span class="ui-li-count">조리 완료</span></a></li>
					</c:forEach>
				</ul> 
			</div>
			<footer data-role='footer' data-position="fixed">
			<h4>
					<a data-role="button" href="#">판매종료</a>
				</h4>
			</footer>
		</section>
	</div>
</body>
</html>
