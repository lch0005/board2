<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/add" method="post">
		<table>
			<tr>
				<td>제목</td>
				<td><input name="title" id="title"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input name="user" id="user"></td>
			</tr>
			<tr>
				<td>본문</td>
				<td><input name="detl" id="detl"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="저장"></td>
			</tr>
		</table>
	</form>
</body>
</html>
