<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="/WEB-INF/views/board/board.jsp"%>



<div class="row" style="margin-top: 80px">
	<div class="col-sm-7" style="margin-left: 450px">
		<h1 class="page-header">게시판 이름</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row" >
	<div class="col-sm-7" style="margin-left: 450px">
		<div class="panel panel-default">
			<div class="panel-heading">
				게시판 정보
				
				<button id='regBtn' type="button" class="btn btn-xs pull-right">게시글 등록</button>
			</div>

			<!-- /.panel-heading -->
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>

					<c:forEach items="${postList}" var="postList">
						<tr>
							<td><c:out value="${postList.post_num}"/></td>

							<td>
								<a href='/post/get?post_num=<c:out value="${postList.post_num}"/>'> <!--move 클래스 추가 -->
								<c:out value="${postList.post_title}"/><!-- 제목 클릭 시 move이벤트 발생 -->
								</a>
							</td>

							<td>권도현</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${postList.post_date}"/></td>
						</tr>
					</c:forEach>
				</table>

				<div class='row'>
					<div class="col-sm-7">

						<form id='searchForm' action="/board/list" method='get'>
							<select name='type'>
								<option value=""
									<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
								<option value="T"
									<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
								<option value="C"
									<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
								<option value="W"
									<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
								<option value="TC"
									<c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목
									or 내용</option>
								<option value="TW"
									<c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목
									or 작성자</option>
								<option value="TWC"
									<c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목
									or 내용 or 작성자</option>
							</select> 
							<input type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>' /> 
							<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
							<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
							<button class='btn btn-default'>Search</button>
						</form>
					</div>
				</div>


				<div class='pull-right'>
					<ul class="pagination">

			 <%-- <c:if test="${pageMaker.prev}">
              <li class="paginate_button previous"><a href="#">Previous</a>
              </li>
            </c:if>

            <c:forEach var="num" begin="${pageMaker.startPage}"
              end="${pageMaker.endPage}">
              <li class="paginate_button"><a href="#">${num}</a></li>
            </c:forEach>

            <c:if test="${pageMaker.next}">
              <li class="paginate_button next"><a href="#">Next</a></li>
            </c:if> --%>

						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<!--선택한 번호 이벤트처리(삼항연산자) -->
							<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a><!--이벤트 처리해야함 -->
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>


					</ul>
				</div>
				<!--  end Pagination -->
			</div>
			
			<!-- 페이지 번호 이벤트 처리 -->
			<form id='actionForm' action="/board/list" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>

				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> 
				<input type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>
			</form>


			<!--Modal창 추가-->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">Modal title</h4>
						</div>
						<div class="modal-body">게시글이 등록되었습니다.</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!--/.modal-dialog-->
			</div>
			<!--/.modal-->


		</div>
		<!--  end panel-body -->
	</div>
	<!-- end panel -->
</div>
<!-- /.row -->

<script type="text/javascript">

$(document).ready(function(){
	
	//변경사항 피드백
	var result = '<c:out value="${result}"/>'; 	
	
	//checkModal 호출
	checkModal(result); 
	
	//등록 후 뒤로가기 누르면 모달창 뜨는 오류해결
	history.replaceState({}, null, null);

	function checkModal(result){
	
		if(result == '' || history.state){
			return;
		}
		
		if(result === ''){
			return;
		}
	
		if(parseInt(result) > 0){
		 	$(".modal-body").html("게시글이 등록되었습니다.");
		} 
	
			$("#myModal").modal("show");
		
	}//end checkModal
	
	//게시글 등록버튼 클릭 시 등록폼으로 이동
	$("#regBtn").on("click", function(){
		
			self.location = "/post/register";
	});



}); //end d.ready








</script>
