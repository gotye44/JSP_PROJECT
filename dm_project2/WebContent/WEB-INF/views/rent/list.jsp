<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="rentList" value="${dataMap.rentList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />

<div class="content-wrapper">
	<div>
		<p class="" style="font-weight: 800">대여 / 멜론</p>
	</div>
	<div id="accordion">
		<div class="card bg-secondary text-white">
			<div class="card-header"
				style="padding-right: 40px; padding-left: 40px;">
				<div class="row" style="text-align: center;">
					<div class="col-lg-1">구분</div>
					<div class="col-lg-1">작성자</div>
					<div class="col-lg-5">제목</div>
					<div class="col-lg-2">시작일자 ~ 종료일자</div>
					<div class="col-lg-1">가격</div>
					<div class="col-lg-2">등록일자</div>
				</div>
			</div>
			<div class="card-body" style="color: black; height: 500px">
				<c:forEach var="rent" items="${rentList}" varStatus="status">
					<div class="card">
						<div class="card-header" data-toggle="collapse"
							href="#col${rent.bonum}"
							style="font-family: 'Noto Sans KR', sans-serif;">
							<div class="row" style="text-align: center;">
								<div class="col-lg-1">${rent.bonum}/ 멜론</div>
								<div class="col-lg-1">${rent.writer}</div>
								<div class="col-lg-5"
									style="text-align: left; overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${rent.title }</div>
								<div class="col-lg-2">
									<fmt:formatDate value="${rent.start_date}" pattern="yyyy-MM-dd" />
									~
									<fmt:formatDate value="${rent.end_date}" pattern="yyyy-MM-dd" />
								</div>
								<div class="col-lg-1">${rent.price}원</div>
								<div class="col-lg-2">
									<fmt:formatDate value="${rent.regdate}" pattern="yyyy-MM-dd" />
								</div>
							</div>
						</div>
						<div id="col${rent.bonum}" class="collapse"
							data-parent="#accordion">
							<div class="card-body"
								style="max-height: 200px; overflow-y: scroll; min-height: 200px;">
								${rent.content }</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="card-footer">
				<%@ include file="/WEB-INF/views/common/pagination.jsp"%>
			</div>
		</div>
	</div>
	<br>

</div>
