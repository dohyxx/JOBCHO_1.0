console.log("reply.js 실행");

var replyService = (function() {

	//댓글 등록
	function insertReply(reply, callback, error){
		console.log("댓글 등록~!");
		
		$.ajax({
			type : 'post',
			url : '/reply/new',
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}

	
	
	
	
	
	
	
	return {  //객체로 리턴 (변수에 함수를 넣음)
		insertReply : insertReply
		
	};

})(); //end ReplyService
