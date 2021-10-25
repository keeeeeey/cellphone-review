<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.BoardVO, java.util.*" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.section__review {
				width: 1100px;
				margin: 0 auto;
			}
			.review__inner .review_header {
				font-size: 35px;
			}
			.review__inner .btn-group {
				disply: flex;
				justify-content: right;
				margin-top: 60px;
				margin-bottom: 5px;
			}
			.reviewTable {
				border: 1px solid black;
				border-radius: 5px;
				width: 1100px;
				box-shadow: 0 0 8px #e5e5e5;
			}
			.reviewTable th {
				font-size: 18px;
				background: #000;
				color: #fff;
				height: 30px;
			}
			.reviewTable .no {
				width: 50px;
				text-align: center;
			}
			.reviewTable .score {
				width: 50px;
				text-align: center;
			}
			.reviewTable .nickname {
				width: 100px;
				text-align: center;
			}
			.reviewTable .title {
				width: 100px;
				text-align: center;
			}
			.reviewTable .content {
				text-align: center;
			}
			.reviewTable .write_date {
				width: 100px;
				text-align: center;
			}
			.reviewTable a {
				color: #000;
			}
		</style>
	</head>
	<%@ include file="./gaugebar.jsp" %>
	<%@ include file="./samsungheader.jsp" %>
	<% ArrayList<BoardVO> list = (ArrayList<BoardVO>)request.getAttribute("reviewList"); %>
	<body>
	<div class="body__container">
		<div class="section__review">
			<div class="review__inner">
				<div class="review_header">
					${param.model}
				</div>
				<div class="btn-group">
					<% if (memberVO != null) { %>
					<a href="NonageServlet?command=samsungreviewwrite&model=${param.model}" class="btn">리뷰쓰기</a>
					<% } else {%>
					<a href="#" class="btn" onClick="alert('로그인 후 이용 가능합니다.')">리뷰쓰기</a>
					<% } %> 
				</div>
			</div>
			<div class="reviewList">
				<table class="reviewTable">
					<tr>
						<th class="no">번호</th>
						<th class="score">별점</th>
						<th class="nickname">작성자</th>
						<th class="title">제목</th>
						<th class="content">내용</th>
						<th class="write_date">작성날짜</th>
					</tr>
					<%
					if (list == null) return;
					%>
					<%
					for (BoardVO data : list) {
					%>
							<tr>
								<td class="no"><%= data.getArticleNo() %></td>
								<td class="score"><fmt:formatNumber value="<%= data.getStarrate() %>"/></td>
								<td class="nickname"><%= data.getNickname() %></td>
								<td class="title"><%= data.getTitle() %></td> 
								<td><a href="NonageServlet?command=detailreview&company=samsung"><%= data.getContent() %></a></td>
								<td class="write_date"><fmt:formatDate value="<%= data.getWrite_date() %>" pattern="yyyy-MM-dd"/></td>
							</tr>
					<% 
						}
					%>
				</table>
			</div>
		</div>
	</div>
	</body>
</html>