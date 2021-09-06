<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<div class="container">
	<form>
	
	  <div class="form-group">
	    <label for="username">Username</label>
	    <input type="text" class="form-control" placeholder="Enter Username" id="username">
	  </div>
		
	  <div class="form-group">
	    <label for="email">Email</label>
	    <input type="email" class="form-control" placeholder="Enter Email" id="email">
	  </div>
	  
	  <div class="form-group">
	    <label for="password">Password:</label>
	    <input type="password" class="form-control" placeholder="Enter password" id="password">
	  </div>
	  
	</form>
	<button id="btn-save" class="btn btn-primary">회원가입</button>
</div>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>