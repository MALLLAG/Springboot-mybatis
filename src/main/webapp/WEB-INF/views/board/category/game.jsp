<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ include file="../../layout/header.jsp"%>	
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
	  #button{
      	border-top-left-radius:5px;
      	border-bottom-left-radius:5px;
      	border:1px solid white;
      	background-color:rgba(0,0,0,0);
      	color:gray;
      	padding:5px
      	}
      #button:hover{
      	color:black;
      	background-color:skyblue;
      }
      table {
      	border: 1px solid #bcbcbc;
        width: 10px;
        height: 10px;
      }
      td {
        text-align: right;
      }
      th {
      	text-align: left;
      }
</style>
<head>
<meta charset="UTF-8">
<title>카테고리⊙게임</title>
</head>
<body>	
	<h2>게임
	  <input type="button" id="button" name="button" value="스포츠" 
	  class="btn btn btn-primary btn-bg" onclick="location.href='sports'"/>
	  <input type="button" id="button" name="button" value="연예" 
	  class="btn btn btn-primary btn-bg" onclick="location.href='entertainment'"/>
	  <input type="button" id="button" name="button" value="취업" 
	  class="btn btn btn-primary btn-bg" onclick="location.href='employment'"/>
      <input type="button" id="button" name="button" value="패션" 
      class="btn btn btn-primary btn-bg" onclick="location.href='fashion'"/>
      <input type="button" id="button" name="button" value="주식" 
      class="btn btn btn-primary btn-bg" onclick="location.href='stock'"/>
	</h2>
	<table class="table table-condensed table-hover table-striped">
		
		
		<tbody>
				
				<c:forEach var="board" items="${boards}">
					
						<table  class="table table-striped" style="width:60%" align="center">
							<tbody>
								<tr>
									<th><a href="/board/${board.id}">${board.title}</a></th>
									<td>${board.createDate}</td>
								</tr>
							</tbody>
						</table>
					
				</c:forEach>	
				
		</tbody>
		
			
	</table>
	<div class="row">
			<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
				<ul class="pagination">
					<c:set var="target" value="boards" />
					<!-- 게시물이 없는 경우 -->
					<c:if test="${pager.rows==0 }">
						<li class="active"><a href="#">1</a></li>
					</c:if>
					
					<!-- 게시물이 있는 경우 -->
					<c:if test="${pager.rows > 0 }">
					    <!-- common 변수에 한페이지당 레코드건수&블럭당 페이지수 저장 -->
						<c:set var="common" 
						       value="size=${pager.size }&bsize=${pager.bsize }" />
						
						<!-- 블럭시작페이지가 블럭당 페이지수 보다 큰 경우  
						         예를들면 6번째 페이지를 보는 경우
						     Home 및 이전 << 셋팅. -->
						<c:if test="${pager.bspage > pager.bsize }">
							<c:set var="home" value="page=1&${common }" />
							<c:set var="prev" value="page=${pager.bspage-1 }&${common }" />
							<li><a href="${target }?${home }">처음</a></li>
							<li><a href='<c:url value="${target }?${prev }"/>'>&laquo;</a></li>
						</c:if>
						<!-- 5개의 페이지 번호를 표시 -->
						<c:forEach var="pno" 
						           begin="${pager.bspage }" 
						           end="${pager.bepage }">
							<c:if test="${pno==pager.page }">
								<li class="active"><a href="#">${pno }</a></li>
							</c:if>
							<c:if test="${pno!=pager.page }">
								<c:if test="${pno <= pager.pages }">
									<c:set var="page" value="page=${pno }&${common }" />
									<li><a href='<c:url value="${target }?${page }"/>'>${pno }</a></li>
								</c:if>
							</c:if>
						</c:forEach>
						
						<!-- 블럭시작페이지가 전체 페이지수 보다 작은 경우  
						         예를들면 전체 페이지수가 6인데 1~5번째 페이지를 보는 경우
						     Last 및 이후 >> 셋팅. -->
						<c:if test="${pager.bepage < pager.pages }">
							<c:set var="next" value="page=${pager.bepage+1 }&${common }" />
							<c:set var="last" value="page=${pager.pages }&${common }" />
							<li><a href='<c:url value="${target }?${next }"/>'>&raquo;</a></li>
							<li><a href="${target }?${last }">끝</a></li>
						</c:if>
					</c:if>
				</ul>
			</div>

		</div>
	
</body>
</html>
<%@include file="../../layout/footer.jsp" %>