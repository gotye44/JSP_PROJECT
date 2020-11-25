<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
	<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
			<h3>회원가입</h3>
			<form>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"></span>
					</div>
					<input name="" class="form-control" placeholder="아이디 입력" type="text">
				</div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"></span>
					</div>
					<input name="" class="form-control" placeholder="이름 입력" type="text">
				</div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
					</div>
					<input name="" class="form-control" placeholder="example@naver.com" type="email">
				</div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"></span>
					</div>
					<select class="custom-select" style="max-width: 70px;">
						<option selected value="0">010</option>
						<option value="1">011</option>
						<option value="2">018</option>
						<option value="3">013</option>
					</select>
					<input name="" class="form-control" placeholder="0000-0000" type="text">
				</div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"></span>
					</div>
					<input class="form-control" placeholder="패스워드 입력" type="password">
				</div>
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-lock"></i> </span>
					</div>
					<input class="form-control" placeholder="패스워드 확인" type="password">
				</div>                                
				<div class="form-group">
					<button type="submit" class="btn btn-dark btn-block"> 가입하기 </button>
				</div> 
			</form>
		</article>
	</div>
</body>
