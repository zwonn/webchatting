<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
 --%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<style type="text/css">
.carousel-control.right, .carousel-control.left {
	background-image: none;
	color: #f4511e;
}
.carousel-indicators li {
	border-color: #f4511e;
}
.carousel-indicators li.active {
	background-color: #f4511e;
}
.item h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	font-style: italic;
	margin: 70px 0;
}
.item span {
	font-style: normal;
}
</style>
</head>
<body>
	<!-- uppermost -->
	<%@ include file="/resources/include/main/uppermost.jsp"%>
	<!-- nav -->
	<%@ include file="/resources/include/main/nav.jsp"%>
	<!-- main -->
	<div class="container text-center">
		<h3>BlahBlah</h3>
		<p>
			<em>채팅시스템</em>
		</p>
		<p>내국인, 외국인과의 채팅 사이트</p>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<p>
					<strong>기능1</strong>
				</p>
				<br> <img src="${pageContext.request.contextPath}/resources/img/sub1.png" style="width:200; height:200;" alt="Random Name">
			</div>
			<div class="col-sm-4">
				<p>
					<strong>기능2</strong>
				</p>
				<br> <img src="${pageContext.request.contextPath}/resources/img/sub2.jpg" style="width:200; height:200;" alt="Random Name">
			</div>
			<div class="col-sm-4">
				<p>
					<strong>기능3</strong>
				</p>
				<br> <img src="${pageContext.request.contextPath}/resources/img/sub3.jpg" style="width:200; height:200;" alt="Random Name">
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="/resources/include/main/footer.jsp"%>

</body>
</html>