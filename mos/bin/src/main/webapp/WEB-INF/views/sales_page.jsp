<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="greenTheme.min.css" />
<link rel="stylesheet" href="jquery.mobile.icon.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script>
setTimeout('location.reload()',2000);
</script>
</head>
<body>
	<div class="container">
		<section id="sales_page" data-role="page">
			<header data-role="header" data-position="fixed">
				<h1>판매</h1>
				<a href="finishs" data-role="button" data-icon="arrow-l"
					data-iconpos="notext"></a> <a href="finishs" data-role="button"
					data-icon="home" data-iconpos="notext"></a>
			</header>
			<div class='content'>
<!-- 등록된 메뉴 출력 -->
			 	<ul data-role="listview" data-inset="true">
			 	<li><p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			 	항목을 클릭하시면 조리 완료 상태로 변경됩니다.</p></li>
					<c:forEach var="ordersList" items="${ ordersList }">
						<li><a href="finish?id=${ ordersList.id }">
							<h3>주문번호 : ${ ordersList.id }</h3>
							<p><strong>${ ordersList.menuList }</strong></p>
							<p>${ ordersList.price }원</p>
								<span class="ui-li-count">조리 완료</span></a></li>
					</c:forEach>
				</ul> 
			</div>
			<footer data-role='footer' data-position="fixed">
			<h4>
					<a data-role="button" href="finishs">판매종료</a>
				</h4>
			</footer>
		</section>
	</div>
</body>
</html>
