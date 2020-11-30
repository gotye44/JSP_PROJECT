<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page trimDirectiveWhitespaces="true"%>    

<div class="jumbotron text-center row" style="margin-bottom:0">
  <p>Footer</p>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/header.js"></script>

<script>
	var message="${msg}";
	if(message!=""){
		alert(message);
	}
</script>
	<% session.removeAttribute("msg"); %>
</body>
</html>
