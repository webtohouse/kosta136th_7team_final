<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../../include/header.jsp"%>
<head>
<link rel="stylesheet" href="../../resources/css/btcInfoLand.css" />
<link rel="stylesheet" href="../../resources/css/river_community.css" />
</head>
<body id="page-top">
	<div id="main_img">
		<div class="row">
			<div class="col-lg-3 visible"></div>
		</div>
		<%@ include file="../../include/grandNav.jsp"%>
		<div class="container">
			<div class="page-header">
				<h1>
					리버 커뮤니티<small>_딜러 전문소식</small>
				</h1>
				<ul class="breadcrumb">
					<li><a href="/">Home</a></li>
					<li><a href="btcInfoLand">리버 커뮤니티</a></li>
					<li class="active">딜러 전문소식</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-body">
					<span class="page_title">이달의 추천 딜러 |</span> <span>비트리버 회원이면 누구나 전문 딜러로 활동 할 수 있습니다. 다양한 정보를 많은 회원들과 공유해 보시길 바랍니다.</span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="col-sm-6">
						<div class="dealer_photoshot">
							<img src="../../resources/img/dealer_test_img01.jpg">
						</div>
						<div class="dealer_room_title">딜러 카테고리: ${dealer.category}</div>
						<div class="dealer_position_title">딜러 포지션: ${dealer.user_nickName}</div>
					</div>
					<div class="col-sm-6 border_left_none">
						<div class="dealer_point">딜러 ${dealer.user_nickName} 님의 내공지수?</div>
						<!-- 이전 코드 입니다. 코드 반영시 참고 하세요. -->
						<!-- <div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="<c:out value="${dealer.score}"/>" aria-valuemin="0" aria-valuemax="100" style="width: <c:out value="${dealer.score}"/>%">
							<c:out value="${dealer.score}" />
						</div>
					</div> -->
						<!-- 디자인 코드 입니다. 코드 반영시 참고 하세요. -->
						<!-- <div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
							<span class="dealer_score">70%</span>
						</div>
					</div> -->
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
								<span class="dealer_score">70%</span>
							</div>
						</div>
						<div class="btn-group">
							<button type="button" class="btn btn-default" id="report">
								<span class="glyphicon glyphicon-bullhorn"> 신고하기</span>
							</button>
							<button type="button" class="btn btn-default" id="recommend">
								<span class="glyphicon glyphicon glyphicon-heart"> 추천하기</span>
							</button>
							<button type="button" class="btn btn-default" id="modify">
								<span class="glyphicon glyphicon glyphicon-ok"> 수정</span>
							</button>
							<button type="button" class="btn btn-default" id="remove">
								<span class="glyphicon glyphicon glyphicon-remove"> 삭제</span>
							</button>
						</div>
					</div>
					<!-- .border_left_none  -->
				</div>
			</div>
		</div>
		<!-- end of col-sm-4 column -->
	</div>
	<!-- end of row content -->
	<div>&nbsp;</div>
	<div class="container">
		<div>
			<div class="panel panel-default">
				<div class="panel-body">
					<span class="page_title">딜러 전문소식 |</span> <span>비트리버에서 활동하는 전문 딜러들의 전문 소식 특화된 정보를 가장빨리 만나볼 수 있습니다. </span>
				</div>
			</div>
		</div>
	</div>
	<!-- 딜러 전문소식 리스트 -->
	<div class="container">
		<div class="article_title ">
			<div class="board_readtitle">
				<h3>${pageMaker.title}</h3>
			</div>
			<span class="btcinfoland_writer">작성자 : ${pageMaker.writer}</span> <span class="btcinfoland_writeDate">작성일 : 2016-12-23<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${pageMaker.regi_date}" />
			</span> <span class="btcinfoland_write_readCount">조회수 : 21,234</span>
			<script>
				$(document).ready(function() {
					$('[data-toggle="tooltip"]').tooltip();
				});
			</script>
		</div>
		<div class="container">
			<p class="board_content">${pageMaker.content}</p>
		</div>
		<hr>
		<div class="container">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<div class="btn_area">
						<button type="button" class="btn btn-default" id="go_list_btn"  data-toggle="tooltip" title="이전글"><span id="previous_news_btn" class="glyphicon glyphicon-chevron-left"></span></button>
						<button type="button" class="btn btn-default" id="go_list_btn">글목록</button>
						<button type="button" class="btn btn-default" id="modify_btn">글수정</button>
						<button type="button" class="btn btn-default" id="delete_btn">글삭제</button>
						<button type="button" class="btn btn-default" id="delete_btn" data-toggle="tooltip" title="다음글"><span id="next_news_btn" class="glyphicon glyphicon-chevron-right"></span></button>
					</div>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
		<hr>
		<!-- 댓글 목록 -->
		<div class="container">
			<div class="row">
				<button type="button" class="btn btn-default" id="reply_list_btn"  data-toggle="tooltip" title="댓글 목록을 확인 합니다."><span class="glyphicon glyphicon-list"></span> 댓글보기</button>
				<button type="button" class="btn btn-default" id="write_reply_btn" data-toggle="tooltip" title="댓글 목록을 확인 합니다."><span class="glyphicon glyphicon-pencil"></span> 댓글달기</button>
			</div>
			<div class="row">
			<!-- 댓글목록 출력 -->
				<div id="reply_list">
					
				</div>
			</div>
		</div>
	</div>
	<!-- 전항 버튼 -->
	<form id="form_previous_news" action="/getPreviousNews">
		<input type="hidden" name="dealer_news_num" value="${pageMaker.dealer_news_num}" />
		<input type="hidden" name="currentPage" value="${pageMaker.currentPage}" />
	</form>
	<!-- 후항 버튼 -->
	<form id="form_next_news" action="/getNextNews">
		<input type="hidden" name="dealer_news_num" value="${pageMaker.dealer_news_num}" />
		<input type="hidden" name="currentPage" value="${pageMaker.currentPage}" />
	</form>
	<!-- 댓글 등록 모달. 모달창 이름: #modal_write_reply -->
	<div class="modal fade" id="modal_write_reply" role="dialog">
		<div class="modal-dialog">
			<!-- modal content -->
			<div class="modal-content">
				<!-- 모달 윗부분 : X 버튼 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<!-- #write_reply_content, #reply_agree_btn, #reply_cancel_btn -->
					<div class="form-group">
						<label for="write_reply_content">내용</label>
						<input type="text" class="form-control" name="content" id="write_reply_content" placeholder="내용을 입력하세요" />
						<br>
						<input type="button" id="reply_agree_btn" value="보내기" />
						<input type="button" id="reply_cancel_btn" value="취소" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 목록 버튼 클릭 시 스크립트 실행을 위한 폼 : #form_go_list-->
	<form id="form_go_list" action="/btcInfoLand_board_read_to_list">
		<input type="hidden" name="dealer_news_num" value="${pageMaker.dealer_news_num}" />
		<input type="hidden" name="currentPage" value="${pageMaker.currentPage}" />
	</form>
	<!-- 삭제 버튼 클릭 시 스크립트 실행을 위한 폼 : form_delete-->
	<form id="form_delete" action="/deleteNews">
		<input type="hidden" name="dealer_news_num" value="${pageMaker.dealer_news_num}" />
		<input type="hidden" name="currentPage" value="${pageMaker.currentPage}" />
	</form>
	<!-- 댓글 입력 최종 전송폼 : #form_write_reply -->
	<form id="form_write_reply" role="form" action="/writeReply">
		<input type="hidden" name="content" />
		<input type="hidden" name="dealer_news_num" value="${pageMaker.dealer_news_num}" />
		<input type="hidden" name="reply_num" />
	</form>
	<!-- 댓글 수정 전송 폼 -->
	<form id="form_modify" action="/modifyNews">
		<input type="hidden" name="dealer_news_num" value="${pageMaker.dealer_news_num}" />
		<input type="hidden" name="title" />
		<input type="hidden" name="content" />
	</form>
	<!-- 목록으로 돌아가기 버튼: #go_list_btn 클릭 -->
	<script>
		$(document).ready(function() {
			$('#go_list_btn').on('click', function() {
				$('#form_go_list').submit();
			});
		});
	</script>
	<!-- 글수정 버튼: #modifyBtn 클릭 -->
	<script>
		$(document)
				.ready(
						function() {
							$('#modify_btn')
									.on(
											'click',
											function() {

												/* 로그인 테스트 시작 */
												if (login == null) {
													alert('로그인을 먼저 해 주세요');
													return;
												}
												/* 끝 */

												/* 본인 검사 */
												if (login != '${pageMaker.writer}') {
													alert('본인이 쓴 글이 아니면 수정할 수 없습니다');
													return;
												}
												/* 끝 */

												if ($('textarea').prop(
														'readOnly') == true) {
													/* 윤곽선이 나타난다 */
													$('#dealer_news_title')
															.attr("style",
																	"border-style: solid; width: 100%");
													$('textarea')
															.attr("style",
																	"border-style: solid; width: 100%");
													/* 읽기 전용이 풀린다 */
													$('input[type = "text"]')
															.attr("readOnly",
																	false);
													$('textarea').attr(
															"readOnly", false);
													/* 버튼의 이름이 바뀐다 */
													$(this).val('저장');
												} else {
													$(
															'#form_modify input[name="title"]')
															.val(
																	$(
																			'#dealer_news_title')
																			.val());
													$(
															'#form_modify input[name="content"]')
															.val(
																	$(
																			'#dealer_news_content')
																			.val());
													$('#form_modify').submit();
												}
											});

						});
	</script>
	<!-- 마이페이지 이동 버튼: .reply_writer 클릭 -->
	<script>
		$(document).ready(function() {
			$('body').on('click', '.reply_writer', function(e) {
				e.preventDefault();

				/* 본인 테스트 */
				if (login != $(this).text()) {
					return;
				}
				/* 끝 */

				location.href = '/myPage';

			});
		});
	</script>
	<!-- 글삭제 버튼: #deleteBtn 클릭 -->
	<script>
		$(document).ready(function() {
			$('#delete_btn').on('click', function() {
				/* 로그인 테스트 시작 */
				if (login == null) {
					alert('로그인을 먼저 해 주세요');
					return;
				}
				/* 끝 */

				/* 본인 테스트 */
				if (login != '${pageMaker.writer}') {
					alert('본인이 쓴 글이 아니면 삭제할 수 없습니다');
					return;
				}
				/* 끝 */

				$('#form_delete').submit();
			});
		});
	</script>
	<!-- 댓글삭제 버튼: #delete_reply 클릭 -->
	<script>
		$(document).ready(function() {
			$('body').on('click', '#delete_reply', function() {

				/* 로그인 테스트 시작 */
				if (login == null) {
					alert('로그인을 먼저 해 주세요');
					return;
				}
				/* 끝 */

				/* 본인 검사 */
				if (login != $(this).siblings('.reply_writer').text()) {
					alert('본인이 아니면 삭제할 수 없습니다');
					return;
				}
				/* 끝 */

				reply_num = $(this).parent().attr('id');

				$.ajax({
					type : 'post',
					url : '/deleteReply',
					data : {
						'reply_num' : reply_num
					}
				}).done(function() {
					/* done은 ajax의 성공, 실패 여부와 상관 없이 결과가 끝난후 실행한다. */
					getDealerNewsReplyList();
				});

			});
		});
	</script>
	<!-- 답글 모달창을 호출하는 답글 옆에 써진 '답글' : #write_reply 클릭시 글번호 변경 -->
	<script>
		$(document).ready(function() {
			$('body').on('click', '#write_reply', function(e) {

				/* 로그인 테스트 시작 */
				if (login == null) {
					alert('로그인을 먼저 해 주세요');
					return;
				}
				/* 로그인 테스트 끝 */

				/* 어느 댓글번호에 대한 답글인가 */
				reply_num = $(this).parent().attr('id');
				/* 모달창 나타난다 */
				$('#modal_write_reply').modal("show");
			});
		});
	</script>
	<!-- 답글 모달창을 호출하는 '답글쓰기' 버튼 : #write_reply_btn 클릭시 글번호 변경 -->
	<script>
		$(document).ready(function() {
			$('body').on('click', '#write_reply_btn', function(e) {

				/* 로그인 테스트 시작 */
				if (login == null) {
					alert('로그인을 먼저 해 주세요');
					return;
				}
				/* 로그인 테스트 끝 */

				/*새로 답글 쓰기 버튼을 눌러 쓰는 답글은 누구에 대한 답글도 아니다*/
				reply_num = 0;
				$('#modal_write_reply').modal("show");
			});
		});
	</script>
	<!-- 초기 설정 : 시작-->
	<script>
		//어느 댓글에 대하여 답글을 다는가 
		var reply_num = null;
	</script>
	<c:if test="${not empty login}">
		<script>
			//로그인 되어 있으면
			var login = '${login.USER_EMAIL}';
		</script>
	</c:if>
	<c:if test="${empty login}">
		<script>
			//로그인 안 되 있으면
			var login = null;
		</script>
	</c:if>
	<!-- 초기 설정 : 끝 -->
	<!-- 제출 버튼 클릭 -->
	<script>
		$(document)
				.ready(
						function() {
							$('#reply_agree_btn')
									.on(
											'click',
											function(e) {

												$('input[name="reply_num"]')
														.val(reply_num);
												$('input[name="content"]')
														.val(
																$(
																		'#write_reply_content')
																		.val());
												/* 서버에 댓글 등록을 요청하고 */
												$
														.ajax(
																{
																	url : $(
																			'#form_write_reply')
																			.attr(
																					"action"),
																	type : 'POST',
																	data : $(
																			'#form_write_reply')
																			.serializeArray(),
																	success : function(
																			data) {
																		$
																				.ajax({
																					url : '/getDealerNewsReplyList',
																					type : 'POST',
																					data : $(
																							'#form_write_reply')
																							.serializeArray(),
																					success : function() {
																					}
																				});
																	}
																})
														.done(
																function() {
																	/* done은 ajax의 성공, 실패 여부와 상관 없이 결과가 끝난후 실행한다. */
																	getDealerNewsReplyList();
																	$(
																			'#modal_write_reply')
																			.modal(
																					"hide");
																});
											});
						});
	</script>
	<!-- 댓글보기 버튼 클릭 시 스크립트 실행을 위한 폼.-->
	<script>
		$(document).ready(function() {
			$('#reply_list_btn').on('click', function() {
				getDealerNewsReplyList();
			});
		});
	</script>
	<!-- 댓글 목록 서버에서 요청하는 함수 -->
	<script>
		function getDealerNewsReplyList() {
			$.ajax({
				type : 'post',
				url : '/getDealerNewsReplyList',
				/* 실제 쓰이는 것은 dealer_news_num */
				data : {
					'dealer_news_num' : '${pageMaker.dealer_news_num}',
					'perPageNum' : '${pageMaker.perPageNum}',
					'perPagebarPage' : '${pageMaker.perPagebarPage}',
					'firstPage' : '${pageMaker.firstPage}',
					'lastPage' : '${pageMaker.lastPage}'
				},
				success : function(data) {
					listReply(data);
				}
			});
		}
	</script>
	
	<!-- 댓글 '#reply_list' 아래로 주렁주렁 달기 함수 -->
	<script>
		function listReply(data) {
			$('#reply_list').empty();
			//댓글을 쓰는 문단
			//replyList
			for (var i = 0; i < data.length; i++) {

				/*  <<설계도>> */
				/*
					<div "#replyList">
						<tr>
							Lorem Impsum Dol Amet
							<a></a>
						</tr>						
				 */
				$('#reply_list')
						.append('<div id = "' + data[i].reply_num + '" class="reply_list_row">');
						
				if (data[i].indent == 0) {
					$('#' + data[i].reply_num).append('<span class="glyphicon glyphicon-bullhorn"></span>' + '&nbsp;&nbsp;');
				} else {
					for (var j = 0; j < data[i].indent; j++) {
						$('#' + data[i].reply_num).append('&nbsp;&nbsp;&nbsp;&nbsp;');
					}
					$('#' + data[i].reply_num).append('<span class="glyphicon glyphicon-comment"></span>' + '&nbsp;');
				}

				$('#' + data[i].reply_num).append(
						'<span class="reply_writer">작성자 :</span> <a href = "#" class = "reply_writer">'
								+ data[i].writer + '</a>님');
				$('#' + data[i].reply_num).append('&nbsp;&nbsp;');
				$('#' + data[i].reply_num).append(
						"<span class='reply_date'>작성일 :</span> " + (new Date(data[i].regi_date).getDate())
								+ "일"
								+ (new Date(data[i].regi_date).getHours())
								+ "시"
								+ (new Date(data[i].regi_date).getMinutes())
								+ "분");
				$('#' + data[i].reply_num).append('&nbsp;&nbsp;');
				
				$('#' + data[i].reply_num)
						.append(
								'<button type="button" class="btn btn-default  btn-sm" id="write_reply">답글</button>');
				$('#' + data[i].reply_num).append('&nbsp;&nbsp;');
				
				$('#' + data[i].reply_num)
						.append(
								'<button type="button" class="btn btn-default  btn-sm" id="delete_reply">삭제</button>');
				$('#' + data[i].reply_num).append('<p class="reply_content"><span class="reply_content_title">내용 :</span> ' + data[i].content + '</p>');
			}
			$('#reply_list').append('</div>');

		}
	</script>
	<!-- 전글 이동 버튼 -->
	<script>
		$(document).ready(function() {
			$('body').on('click', '#previous_news_btn', function() {
				$('#form_previous_news').submit();
			});
		});
	</script>
	<!-- 다음글 이동 버튼 -->
	<script>
		$(document).ready(function() {
			$('body').on('click', '#next_news_btn', function() {
				$('#form_next_news').submit();
			});
		});
	</script>
</body>
<%@ include file="../../include/footer.jsp"%>