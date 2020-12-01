<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="modal" id="joinModal">
	<div class="modal-dialog modal-sm" style="margin-top: 150px;">
		<div class="modal-content joinmodal-content">

			<!-- Modal Header -->
			<div class="modal-header joinmodal-header">Log In</div>

			<!-- Modal body -->
			<form action="join.do">
				<div class="modal-body joinModal-body">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text idpw">&nbsp;ID</span>
						</div>
						<input type="text" class="form-control">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text idpw">PW</span>
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