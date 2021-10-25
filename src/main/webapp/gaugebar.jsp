<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			body {
				margin: 0;
				padding: 0;
			}
			.body__container {
				border-bottom: 1px solid #e5e5e5;
				padding-top: 40px;
			}
			.index__inner {
				display: flex;
				width: 100%;
				height: 40px;
				position: fixed;
				top: 0;
				left: 0;
				right: 0;
				z-index: 1;
			}
			.samsung {
				width: 50%;
				background: #fff;
				color: #000;
				display: flex;
				align-items: center;
				justify-content: center;
			}
			.apple {
				width: 50%;
				background: #000;
				color: #fff;
				display: flex;
				align-items: center;
				justify-content: center;
			}		
		</style>
	</head>
	<body>
	<div class="body__container">
		<div class="index__inner">
			<a href="NonageServlet?command=samsung_review" class="samsung">
				SAMSUNG
			</a>
			<a href="NonageServlet?command=apple_review" class="apple">
				APPLE
			</a>
		</div>
	</div>
	</body>
</html>