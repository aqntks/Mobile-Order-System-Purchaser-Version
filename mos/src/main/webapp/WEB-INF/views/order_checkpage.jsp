<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Mobile-Order-System</title>       
    <style type="text/css">
        p {line-height: 10pt; background-color: rgba(248, 248, 248, 0.6); margin: 10px; padding: 30px; border: medium inset rgb(8, 145, 236)}
        #list {overflow: auto; width: 80%; height: 150px} <!--박스안에 스크롤 자동생성, 크기 지정-->
 </style>
</head>
<body>
    <form method="get" action="">
       <p id="list"> <!--주문내역 출력--></p>
       

    </form>
    
    <input type="button" name="orderBtn" value="주문하기" onClick="alert('	')"/>
 
</body>
</html>