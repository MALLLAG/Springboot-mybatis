<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../layout/header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

			<div class="container">
				<tr>
					<td >
					스포츠 : <input name="cate" type="radio" value="sports">
					/ 연예 : <input name="cate" type="radio" value="entertainment">
					/ 취업 : <input name="cate" type="radio" value="employment">
					/ 게임 : <input name="cate" type="radio" value="game">
					/ 패션 : <input name="cate" type="radio" value="fashion">
					/ 주식 : <input name="cate" type="radio" value="stock">
					</td> 
				</tr>
			</div>
			
			<br/>
			
<div class="container">
	<form>
	<input id="userId" type="hidden" value="${sessionScope.principal.id}" />
	
	  <div class="form-group">
	    <label for="username">Title</label>
	    <input  type="text" class="form-control" placeholder="Enter Title" id="title">
	  </div>
		
	  <div class="form-group">
	    <label for="content">Content</label>
	    <textarea class="form-control summernote" rows="3" id="content"></textarea>
	  </div>
	  
	  <button id="btn-save" type="button" class="btn btn-primary">글쓰기</button>
	</form>
	
</div>

<script>
      $('.summernote').summernote({
        tabsize: 2,
        height: 500
      });
</script>
<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp" %>

