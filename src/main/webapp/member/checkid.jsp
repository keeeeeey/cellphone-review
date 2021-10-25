<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.MemberVO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>ID Check</title>
	</head>
	<% MemberVO memberVO = (MemberVO)request.getAttribute("memberVO"); %>
	<body>
	<% if (memberVO != null) { %>
		<%= memberVO.getId() + "는 사용 할 수 없는 아이디 입니다." %>
		<input type = "button" value = "닫기" onclick = "window.close()" />
	<% } else { %>
		<%= request.getParameter("id") + "는 사용 가능한 아이디 입니다." %>
		<input type = "button" value = "닫기" onclick = "window.close()" />
	<% } %>
	</body>
</html>

