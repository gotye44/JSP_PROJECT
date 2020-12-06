<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>동민프로젝트</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/header.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.fakeimg {
	height: 200px;
	background: #aaa;
}
</style>
</head>
<body>
	<div class="jumbotron jumbotron-fluid mainheader row">
		<div class="col-sm-3"></div>
		<div class="container col-sm-6">
			<h1 class="maintitle" onclick="location.href='<%=request.getContextPath()%>/main.do'">Arent</h1>
			<p class="subtitle">빠르고 쉬운 계정 공유</p>
		</div>
		<div class="col-sm-3 loginzone">
			<c:if test="${not empty loginUser}">
			${loginUser.name}님 환영합니다.
			</c:if>
			<c:if test="${empty loginUser}">
				<button class="btn btn-danger loginbtn" data-toggle="modal"
					data-target="#loginModal">Log In</button>
				<button class="btn joinbtn" data-toggle="modal"
					data-target="#joinModal">join</button>
			</c:if>
		</div>
	</div>
	<div class="row mainmenubar">
		<c:forEach items="${menuList}" var="menu">
			<div class="dropdown mainmenu">
				<button class="dropbtn" onclick="goPage('${menu.murl}');">${menu.mname}</button>
				<c:if test="${menu.mname ne 'HOME' }">
					<div class="dropdown-content subMenuList">
						<c:forEach items="${menu.subMenuList}" var="subM">
							<a href="javascript:goPage('${subM.murl}');">${subM.mname}</a>
						</c:forEach>
					</div>
				</c:if>
			</div>
		</c:forEach>
	</div>
	<%@ include file="loginModal.jsp"%>
	<%@ include file="joinModal.jsp"%>
</body>