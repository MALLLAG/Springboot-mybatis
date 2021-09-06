let index = {
	init: function(){
		
		$("#btn-save").on("click",()=>{
			this.save();
		});
		
		$("#btn-booaard-delete").on("click",()=>{
			this.deleteById();
		});
		
		$("#btn-update").on("click",()=>{
			this.update();
		});
		
		$("#btn-update-mode").on("click", ()=>{
				this.updateMode();
		});
		
		$("#btn-likes-save").on("click",()=>{
			this.likesSave();
		});
		
		
		
		
		
		
		
		
		$("#btn-reply-save").on("click",()=>{
			this.replySave();
		});
		
		$("#btn-reply-delete").on("click",()=>{
			this.replyDelete();
		})
		
		
	},
	
	save: function(){
		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
			userId: $("#userId").val(),
			cate: $(":input:radio[name=cate]:checked").val()
		}
		
		$.ajax({
			type: "post",
			url: "/board/saveForm",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp){
			console.log(data);
			alert("글쓰기가 완료되었습니다.");
			location.href="/";
		}).fail(function(error){
			console.log(data);
			alert(JSON.stringify(error));			
		});
	},
	
	
	deleteById: function(){
			let data = {
					id: $("#boardId").val()
			}
			
			$.ajax({
				type: "delete",
				url: "/board/"+data.id,
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done(function(resp){	
				console.log(resp);
				alert("삭제 성공");
				location.href="/";	
			}).fail(function(error){
				alert("삭제 실패 : 권한이 없습니다.");
				console.log(error);
				console.log(data);
			});
	},
	
	
	update: function(){
			console.log('update 수정');
			let data = {
					id: $("#boardId").val(),
					title: $("#title").val(),
					content: $("#content").val()
			};
			
			$.ajax({
				type: "PUT",
				url: "/board/"+data.id,
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done(function(resp){	
				console.log(resp);
				alert("수정 성공");
				location.href="/board/"+data.id;
			}).fail(function(error){
				alert("수정 실패");
				console.log(error);
				console.log(data);
			})
	},
	
	updateMode: function(){
			$("#btn-update-mode").hide();
			$("#btn-update").show();
			
			$("#title").attr("readOnly", false);
			$("#content").attr("readOnly", false);
	},
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	replySave: function(){
		let data = {
			content: $("#replyContent").val(),
			userId: $("#userId").val(),
			boardId: $("#boardId").val()
		}
		
		$.ajax({
			type: "post",
			url: "/board/detail",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp){
			alert("댓글쓰기가 완료되었습니다.");
			location.href="redirect:/";
		}).fail(function(error){
			console.log(data);
			alert(JSON.stringify(error));			
		});
	},
	
	replyDelete: function(){
		let data = {
			id: $("#id").val()
		}
		
		$.ajax({
			type: "delete",
			url: "/board/detail",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp){
			alert("댓글삭제가 완료되었습니다.");
			location.href="redirect:/";
		}).fail(function(error){
			console.log(data);
			alert(JSON.stringify(error));			
		});
	}

	
}

index.init();