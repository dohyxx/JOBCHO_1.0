<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    -->
    <link rel="stylesheet" href="/resources/post_and_board/codingBoostr.css">
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/resources/post_and_board/codingBoostr.css">
    <script ></script>
    <link rel="stylesheet" href="/resources/post_and_board/sidebar-right.css">
    <link rel="stylesheet" href="/resources/post_and_board/sidebar-left.css">
    <link rel="stylesheet" href="/resources/post_and_board/content.css">
    


    <header>
        <div class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">JOBCHO</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">소개<span class="sr-only"></span></a></li>
                        <li ><a href="#">강사진<span class="sr-only"></span></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                            aria-haspopup="true" aria-expanded="false"
                            >강의 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">c언어</a></li>
                                <li><a href="#">c언어</a></li>
                                <li><a href="#">c언어</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" role="button" data-target="#modal" data-toggle="modal"
                            aria-haspopup="true" aria-expanded="false"
                            ><ion-icon name="person-add-outline" class="navbar-icon"></ion-icon>팀원초대</a>

                        </li>
                    </ul>

                </div>
            </div>
        </div>
        
    </header>

    <!--왼쪽 사이드바-->
    <!--왼쪽 사이드바-->
    <!--왼쪽 사이드바-->
    
        <div class="l-navbar-left" id="navbar-left">
            <nav class="nav-left">
                <div>
                    <div class="nav__brand-left">
                        <ion-icon name="menu-outline" class="nav__toggle-left" id="nav-toggle-left"></ion-icon>
                    </div>

                    <!--프로필-->
                    <div>
                        <div class="nav-profile-image-left" style="background-image: /resources/post_and_board/99D279435B3D788602.jfif"></div>
                        <div class="nav-profile-content-left">
                            <p>cjhun0516@gmail.com</p>
                            <p>2팀 팀장</p>
                        </div>
                    </div>
                    <!--프로필 끝-->
                    
                    <div >
                        <!--게시판 영역-->
                        <!--게시판 영역-->
                        <h3>토픽 <a href="#" class="collapse__sublink-left" id="createBoard"><ion-icon name="add-outline" ></ion-icon></a></h3>
                        <div class="nav__list-left nav__scroll-left">
                            <a href="#" class="nav__link-left active-left">
                                <ion-icon name="home-outline" class="nav__icon-left"></ion-icon>
                                <span class="nav__name-left">Dashboard</span>
                            </a>
                            <a href="#" class="nav__link-left">
                                <ion-icon name="chatbubbles-outline" class="nav__icon-left"></ion-icon>
                                <span class="nav__name-left">Messenger</span>
                            </a>

                            <a href="#" class="nav__link-left">
                                <ion-icon name="pie-chart-outline" class="nav__icon-left"></ion-icon>
                                <span class="nav__name-left">Analytics</span>
                            </a>
                            
                            <a href="#" class="nav__link-left">
                                <ion-icon name="settings-outline" class="nav__icon-left"></ion-icon>
                                <span class="nav__name-left">Settings</span>
                            </a>
                           
                          
                        </div>
                        <!--게시판 영역 끝-->
                        <!--게시판 영역 끝-->


                        <!--채팅-->
                        <!--채팅-->
                        <h3>채팅 <a href="#" class="collapse__sublink-left"><ion-icon name="add-outline" 
                            ></ion-icon></a></h3>
                        <div class="nav__list-left nav__scroll-left">

                            <a href="#" class="nav__link-left">
                                <ion-icon name="chatbubbles-outline" class="nav__icon-left"></ion-icon>
                                <span class="nav__name-left">Messenger</span>
                            </a>
                            <a href="#" class="nav__link-left">
                                <ion-icon name="chatbubbles-outline" class="nav__icon-left"></ion-icon>
                                <span class="nav__name-left">Messenger</span>
                            </a>
                            <a href="#" class="nav__link-left">
                                <ion-icon name="chatbubbles-outline" class="nav__icon-left"></ion-icon>
                                <span class="nav__name-left">Messenger</span>
                            </a>
                            
                        </div>
                        <!-- 채팅 끝-->
                        <!-- 채팅 끝-->
                    </div>
                    
                </div>

                <a href="#" class="nav__link-left">
                    <ion-icon name="log-out-outline" class="nav__icon-left"></ion-icon>
                    <span class="nav__name-left">Log Out</span>
                </a>
            </nav>
        </div>
    
    <!--왼쪽 사이드바 끝-->
    <!--왼쪽 사이드바 끝-->
    <!--왼쪽 사이드바 끝-->

    <!--오른쪽 사이드바-->
    <!--오른쪽 사이드바-->
    <!--오른쪽 사이드바-->
    <div class="l-navbar-right navbar-font-right" id="navbar-right">
        <nav class="nav-right">
            <div>
                <div class="nav__brand-right">
                    <ion-icon name="menu-outline" class="nav__toggle-right" id="nav-toggle-right"></ion-icon>
                </div>
                <div class="nav__list-right">
                    <a href="#" class="nav__link-right active-right">
                        <ion-icon name="home-outline" class="nav__icon-right"></ion-icon>
                        <span class="nav__name-right">Dashboard</span>
                    </a>
                    <a href="#" class="nav__link-right">
                        <ion-icon name="chatbubbles-outline" class="nav__icon-right"></ion-icon>
                        <span class="nav__name-right">Messenger</span>
                    </a>

                    <div  class="nav__link-right collapse-right">
                        <ion-icon name="folder-outline" class="nav__icon-right"></ion-icon>
                        <span class="nav__name-right">Projects</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link-right"></ion-icon>

                        <ul class="collapse__menu-right">
                            <a href="#" class="collapse__sublink-right">Data</a>
                            <a href="#" class="collapse__sublink-right">Group</a>
                            <a href="#" class="collapse__sublink-right">Members</a>
                        </ul>
                    </div>

                    <a href="#" class="nav__link-right">
                        <ion-icon name="pie-chart-outline" class="nav__icon-right"></ion-icon>
                        <span class="nav__name-right">Analytics</span>
                    </a>
                    <div class="nav__link-right collapse-right">
                        <ion-icon name="people-outline" class="nav__icon-right"></ion-icon>
                        <span class="nav__name-right">Team</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link-right"></ion-icon>

                        <ul class="collapse__menu-right">
                            <a href="#" class="collapse__sublink-right">Data</a>
                            <a href="#" class="collapse__sublink-right">Group</a>
                            <a href="#" class="collapse__sublink-right">Members</a>
                        </ul>
                    </div>
                    <a href="#" class="nav__link-right">
                        <ion-icon name="settings-outline" class="nav__icon-right"></ion-icon>
                        <span class="nav__name-right">Settings</span>
                    </a>
                </div>
            </div>

            <a href="#" class="nav__link-right">
                <ion-icon name="log-out-outline" class="nav__icon-right"></ion-icon>
                <span class="nav__name-right">Log Out</span>
            </a>
        </nav>
    </div>
    <!--오른쪽 사이드바 끝-->
    <!--오른쪽 사이드바 끝-->


    
    
    <!-- 컨텐츠 시작-->
    <!-- 컨텐츠 시작-->

