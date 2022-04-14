<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"			uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap');


* {margin: 0; padding: 0; box-sizing: border-box;}
body {
	font-family: 'Noto Sans KR', sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background:no-repeat center;
	background-size: cover;
	
}
body::before {
	content:"";
	position: absolute; z-index: 1;
	top: 0; right: 0; bottom: 0; left: 0;
	background-color: rgba(0,0,0,.7);
}

.login-form {position: relative; z-index: 2;}
.login-form h1 {
	font-size:28px; color:#fff;
	text-align: center;
	margin-bottom: 60px;
}
.int-area {
	width: 400px; position: relative;
	margin-top: 20px;
	}
.int-area:first-child {margin-top: 0;}
.int-area input {
	width: 100%;
	padding: 20px 10px 10px;
	background-color: transparent;
	border: none;
	border-bottom: 1px solid #999;
	font-size: 18px; color: #fff;
	outline: none;
}
.int-area label {
	position: absolute; left: 10px; top: 15px;
	font-size: 18px; color: #999;
	transition: top .5s ease;
}
.int-area input:focus + label,
.int-area input:valid + label {
	top: 0;
	font-size: 13px; color: #166cea;
}
.btn-area {margin-top: 30px;}
.btn-area button {
	width: 100%; height: 50px;
	background: #166cea;
	color: #fff;
	font-size: 20px;
	border: none;
	border-radius: 25px;
	cursor: pointer;
}

.caption {
	margin-top: 20px;
	text-align: center;
}
.caption a {
	font-size: 15px; color: #999; text-decoration:none; border-right:1px solid #999; padding-right:5px; 
}
.caption a:last-child { border:0; }

.int-area p.error { color:#fff; }

</style>

</head>
<body>
<section class="login-form">
	<h1>로그인</h1>
	
	<form action="/mealkit/login" method="POST">
		<div class="int-area">
			<input type="text" name="id" id="id" autocomplete="off" required>
			<label for="id">아이디</label>	
		</div>
		
		<div class="int-area">
			<input type="password" name="password" id="password" maxlength="16" autocomplete="off" required>
			<label for="id">비밀번호</label>	
		</div>
		
		<c:if test="${msg == false}">
			<div class="int-area">
				<p class="error">비밀번호와 아이디를 다시 한번 확인하시기 바랍니다.</p>
			</div>
		</c:if>
		<c:if test="${login == 'need'}">
			<div class="int-area">
				<p class="error">로그인이 필요합니다.</p>
			</div>
		</c:if>
		
		<div class="btn-area">
			<button type="submit">로그인</button>
		</div>
		
	</form>
	
	<div class="caption">
		<a href="findId">아이디찾기</a>
		<a href="findPass">비밀번호찾기</a>
		<a href="join">회원가입</a>
		<a href="/">홈으로</a>
	</div>
</section>
</body>


</html>