<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.CompareVO, dto.CompareVO2" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.compare__section {
				width: 1100px;
				margin: 0 auto;
			}
			.compare__group {
				display: flex;
			}
			.compare__A {
				width: 140px;
				height: 28px;
				font-size: 18px;
				text-align: center;
				box-shadow: 0 0 8px #e5e5e5;
				border-radius: 5px;
			}
			.compare__B {
				width: 140px;
				height: 28px;
				font-size: 18px;
				text-align: center;
				box-shadow: 0 0 8px #e5e5e5;
				border-radius: 5px;
			}
			.compare__picture {
				width: 250px;
			}
			
			.info__A {
				display: flex;
				padding-top: 20px;
			}
			.info__A .spec__A {
				padding-top: 150px;
			}
			.info__A .spec__A ul {
				list-style: none;
			}
			.info__A .spec__A ul li {
				margin: 5px 0;
				font-size: 20px;
			}
			.group--right form {
				margin-left: 395px;
			}
			.info__B {
				display: flex;
				margin-left: 50px;
				padding-top: 20px;
			}
			.info__B .spec__B {
				padding-top: 150px;
			}
			.info__B .spec__B ul {
				list-style: none;
			}
			.info__B .spec__B ul li {
				margin: 5px 0;
				font-size: 20px;
			}
		</style>
	</head>
	<%@ include file="./gaugebar.jsp" %>
	<%@ include file="./appleheader.jsp" %>
	<% CompareVO compareVO= (CompareVO)session.getAttribute("compareVO"); %>
	<% CompareVO2 compareVO2= (CompareVO2)request.getAttribute("compareVO2"); %>	
	<body>
	<div class="body__container">
		<div class="compare__section">
			<div class="compare__group clearfix">
				<div class="float--left">
					<div class="group--left">
						<form action="NonageServlet?command=trycompare1&company=apple" name="compare1" method="post">
							<select name="compare_1" onChange="document.forms['compare1'].submit();" class="compare__A">
							    <option value="">모델선택1</option>
							    <option value="Galaxy Fold">Galaxy Fold</option>
							    <option value="Z-Flip">Z-Flip</option>
							    <option value="Galaxy S">Galaxy S</option>
							    <option value="Note">Note</option>
							    <option value="iPhone 13 Pro">iPhone 13 Pro</option>
							    <option value="iPhone 13">iPhone 13</option>
							    <option value="iPhone 12 Pro">iPhone 12 Pro</option>
							    <option value="iPhone 12">iPhone 12</option>
							</select>
						</form>
						<div class="info__A">
						<% if (compareVO != null) { %>
							<div class="picture__A">
							<img class="compare__picture" src="image/<%= compareVO.getPicture() %>" />
							</div>
							<div class="spec__A">
								<ul>
									<li><%= compareVO.getProduct() %></li>
									<li><%= compareVO.getSize() %> (mm)</li>
									<li><%= compareVO.getWeight() %> g</li>
									<li><%= compareVO.getPixel() %>만 화소</li>
									<li><%= compareVO.getPrice() %>원</li>
								</ul>
							</div>
						<% } else { %>
							<div class="picture__A">
							
							</div>
							<div class="spec__A">
							
							</div>
						<% } %>
						</div>
					</div>
				</div>
				<div class="float--right clearfix">
					<div class="group--right clearfix">
						<form action="NonageServlet?command=trycompare2&company=apple" name="compare2" method="post">
							<select name="compare_2" onChange="document.forms['compare2'].submit();" class="compare__B">
							    <option value="">모델선택2</option>
							    <option value="Galaxy Fold">Galaxy Fold</option>
							    <option value="Z-Flip">Z-Flip</option>
							    <option value="Galaxy S">Galaxy S</option>
							    <option value="Note">Note</option>
							    <option value="iPhone 13 Pro">iPhone 13 Pro</option>
							    <option value="iPhone 13">iPhone 13</option>
							    <option value="iPhone 12 Pro">iPhone 12 Pro</option>
							    <option value="iPhone 12">iPhone 12</option>
							</select>
						</form>
						<div class="info__B">
							<% if (compareVO2 != null) { %>
							<div class="spec__B">
								<ul>
									<li><%= compareVO2.getProduct() %></li>
									<li><%= compareVO2.getSize() %> (mm)</li>
									<li><%= compareVO2.getWeight() %> g</li>
									<li><%= compareVO2.getPixel() %>만 화소</li>
									<li><%= compareVO2.getPrice() %>원</li>
								</ul>
							</div>
							<div class="picture__B">
							<img class="compare__picture" src="image/<%= compareVO2.getPicture() %>" />
							</div>
						<% } else { %>
							<div class="spec__B">
							
							</div>
							<div class="picture__B">
							
							</div>
						<% } %>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>