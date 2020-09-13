<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
	window.onload = function() {
		let fs = document.getElementById('id') // 포커스 변수
		fs.focus();
	};
</script>
</head>
<script>
	function fn_joinFn(){
		let id = document.getElementById('id').value;
		let pw = document.getElementById('pw').value;
		let nickname = document.getElementById('nickname').value;
		let email = document.getElementById('email').value;
		let phone = document.getElementById('phone').value;
		const memberInfo = JSON.stringify({id:id,pw:pw,nickname:nickname,email:email,phone:phone});
		$.ajax({
			data : memberInfo,
			url : "http://localhost:8080/prj/member/newMember",
			type : "post",
			dataType : "text",
			contentType : "application/json; charset=UTF-8",
			success : function(data){
				console.log(data);
				if(data == 1){
					alert("회원가입을 축하드립니다");
					location.href="http://localhost:8080/prj/member/loginForm"
				}else{
					alert("에러");
				}
			},
			error : function(data){
				alert("실패");
			}
		})
	}
</script>
<body>
	<!-- uppermost -->
	<%@ include file="/resources/include/main/uppermost.jsp"%>
	<!-- nav -->
	<%@ include file="/resources/include/main/nav.jsp"%>
	<div class="container">
		<div class="jumbotron">
			<span style="text-align: center;"><h3>회원가입</h3></span>
			<form>
				<p>
					<div class="input-group">
					<span class="input-group-addon" ></span> 
					<input id="id" name="id" type="text" class="form-control" placeholder="아이디">
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="pw" name="pw" type="password" class="form-control" placeholder="패스워드">
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="nickname" name="nickname" type="text" class="form-control" placeholder="닉네임">
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="email" name="email" type="email" class="form-control" placeholder="이메일">
					</div>
				</p>
				<p>
					<div class="input-group">
					<span class="input-group-addon"></span> 
					<input id="phone" name="phone" type="text" class="form-control" placeholder="전화번호">
					</div>
				</p>
				<input type="button" class="btn btn-default" onClick="fn_joinFn()" value="가입하기" />
			</form>
		</div>
	</div>
	<!-- footer -->
	<%@ include file="/resources/include/main/footer.jsp"%>

</body>
</html>