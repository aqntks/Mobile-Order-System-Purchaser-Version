<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="greenTheme.min.css" />
<link rel="stylesheet" href="jquery.mobile.icon.min.css" />
<style type="text/css">

body {
	background-color: #74be79;
	font-size: 62.5%
}
#logo {
	border-radius: 10px;
	top: 45%;
	left: 50%;
	transform: translate(-50%, -50%);
	position: fixed;
	padding: 15px;
	background-color: #ffffff;
	width: 300px;
	height: 400px
}
h1 {
	color: #696969;
	text-align: center;
	font-size: xx-large
}
.container {
	padding: 2em;
}
 button:hover {color:  #52ad58;} <!-- 마우스 접근 버튼 글씨 색 -->
 
<!--판매시작 버튼 -->
button, button::after {
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}
.btn_start {
	background: none;
	border: 3px solid #fff;
	border-radius: 10px;
	color: #fff;
	display: block;
	font-size: 1.6em;
	font-weight: bold;
	margin: 1em auto;
	padding: 2.5em 5em;
	position: fixed;
	top: 40%;
	left: 50%;
	transform: translate(-50%, -50%); 
	text-transform: uppercase;	
	z-index: 2;
}
button::before, button::after {
	background: #fff;
	content: '';
	position: absolute;
	z-index: -1;
}
.btn_start::before {
	height: 100%;
	left: 0;
	top: 0;
	width: 100%;
}
.btn_start::after {
	background: #52ad58;
	height: 100%;
	left: 0;
	top: 0;
	width: 100%;
}
.btn_start:hover:after {
	height: 0;
	left: 50%;
	top: 50%;
	width: 0;
}

<!--메뉴관리 버튼 -->
button, button::after {
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}
.btn_menu {
	background: none;
	border: 3px solid #fff;
	border-radius: 10px;
	color: #fff;
	display: block;
	font-size: 1.6em;
	font-weight: bold;
	margin: 1em auto;
	padding: 2.5em 5em;
	position: fixed;
	top: 60%;
	left: 50%;
	transform: translate(-50%, -50%); 
	text-transform: uppercase;
	z-index: 2;
}
button::before, button::after {
	background: #fff;
	content: '';
	position: absolute;
	z-index: -1;
}
.btn_menu::before {
	height: 100%;
	left: 0;
	top: 0;
	width: 100%;
}
.btn_menu::after {
	background: #52ad58;
	height: 100%;
	left: 0;
	top: 0;
	width: 100%;
}
.btn_menu:hover:after {
	height: 0;
	left: 50%;
	top: 50%;
	width: 0;
}
</style>
</head>
<body>
	<form method="get" action="">
<div class="container">
 <h1><p id="logo">MOS(판매자)</p></h1>
	
<button type="button" class="btn_start" onclick="location.href='sales_page' ">판매 시작</button> 
<button type="button" class="btn_menu" onclick="location.href='menu_management_page' ">메뉴관리</button> 
             
</div>
</form>
</body>
</html>