<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>LOGIN</title>
		<style>
			/* BTN */
			.btn {
			    height: 40px;
			    width: 508px;
			    justify-content: center;
			    background: #eee linear-gradient(to bottom, #fcfcfc, #eee);
			    border: 1px solid #d5d5d5;
			    border-radius: 4px;
			    display: flex;
			    align-items: center;
			    padding: 0 12px;
			    font-size: 16px;
			    font-weight: 500;
			    line-height: 1.5;
			    cursor: pointer;
			    box-sizing: border-box;
			    position: relative;
			    color: #333;
			    margin-left: 5px;
			}
			.btn:hover::before {
				content: "";
				position: absolute;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				background: rgba(0,0,0,0.07);
			}
			.btn.btn--primary {
				color: #fff;
				background: #000;
			}
		
			/* COMMON */
			body {
				margin: 0;
				padding: 0;
			}
			.body__container {
			    font-family: 'Roboto', sans-serif;
			    font-size: 16px;
			    font-weight: 400;
			    color: #333;
			}
			a {
			    text-decoration: none;
			}
			
			.login__inner {
				max-width: 500px;
			    margin: 0 auto;
			    height: 510px;
			    padding-top: 150px;
			}
			.login__inner .logo a {
				background: url("image/samsung_logo.png");
				background-size: 240px;
				width: 220px;
				height: 120px;
				display: block;
				text-indent: -9999px;
				margin-left: 150px;
			}
			.loginForm {
				margin-top: 20px;
			}
			.loginForm fieldset table .loginButton {
				width: 508px;
				height: 42px;
			}
			.loginForm input {
				width: 500px;
				height: 40px;
				margin: 10px 0;
			}
			.finding ul {
				display: flex;
				list-style: none;
				justify-content: center;
			}
			.finding ul a {
				padding: 0 10px;
				color: #3c4246;
			}
			.finding ul a:hover {
				color: #4078c0;
			}
			.tail ul {
				display: flex;
				list-style: none;
				justify-content: center;
			}
			.tail ul a {
				padding: 0 10px;
				color: #3c4246;
				font-size: 12px;
			}
			.tail ul a:hover {
				color: #4078c0;
			}
			fieldset {
				border-radius: 10px;
			}
		</style>
	</head>
	<body>
	<div class="body__container">
		<div class="login__inner">
			<div class="logo">
				<a href="NonageServlet?command=samsung_review">HOME</a>
			</div>
			<form action = "NonageServlet?command=login&company=samsung" method = "post" class="loginForm">
				<fieldset>
					<legend>로그인</legend>
					<table>
						<tr>
							<td><input type = "text" name = "id" placeholder="아이디"></td>
						</tr>
						<tr>
							<td><input type = "text" name = "pw" placeholder="비밀번호"></td>
						</tr>
						<tr>
							<td><input type = "submit" value = "로그인" class="btn btn--primary loginButton"></td>
						</tr>
					</table>
				</fieldset>
			</form>
			<div class="finding">
					<ul>
						<li><a href="#">비밀번호 찾기</a></li>
						<li><a href="#">아이디 찾기</a></li>
						<li><a href="NonageServlet?command=samsung_joinform">회원가입</a></li>
					</ul>
			</div>
			<div class="tail">
				<ul>
					<li><a href="#">회사소개</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">공지사항</a></li>
				</ul>
			</div>
		</div>
	</div>
	</body>
</html>