<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body style="padding: 10px;">

	<div class="input-group" style="margin: 10px;">
		<input type="text" class="form-control" placeholder="Search">
		<div class="input-group-btn">
			<button class="btn btn-default" type="button">
				<i class="glyphicon glyphicon-search"></i>
			</button>
		</div>
	</div>






	<table class="table table-striped">
		<thead>
			<tr>
				<th>SEQ</th>
				<th>Title</th>
				<th>User</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list" items="${list}">
				<tr>
					<td>${list.seq}</td>
					<td>${list.title}</td>
					<td>${list.user}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<div style="width: 100%; text-align: center">
		<ul class="pagination">
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
	</div>
	<button type="button" class="btn btn-primary btn-block" onclick="moveWrite();">글쓰기</button>




<a href="#">News <span class="badge">5</span></a><br>
<a href="#">Comments <span class="badge">10</span></a><br>
<a href="#">Updates <span class="badge">2</span></a>



</body>
<script>
	var moveWrite = function(){
		location.href= "/add";
		}
	/* 제이쿼리는 알아두세요 (제이쿼리방식)
	$(document).ready(function(){
		$("#btnWrite").click(funtion(){
			location.href = "/add";
			});
			});
	*/
</script>
</html>