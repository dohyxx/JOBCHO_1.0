<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="/WEB-INF/views/board/main.jsp"%>


<div class="row" style="margin-top: 100px">
  <div class="col-sm-7" style="margin-left: 450px">
    <h2 class="page-header">게시판 이름</h2>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<style>
.uploadResult {
	width: 100%;
	background-color: gray;
}

.uploadResult ul {
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}

.uploadResult ul li {
	list-style: none;
	padding: 10px;
}

.uploadResult ul li img {
	width: 100px;
}
</style>

<style>
.bigPictureWrapper {
  position: absolute;
  display: none;
  justify-content: center;
  align-items: center;
  top:0%;
  width:100%;
  height:100%;
  background-color: gray; 
  z-index: 100;
}

.bigPicture {
  position: relative;
  display:flex;
  justify-content: center;
  align-items: center;
}
</style>

<div class="row" style="margin-top: 40px">
  <div class="col-sm-7" style="margin-left: 450px">
    <div class="panel panel-default">

      <div class="panel-heading">게시글 등록</div>
      <!-- /.panel-heading -->
      <div class="panel-body">


        <form role="form" action="/post/register" method="post">
          <div class="form-group">
            <label>제목</label> <input class="form-control" name='post_title'>
          </div>

          <div class="form-group">
            <label>내용</label>
            <textarea class="form-control" rows="7" name='post_contents'></textarea>
          </div>

          <div class="form-group">
            <label>작성자</label> <input class="form-control" name='writer'>
          </div>
          <button type="submit" class="btn btn-default">등록</button>
          <button id='reset' type="reset" class="btn btn-default">취소</button>
        </form>

      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel-body -->
  </div>
  <!-- end panel -->
</div>
<!-- /.row -->

<!-- 파일 첨부 -->
<!-- <div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">File Attach</div>
      /.panel-heading
      <div class="panel-body">
        <div class="form-group uploadDiv">
            <input type="file" name='uploadFile' multiple>
        </div>
        
        <div class='uploadResult'> 
          <ul>
          
          </ul>
        </div>
        
        
      </div>
       end panel-body

    </div>
     end panel-body
  </div>
  end panel
</div>
/.row -->

						<!---------------form을 이용한 데이터 유지-------------->
						<form id='actionForm' action="/post/list" method='get'>
								<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
								<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>

								<%-- <input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'> 
								<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'> --%>
						</form>

<script>

$(document).ready(function(){

	
	var actionForm = $("#form");
	
	$("#reset").on("click", function(e){
		
		window.location.href = "/post/list";
		});

 


  
});

</script>


