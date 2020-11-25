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
	<div class="jumbotron jumbotron-fluid mainheader">
		<div class="container">
			<h1 class="maintitle">Arent</h1>
			<p class="subtitle">빠르고 쉬운 계정 공유</p>
		</div>
	</div>
	<div class="topnav sticky-top">
				<c:forEach items="${menuList}" var="menu">
					<a class="mainmenu"> ${menu.mname} </a>
				</c:forEach>
		<div class="loginzone">
			<button class="btn btn-danger loginbtn" data-toggle="modal"
				data-target="#loginModal">Log In</button>
			<button class="btn btn-primary">join</button>
		</div>
	</div>
		<%@ include file="loginModal.jsp"%>