<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, dto.BoardVO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.body__container {
				padding-top: 40px;
			}
			.section--video {
				background: #f5f5f5;
			}
			.section--feature .summary {
				width: 80%;
				margin: 0 auto;
				text-align: center;
			}
			.section--feature .video {
				width: 80%;
				margin: 0 auto;
			}
			.section--feature .video .video-ratio {
			    height: 0;
			    padding-top: 56.25%;
			    position: relative;
			}
			.section--feature .video .video-ratio iframe {
			    position: absolute;
			    top: 0;
			    left: 0;
			    width: 100%;
			    height: 100%;
			}
			.section--feature .tiles .inner {
				border-top: 1px solid rgba(0,0,0,.75);
				display: flex;
				margin: 0 auto;
				width: 1200px;
				height: 180px;
				overflow: hidden;
				border-bottom: 1px solid rgba(0,0,0,.75);
			}
			.section--feature .tiles .inner ul {
				width: 20%;
				border-right: 1px solid rgba(0,0,0,.75);
				display: block;
			}
			.section--feature .tiles ul:last-child {
			    border-right: none;
			}
			.section--feature .tiles .inner ul h2 {
				margin-right: 30px;
			}
		</style>
	</head>
	<%@ include file="./gaugebar.jsp" %>
	<%@ include file="./appleheader.jsp" %>
	<% ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("reviewList"); %>
	<body>
	<div class="body__container">
		<div class="main__inner">
			<section class="section section--feature section--video">			
				<div class="video">
				    <div class="video-ratio">
				        <iframe width="1905" height="800" src="https://www.youtube.com/embed/hpo28msJSsQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				    </div>
				</div>
			</section>
			<section class="section section--feature">
				<div class="summary">
				    <h2 class="summary__title">
				        "These are the best iPhone we've ever created"<br><br> - 팀 쿡 / 애플 CEO
				    </h2>
				    <p class="summary__description">
				        "Frankly the competition is still playing catch up to our chips. Not just from last year but even from 2 years ago."<br><br> - 케이안 드랜스 / 애플 아이폰 마케팅 부사장
				    </p>
				</div>
				<div class="tiles">
					<div class="inner">
					    <ul>
					        <li>
					           <h2>iPhone 13 Pro</h2>
					        </li>
					      	<% for (BoardVO data : list) { %>
					      	<% if (data.getModel().equals("iPhone 13 Pro")) {%>
					      	<li>
					      	<%= data.getContent() %>
					      	</li>
					      	<% } %>
					      	<% } %>
					    </ul>
					    <ul>
					        <li>
					           <h2>iPhone 13</h2>
					        </li>
					    </ul>
					    <ul>
					        <li>
					           <h2>iPhone 12 Pro</h2>
					        </li>
					    </ul>
					    <ul>
					        <li>
					           <h2>iPhone 12</h2>
					        </li>
					    </ul>
					    <ul>
					        <li>
					           <h2>자유게시판</h2>
					        </li>
					    </ul>
					</div>
				</div>
			</section>
		</div>
	</div>
	</body>
</html>