<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal" id="loginModal">
	<div class="modal-dialog modal-sm" style="margin-top: 150px;">
		<div class="modal-content loginmodal-content">

			<!-- Modal Header -->
			<div class="modal-header loginmodal-header">Log In</div>

			<!-- Modal body -->
			<form action="login.do">
				<div class="modal-body loginModal-body">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text idpw" style="background: black;color: navajowhite;">&nbsp;ID</span>
						</div>
						<input type="text" class="form-control">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text idpw" style="background: black;color: navajowhite;">PW</span>
						</div>
						<input type="text" class="form-control">
					</div>
				</div>
				<div style="text-align: right; padding-right: 10px;">
					<button type="submit" class="btn btn-primary">로그인</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">닫기</button>
				</div>
			</form>

		</div>
	</div>
</div>