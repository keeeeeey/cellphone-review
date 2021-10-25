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
			.index__inner {
				display: flex;
			} 
			.samsung{
				width: 50%;
				background: #fff;
				display: flex;
				justify-content: center;
				align-items: center;
			}
			.samsung:hover {
				animation: my-animation 1s;
				animation-fill-mode: forwards;
			}
			@keyframes my-animation {
				0% {
					width: 50%;
				}
				100% {
					width: 80%;
				}
			}
			.apple {
				width: 50%;
				height: 821px;
				background: #000;
				display: flex;
				justify-content: center;
				align-items: center;
			}
			.apple:hover {
				animation: my-animation 1s;
				animation-fill-mode: forwards;
			}
			.samsung__logo a{
			    background: url(./image/samsung_logo.png);
			    background-size: 518px;
			    width: 518px;
			    height: 330px;
			    display: block;
			    text-indent: -9999px;
		    }
		    .apple__logo a{
			    background: url(./image/apple_logo.png);
			    background-size: 1000px;
			    background-position: center center;
			    width: 518px;
			    height: 388px;
			    display: block;
			    text-indent: -9999px;
		    }
		</style>
	</head>
	<body>
	<div class="body__container">
		<div class="index__inner">
			<div class="samsung">
				<div class="samsung__logo">
                    <a href="NonageServlet?command=samsung_review">SAMSUNG</a>
                </div>
			</div>
			<div class="apple">
				<div class="apple__logo">
                    <a href="NonageServlet?command=apple_review">APPLE</a>
                </div>
			</div>
		</div>
	</div>
	</body>
</html>