<!-- 게시판 생성 모달창 -->
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"
                aria-hidden="true">&times;</button>
              <h4 class="modal-title" id="myModalLabel">게시판 등록</h4>
            </div>
            <div class="modal-body">
              <div class="form-group">
                <label>게시판 이름</label> 
                <input class="form-control" name='boardName' value='New Reply!!!!'>
              </div>      
              <div class="form-group">
                <label>게시판 정보</label> 
                <input class="form-control" name='boardInfo' value='replyer'>
              </div>
              <div class="form-group">
                <label>작성자</label> 
                <input class="form-control" name='replyDate' value='2018-01-01 13:13'>
              </div>
      
            </div>
            
		<div class="modal-footer">
        	<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
        	<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
        	<button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
        	<button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
       </div>
       
		</div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->


   
    <!-- 컨텐츠 끝-->
    <!-- 컨텐츠 끝-->




    <!-- modal 모음-->
    <!-- <div class="row">
        <div class="modal" id="modal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        팀원초대
                        <button class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                            <input type="text" class="form-control" placeholder="이름 또는 이메일 입력">
                            <div class="modal-scroll">
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        <div class="thumnail-profile"></div>
                                        Lorem<button class="badge">초대</button>
                                    </li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>
                                    <li class="list-group-item">Ipsum</li>
                                    <li class="list-group-item">Dolor</li>

                                </ul>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 -->
 
    <script src="https://unpkg.com/ionicons@5.1.2/dist/ionicons.js"></script>
    <script src="/resources/post_and_board/sidebar-right.js"></script>
    <script src="/resources/post_and_board/sidebar-left.js"></script>
	<script type="text/javascript" src="/resources/js/reply.js"></script>

<script >

$(document).ready(function(){
	
	//모달창에 입력한 데이터 값 저장
    var modal = $(".modal");
    var modalInputReply = modal.find("input[name='boardName']");
    var modalInputReplyer = modal.find("input[name='boardInfo']");
    var modalInputReplyDate = modal.find("input[name='replyDate']");
    
    var modalModBtn = $("#modalModBtn");
    var modalRemoveBtn = $("#modalRemoveBtn");
    var modalRegisterBtn = $("#modalRegisterBtn");
	
	
	//모달창 닫기 버튼
    $("#modalCloseBtn").on("click", function(e){
    	
    	modal.modal('hide');
    });

	//게시판 생성 버튼 클릭시 모달창을 보여준다.
	$("#createBoard").on("click", function(e){
		
		e.preventDefault(); //<a>태그 기본이벤트 삭제
		
		 modal.find("input").val("");
	     modalInputReplyDate.closest("div").hide();
	     modal.find("button[id !='modalCloseBtn']").hide(); //Close버튼이 아니면 숨기기
	      
	     modalRegisterBtn.show();
		
		$(".modal").modal("show");
		
	}); // end createBoard
	
	
	
	
	
	
}); //end document.ready


</script>
