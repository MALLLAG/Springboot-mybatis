<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../layout/header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<html>
<head>
<style>
	#button{
      	border-top-left-radius:5px;
      	border-bottom-left-radius:5px;
      	border:2px solid skyblue;
      	background-color:rgba(0,0,0,0);
      	color:gray;
      	padding:(5,30,5,30);
      	}
      #button:hover{
      	color:black;
      	background-color:skyblue;
      	
      	}

      #btn-update-mode{
      	border-top-left-radius:5px;
      	border-bottom-left-radius:5px;
      	border:2px solid #fcca02;
      	background-color:rgba(0,0,0,0);
      	color:gray;
      	padding:(5,30,5,30);
      	}
	#btn-update{
      	border-top-left-radius:5px;
      	border-bottom-left-radius:5px;
      	border:2px solid #2b82c4;
      	background-color:rgba(0,0,0,0);
      	color:gray;
      	padding:(5,30,5,30);
      	}
     
    #btn-booaard-delete{
     	border-top-left-radius:5px;
     	border-bottom-left-radius:5px;
     	border:2px solid #c00a00;
      	background-color:rgba(0,0,0,0);
      	color:gray;
      	padding:(5,30,5,30);
      	}
      #btn-update-mode:hover{
      	color:#e9ab01;
      	background-color:#fdf7e6;
      }
      #btn-update:hover{
      	color:#2b82c4;
      	background-color: #f0f5fe;
      }
      #btn-booaard-delete:hover{
      	color:#c00a00;
      	background-color:#feeceb;
      }
      #btn1{
     	border-top-left-radius:5px;
     	border-bottom-left-radius:5px;
     	border:2px solid white;
      	background-color:white;
      	color:3366FF;
      	padding:(5,30,5,30);
      	}
</style>

</head>   
<body>

	<div class="container">
		<div>
			<button id="btn-update" type="button" class="btn btn-primary">수정하기</button>
			<button id="btn-update-mode" type="button" class="btn btn-warning">수정</button>
			<button id="btn-booaard-delete" type="button" class="btn btn-danger">삭제</button>
		</div>
		<h2><input style="border: 0px;" id="title" type="text" value="${boardDetailRespDto.title}" readonly /><br></h2>
		${boardDetailRespDto.username}
		<hr style="border: solid 1px #dddddd;">
		<textarea style="border: 0px; height:50%; width: 100%; resize: none;" id="content" readonly>${boardDetailRespDto.content}</textarea>	
		<br><br><br>

		
		<div class="row">
 			<div class="col-md-4"></div>
  			<div class="col-md-4" align="center">
			<button id ="btn1" type="button" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-thumbs-up"></span></button>
			<button id ="btn1" type="button" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-thumbs-down"></span></button>
			</div>
  			<div class="col-md-4"></div>
		</div>
			
		<br><br><br>
		</div>
	
</body>
	
<footer>
	
	<div class="container">
	<strong>전체 댓글</strong>
	<hr style="border: solid 1px #dddddd;">
		<form>
			<input id="userId" type="hidden" value="${sessionScope.principal.id}" />
			<input id="boardId" type="hidden" value="${boardDetailRespDto.id}" />
			<div class="form-group">
		      <p>
		      	<textarea id="replyContent" style="width:100%; resize: none;" rows = "5"></textarea>
		      </p>
			</div>
			
				<button id="btn-reply-save" type="button" class="btn btn-primary">등록</button>
		      <hr style="border: solid 1px #dddddd;">
	    </form>
    </div>
    
    
    
	<div class="container">
	
		<form>
		
			<ul class="list-group list-group-flush">
				<ol class="replyList" style="width:96%;">
					<c:forEach items="${replyList}" var="replyList">
					<input id="id" type="hidden" value="${reply.id}" />
						<li class="list-group-item">
						<span>${replyList.content}</span>
						<span><button style="border: 0px; background: white; float: right;" id="btn-reply-delete" type="button">x</button></span>
						</li>
					</c:forEach>
				</ol>
			</ul>
		</form>	
	</div>
	    
</footer>

<script src="/js/board.js"></script>
<%@include file="../layout/footer.jsp" %>
</html>