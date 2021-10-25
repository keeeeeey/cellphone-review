<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.MemberVO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			/* COMMON */
			body {
				padding: 0;
				margin: 0;
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
			
			/* FlOAT CLEARFIX */
			.clearfix::after {
				content: "";
				clear: both;
				display: block;
			}
			.float--left {
				width: 50%;
				float: left;
			}
			.float--right {
				width: 50%;
				float: right;
			}
			.right--group {
				display: flex;
				align-items: center;
				justify-content: right;
				margin-right: 50px;
				padding-top: 28px;
			}
			
			/* INPUT TEXT */
			.input--text {
				height: 34px;
				padding: 0 10px;
				border: 1px solid #ddd;
				border-radius: 5px;
				box-sizing: border-box;
				outline: none;
				box-shadow: inset 0 1px 2px rgba(0,0,0,0.075);
				font-size: 16px;
			}
			.input--text:focus {
				border-color: #51a7e8;
				box-shadow: inset 0 1px 2px rgba(0,0,0,0.075), 
				            0 0 5px rgba(81,167,232,0.5);
			}
			
			/* BTN */
			.btn {
			    height: 34px;
			    background: #eee linear-gradient(to bottom, #fcfcfc, #eee);
			    border: 1px solid #d5d5d5;
			    border-radius: 4px;
			    display: flex;
			    align-items: center;
			    padding: 0 12px;
			    font-size: 14px;
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
			
			/* ANIMATION */
			.Fold:hover {
				animation: click 1s;
				animation-fill-mode: forwards;
			}
			.Flip:hover {
				animation: click 1s;
				animation-fill-mode: forwards;
			}
			.S:hover {
				animation: click 1s;
				animation-fill-mode: forwards;
			}
			.Note:hover {
				animation: click 1s;
				animation-fill-mode: forwards;
			}
			.sFree:hover {
				animation: click 1s;
				animation-fill-mode: forwards;
			}
			.Compare:hover {
				animation: click 1s;
				animation-fill-mode: forwards;
			}
			@keyframes click {
				0% {
					font-size: 20px;
				}
				100% {
					font-size: 24px;
				}
			}
			
			/* MAIN */
			.section ul {
				display: flex;
				list-style: none;
				justify-content: center;
			}
			.section ul li a {
				margin: 0 40px;
				padding: 5px;
			    color: #3c4246;
			    font-size: 20px;
			}
			.section li a:hover {
				color: #4078c0;
			}
			
			.header__inner {
				display: flex;
			}
			.logo a {
				background: url(./image/samsung_logo.png);
			    background-size: 200px;
			    background-position: center 85px;
			    width: 200px;
			    height: 100px;
			    display: block;
			    margin-left: 50px;
			    text-indent: -9999px;
			}
			.btn-group {
				display: flex;
			}
			#search-form {
				display: flex;
			}
			.review {
				border-top: 1px solid rgba(0,0,0,.75);
			}
			.loginName {
				display: block;
				margin-left: 30px;
				margin-right: 10px;
				padding-top: 7px;
				font-size: 20px;
				color: #808080;
			}
		</style>
	</head>
	<%
		MemberVO memberVO= (MemberVO)session.getAttribute("loginUser");
	%>
	<body>
	<div class="body__contaienr">
		<header class="section">
			<div class="header__inner clearfix">
				<div class="menu-bar float--left">
					<div class="logo">
                    	<a href="NonageServlet?command=samsung_review">SAMSUNG</a>
               		</div>
				</div>
				<div class="menu-bar float--right">
					<div class="right--group">
						<form id="search-form" method="POST" action="">
		                    <input type="text" id="search" class="input--text" placeholder="Search Review">
		                    <input type="submit" value="Submit" class="btn">
		                </form>
						<div class="btn-group">
							<% if (memberVO != null && memberVO.getId() != null) { %>
									<span class="loginName"><%= memberVO.getNickname() %>님</span>
									<a href="#" class="btn">마이페이지</a>
									<a href="NonageServlet?command=logout&company=samsung" class="btn btn--primary">로그아웃</a>
							<% } else { %>
							<a href="NonageServlet?command=samsung_loginform" class="btn">로그인</a>
		                    <a href="NonageServlet?command=samsung_joinform" class="btn btn--primary">회원가입</a>
		                    <% } %>
	                    </div>
                    </div>
				</div>
			</div>
			<div class="review">
				<ul class="review--menu">
					<li><a href="NonageServlet?command=samsungreviewpage&model=Galaxy Fold" class="Fold">Galaxy Fold</a></li>
					<li><a href="NonageServlet?command=samsungreviewpage&model=Z-Flip" class="Flip">Z-Flip</a></li>
					<li><a href="NonageServlet?command=samsungreviewpage&model=Galaxy S" class="S">Galaxy S</a></li>
					<li><a href="NonageServlet?command=samsungreviewpage&model=Note" class="Note">Note</a></li>
					<li><a href="NonageServlet?command=samsungreviewpage&model=자유게시판" class="sFree">자유게시판</a></li>
					<li><a href="NonageServlet?command=comparePage&company=samsung" class="Compare">비교하기</a></li>
				</ul>
			</div>
		</header>
	</div>
	</body>
</html>