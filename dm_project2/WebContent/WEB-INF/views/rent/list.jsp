<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="rentList" value="${dataMap.rentList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />

<div class="content-wrapper">
	<div class="row">
		<div class="col-sm-2" style="font-weight: 800; padding-top: 6px;">대여
			/ 멜론</div>
		<div class="col-sm-8"></div>
		<div class="col-sm-2" style="text-align: right;">
			<button class="btn btn-danger " style="width: 120px">게시글 등록
			</button>
		</div>
	</div>
	<div style="height: 5px"></div>
	<div id="accordion">
		<div class="card bg-secondary text-white">
			<div class="card-header"
				style="padding-right: 40px; padding-left: 40px;">
				<div class="row" style="text-align: center;">
					<div class="col-md-1">구분</div>
					<div class="col-md-1">작성자</div>
					<div class="col-md-5">제목</div>
					<div class="col-md-2">시작일자 ~ 종료일자</div>
					<div class="col-md-1">가격</div>
					<div class="col-md-2">등록일자</div>
				</div>
			</div>
			<div class="card-body" style="color: black; height: 500px">
				<c:forEach var="rent" items="${rentList}" varStatus="status">
					<div class="card">
						<div class="card-header card-rent-h" data-toggle="collapse"
							href="#col${rent.bonum}">
							<div class="row" style="text-align: center;">
								<div class="col-md-1">${rent.bonum}/멜론</div>
								<div class="col-md-1">${rent.writer}</div>
								<div class="col-md-5"
									style="text-align: left; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${rent.title }</div>
								<div class="col-md-2">
									<fmt:formatDate value="${rent.start_date}" pattern="yyyy-MM-dd" />
									~
									<fmt:formatDate value="${rent.end_date}" pattern="yyyy-MM-dd" />
								</div>
								<div class="col-md-1">${rent.price}원</div>
								<div class="col-md-2">
									<fmt:formatDate value="${rent.regdate}" pattern="yyyy-MM-dd" />
								</div>
							</div>
						</div>
						<div id="col${rent.bonum}" class="collapse"
							data-parent="#accordion">
							<div class="card-body card-rent-b"
								style="max-height: 200px; overflow-y: scroll; min-height: 200px;">
								${rent.content }</div>
						</div>
					</div>
					<div style="height: 5px"></div>
				</c:forEach>





				<div class="card">
					<div class="card-header card-rent-h" data-toggle="collapse"
						href="#col11" style="font-family: 'Noto Sans KR', sans-serif;">
						<div class="row" style="text-align: center;">
							<div class="col-md-1 rigthline">11 / 멜론</div>
							<div class="col-md-1 rigthline">mimi</div>
							<div class="col-md-5 rigthline"
								style="text-align: left; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">제목
								부분</div>
							<div class="col-md-2 rigthline">20.12.07~20.12.31</div>
							<div class="col-md-1 rigthline">5,000원</div>
							<div class="col-md-2">2020.12.07</div>
						</div>
					</div>
					<div id="col11" class="collapse" data-parent="#accordion">
						<div class="card-body card-rent-b"
							style="max-height: 200px; overflow-y: scroll; min-height: 200px;">
							내용 부분</div>
						<div class="card-footer card-rent-f">
							<button class="btn btn-primary">test</button>
							<button class="btn btn-primary">test</button>
							<button class="btn btn-primary">test</button>
						</div>
					</div>

				</div>
				<div style="height: 5px"></div>
				<div class="card">
					<div class="card-header card-rent-h" data-toggle="collapse"
						href="#col12" style="font-family: 'Noto Sans KR', sans-serif;">
						<div class="row" style="text-align: center;">
							<div class="col-md-1 rigthline">11 / 멜론</div>
							<div class="col-md-1 rigthline">mimi</div>
							<div class="col-md-5 rigthline"
								style="text-align: left; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">제목
								부분</div>
							<div class="col-md-2 rigthline">20.12.07~20.12.31</div>
							<div class="col-md-1 rigthline">5,000원</div>
							<div class="col-md-2">2020.12.07</div>
						</div>
					</div>
					<div id="col12" class="collapse" data-parent="#accordion">
						<div class="card-body card-rent-b"
							style="max-height: 200px; overflow-y: scroll; min-height: 200px;">
							내용 부분</div>
						<div class="card-footer card-rent-f">
							<button class="btn btn-primary">test</button>
							<button class="btn btn-primary">test</button>
							<button class="btn btn-primary">test</button>
						</div>
					</div>
				</div>






			</div>
			<div class="card-footer">
				<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
			</div>
		</div>
	</div>
	<br>

</div>
