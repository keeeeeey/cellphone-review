<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.write__inner {
				width: 700px;
				margin: 0 auto;
			}
			.write__table {
				border: 1px solid black;
				border-radius: 5px;
				width: 100%;
				box-shadow: 0 0 8px #e5e5e5;
			}
			.write__table .write__content {
				width: 684px;
				height: 300px;
				margin-top: 10px;
			}
			#buttons {
				margin-top: 10px;
				display: flex;
				justify-content: center;
			}
			#buttons input {
				margin-right: 5px;
			}
		</style>
	</head>
	<%@ include file="./gaugebar.jsp" %>
	<%@ include file="./samsungheader.jsp" %>
	<body>
	<div class="body__container">
		<div class="write__inner">
			<div>
				<h2>리뷰쓰기</h2>
			</div>
			<div class="write__section">
				<form action="NonageServlet?command=reviewsubmit&model=${param.model}" method="post">
					<table class="write__table">
						<tr>
							<th class="write__title" colspan="2">제목</th>
							<td colspan="2"><input type="text" name="title"></td>
						</tr>
						<tr>
							<th class="write__title" colspan="2">사용하는 기종</th>
							<td colspan="2"><input type="text" name="phone_model" value="${param.model}" readonly></td>
						</tr>
						<tr>
							<th>성능</th>
							<td>
								<select name="performance">
								    <option value="">성능점수</option>
								    <option value="1">1</option>
								    <option value="2">2</option>
								    <option value="3">3</option>
								    <option value="4">4</option>
								    <option value="5">5</option>
								</select>
							</td>
							<th>디자인</th>
							<td>
								<select name="design">
								    <option value="">디자인점수</option>
								    <option value="1">1</option>
								    <option value="2">2</option>
								    <option value="3">3</option>
								    <option value="4">4</option>
								    <option value="5">5</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>가격</th>
							<td>
								<select name="price">
								    <option value="">가격점수</option>
								    <option value="1">1</option>
								    <option value="2">2</option>
								    <option value="3">3</option>
								    <option value="4">4</option>
								    <option value="5">5</option>
								</select>
							</td>
							<th>내구성</th>
							<td>
								<select name="durability">
								    <option value="">내구성점수</option>
								    <option value="1">1</option>
								    <option value="2">2</option>
								    <option value="3">3</option>
								    <option value="4">4</option>
								    <option value="5">5</option>
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<input type="text" name="review_content" class="write__content">						
							</td>
						</tr>
					</table>
					<div id="buttons">
				        <input type="submit" value="작성완료" class="btn btn--primary">
				        <a href="#" class="btn">나가기</a>
				    </div>
				</form>
			</div>
		</div>
	</div>
	</body>
</html>