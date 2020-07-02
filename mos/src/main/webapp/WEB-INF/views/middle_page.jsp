<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="greenTheme.min.css" />
<link rel="stylesheet" href="jquery.mobile.icon.min.css" />
</head>
<body>

<form id="middle_form" action="result_page" method="get">
  <input type="hidden" name="orderNumber" value="${orderNumber}">
  <input type="hidden" name="menuList" value="${temp}">
  <input type="hidden" name="count" value="${count}">
</form>
<script type="text/javascript">
this.document.getElementById("middle_form").submit();
</script>
</body>
</html>