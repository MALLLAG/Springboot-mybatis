<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.bs-example {
	margin: 20px;
}

.log-small {
	color: #f4511e;
	font-size: 50px;
}

footer .glyphicon {
	font-size: 20px;
	margin-bottom: 20px;
	color: #f4511e;
}
</style>
<nav class="navbar navbar-default">
	<div class="container-fluid">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:url value='/'/>">Home</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">게시판 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/sports">스포츠</a></li>
						<li><a href="/entertainment">연예</a></li>
						<li><a href="/employment">취업</a></li>
						<li><a href="/game">게임</a></li>
						<li><a href="/fashion">패션</a></li>
						<li><a href="/stock">주식</a></li>
					</ul></li>
			</ul>

			<c:choose>
				<c:when test="${empty sessionScope.principal}">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/auth/loginForm">로그인</a></li>
						<li><a href="/auth/joinForm">회원가입</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/board/saveForm">글쓰기</a></li>
						<li><a href="/logout">로그아웃</a></li>
					</ul>
				</c:otherwise>
			</c:choose>

		</div>
	</div>

</nav>