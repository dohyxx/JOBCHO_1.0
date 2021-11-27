console.log("Reply Module........");

var replyService = (function() {

	//댓글 등록
	function add(reply, callback, error) {
		console.log("add reply...............");

		$.ajax({
			type : 'post', 
			url : '/replies/new', //Controller 호출
			data : JSON.stringify(reply), // js객체를 JSON으로 변환
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) { // Ajax 실행결과에 따라 Callback 함수 실행
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		})
	}

	//댓글 전체 목록 가져오기
	function getList(param, callback, error) {

		var bno = param.bno;
		var page = param.page || 1;

		$.getJSON("/replies/pages/" + bno + "/" + page + ".json",
				function(data) {
					if (callback) {
						callback(data);
					}
				}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}
	

	
	//댓글 삭제
	function remove(rno, callback, error) {
		$.ajax({
			type : 'delete',
			url : '/replies/' + rno,
			success : function(deleteResult, status, xhr) {
				if (callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}

	//댓글 수정
	function update(reply, callback, error) {

		console.log("RNO: " + reply.rno);

		$.ajax({
			type : 'put',
			url : '/replies/' + reply.rno,
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}

	

	return {  //객체로 리턴 (변수에 함수를 넣음)
		add : add,
		get : get,
		getList : getList,
		remove : remove,
		update : update,
		displayTime : displayTime
	};

})(); //end ReplyService
