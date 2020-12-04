<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page trimDirectiveWhitespaces="true"%>

<div class="jumbotron text-center row" style="margin-bottom: 0">
	<p>상호명 : 이브레인  대표명 : 노상범  사업자등록번호 : 144-81-32887</p><br>
	<p>문의 : info@okky.kr 주소 : 서울 강남구 봉은사로 303 TGL경복빌딩 502호 (06103)</p><br> 
	<p>@ 2020 eBrain Management</p>
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
