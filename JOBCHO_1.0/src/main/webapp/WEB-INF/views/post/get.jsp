<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="/WEB-INF/views/board/main.jsp"%>



<div class="row" style="margin-top: 80px">
  <div class="col-sm-7" style="margin-left: 450px">
    <h2 class="page-header">게시판 이름</h2>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-sm-7" style="margin-left: 450px">
    <div class="panel panel-default">

      <div class="panel-heading">Board Read Page</div>
      <!-- /.panel-heading -->
      <div class="panel-body">

          <div class="form-group">
          <label>글 번호</label> <input class="form-control" name='bno'
            value='<c:out value="${post.post_num }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>제목</label> <input class="form-control" name='title'
            value='<c:out value="${post.post_title }"/>' readonly="readonly">
        </div>

        <div class="form-group">
          <label>내용</label>
          <textarea class="form-control" rows="3" name='content'
            readonly="readonly"><c:out value="${post.post_contents}" /></textarea>
        </div>

        <div class="form-group">
          <label>작성자</label> <input class="form-control" name='writer'
            value='<c:out value="${post.board_num }"/>' readonly="readonly">
        </div>
		
<button data-oper='modify' class="btn btn-info">수정</button>
<button data-oper='list' class="btn btn-default">목록</button>



			<!----------- form으로 데이터 유지 ----------->
			<form id='operForm' action="/post/update" method="get">
  				<input type='hidden' id='post_num' name='post_num' value='<c:out value="${post.post_num}"/>'> <!--기존 bno 삭제 -->
 				<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
  				<input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
  				<input type='hidden' name='board_num' value='<c:out value="${post.board_num}"/>'>
  				<%--<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
  				<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>    --%>
			</form>



      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->

<script type="text/javascript">
$(document).ready(function() {
  
  var operForm = $("#operForm"); 
  
  	//수정버튼 클릭 시
  $("button[data-oper='modify']").on("click", function(e){
    
    operForm.attr("action","/post/update").submit();
    
  });
  
    //목록버튼 클릭 시
  $("button[data-oper='list']").on("click", function(e){
    
    operForm.find("#post_num").remove(); //목록으로 이동할땐 번호를 지운다.
    operForm.attr("action","/post/list")
    operForm.submit();
  });  
});
</script>


