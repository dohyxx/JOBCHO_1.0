

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

	
	//댓글 리스트 불러오기
	function getListReply(param, callback, error) {

	    var post_num = param.pno;
	    
	    $.getJSON("/reply/" + post_num +".json",
	        function(data) {
	    	
	          if (callback) {
	            callback(data); // 댓글 목록만 가져오는 경우 
	          }
	        }).fail(function(xhr, status, err) {
	      if (error) {
	        error();
	      }
	    });
	  }
		
	
	
	
	
	
	
	return {  //객체로 리턴 (변수에 함수를 넣음)
		insertReply : insertReply,
		getListReply : getListReply
	};

})(); //end ReplyService
