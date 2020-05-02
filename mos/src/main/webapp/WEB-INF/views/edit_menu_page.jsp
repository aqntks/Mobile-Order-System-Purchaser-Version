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
<script src="${R}res/common.js"></script>
</head>
<body>
	<div class="container">
		<section id="menu_management_page" data-role="page">
			<header data-role="header" data-position="fixed">
				<h1>메뉴 ${ menu1.id > 0 ? "수정" : "등록" }</h1>
				<a href="menu_management_page" data-role="button"
					data-icon="arrow-l" data-iconpos="notext"></a> <a
					href="seller_main" data-role="button" data-icon="home"
					data-iconpos="notext"></a>
			</header>
			<div class='content'>
				<form:form method="post" modelAttribute="menu1">
					<div class="form-group">
						<label><h4>메뉴</h4></label>
						<form:input path="name" />
					</div>
					<div class="form-group">
						<label><h4>가격<h4></label>	
						<form:input path="price" />
					</div>
					<div>
						<button type="submit" data-theme="b">저장</button>
						<c:if test="${ menu1.id > 0 }">
							<a href="delete?id=${ menu1.id }" data-role="button">삭제</a>
						</c:if>
					</div>
				</form:form>
			</div>
			<footer data-role='footer' data-position="fixed">
				<h4>
					<a href="menu_management_page" data-role="button"
						data-icon="bullets" data-inline="true">목록</a>
				</h4>
			</footer>
		</section>
	</div>
</body>
</html>
