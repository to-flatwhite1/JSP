<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터 전송 실습</title>
		<link rel="stylesheet" href="css/style.css">
		<script src="js/script.js"></script>
	</head>
	<body>
		<div id="wrap">
			<div class="th">상품명</div>
			<div class="th">가격</div>
			<div class="th">수량</div>
			<div class="td">컴퓨터</div>
			<div class="td">1000000</div>
			<div class="td">
				<select>
					<option>0</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
				</select>
			</div>
			<div class="td">스마트폰</div>
			<div class="td">1500000</div>
			<div class="td">
				<select>
					<option>0</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
				</select>
			</div>
			<div class="result">
				<h1>결제총액</h1>
				<h1>0원</h1>
				<form method="get" action="pay.jsp">
					<input type="hidden" name="comp">
					<input type="hidden" name="phone">
					<input type="submit" value="결제하기">
				</form>
			</div>
		</div>
			
	</body>
</html>