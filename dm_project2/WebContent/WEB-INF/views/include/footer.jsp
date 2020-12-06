<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page trimDirectiveWhitespaces="true"%>

<div class="row footer">
	<p class="col-12">상호명 : 에이렌트  대표명 : 김동민  사업자등록번호 : 144-81-32887</p>
</div>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<script>
	var message="${msg}";
	if(message!=""){
		alert(message);
	}
</script>
<% session.removeAttribute("msg"); %>
<%@ include file="footer_js.jsp" %>
</body>
</html>
