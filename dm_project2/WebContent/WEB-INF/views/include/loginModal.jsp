<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal" id="loginModal">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
      	<h3>Log In</h3>
      </div>

      <!-- Modal body -->
	<form action="login.do">
      <div class="modal-body">
			<div class="form-group">
				<label for="id">ID:</label>
				<input type="text" class="form-control" id="id" name="id">
			</div>
			<div class="form-group">
				<label for="pwd">PWD:</label>
				<input type="password" class="form-control" id="pwd" name="pwd">
			</div>
      </div>
	  <div style="text-align: right; padding-right: 10px;">
	  	<a href="registForm.do">계정이 없으신가요??</a>
	  </div>
      <!-- Modal footer -->
      <div class="modal-footer">
      	<button type="submit" class="btn btn-primary">로그인</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
      </div>
	</form>

    </div>
  </div>
</div>