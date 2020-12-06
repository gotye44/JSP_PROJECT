<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page trimDirectiveWhitespaces="true" %>

<script>
	function goPage(url){
		if(url == "/main.do"){
			location.reload()
		}
		if(url != ""){
			$("#if_list").attr("src", "<%=request.getContextPath()%>"+url)
		}
	}
</script>