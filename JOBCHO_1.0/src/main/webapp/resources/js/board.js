console.log("board.js 호출");

var listBoard = (function() {

	//게시판 전체 목록 가져오기
	function getListBoard(callback, error) {

		$.ajax({
			type : 'get', 
			url : '/board/list', //Controller 호출
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
		});
		console.log("getListBoard 호출");
	}

	

	return {  //객체로 리턴 (변수에 함수를 넣음)
		
		getListBoard : getListBoard
		
	};

})(); //end listBoard
