<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="layout/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>board</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
      table {
        width: 10px;
        height: 10px;
      }
      td {
      	border-bottom : 1px solid #bcbcbc;
        text-align: left;
      }
</style>
</head>
<body id="myPage">
	<div class="container">
		
		<div class="col-sm-9">
		<h3>&nbsp;<i class="fa fa-star" aria-hidden="true"></i>
		<strong>인기글</strong></h3>
		<hr style="border: solid 1px #dddddd;">
		
		
		
		<c:forEach var="board" items="${boards}">
			<table class="table table-condensed table-hover table-striped">
				<tr>
					<td>
						<a href="/board/${board.id}"><span>${board.title}</span></a>
						<span style="float: right;">${board.readCount}</span>
					</td>
				</tr>	
			</table>
		</c:forEach>
		
		
		
		
	</div>
		 &nbsp; &nbsp; &nbsp;
		 
		 
		 
	<div class="col-sm-3">
		 &nbsp;<span class="glyphicon glyphicon-tags"></span>
		 &nbsp;카테고리
		<ul class="list-group">
		  <li class="list-group-item d-flex justify-content-between align-items-center" >
		    <a href="/sports">스포츠</a>
		    <span class="badge badge-primary badge-pill">91</span>
		  </li>
		  <li class="list-group-item d-flex justify-content-between align-items-center">
		    <a href="/game">게임</a>
		    <span class="badge badge-primary badge-pill">10</span>
		  </li>
		  <li class="list-group-item d-flex justify-content-between align-items-center">
		    <a href="/employment">취업</a>
		    <span class="badge badge-primary badge-pill">14</span>
		  </li>
		  <li class="list-group-item d-flex justify-content-between align-items-center">
		    <a href="/stock">주식</a>
		    <span class="badge badge-primary badge-pill">75</span>
		  </li>
		  <li class="list-group-item d-flex justify-content-between align-items-center">
		    <a href="/fashion">패션</a>
		    <span class="badge badge-primary badge-pill">67</span>
		  </li>
		  <li class="list-group-item d-flex justify-content-between align-items-center">
		    <a href="/entertainment">연예</a>
		    <span class="badge badge-primary badge-pill">45</span>
		  </li>
		</ul>
		</div>
		
		</div>
	
</body>
</html>
<%@ include file="layout/footer.jsp"%>

