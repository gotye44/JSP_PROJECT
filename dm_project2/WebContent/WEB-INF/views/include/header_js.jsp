<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
	window.onload = function() {
		$(".mainmenu").hover(function() {
			$(this).css("background", "white")
		}, function() {
			$(this).css("background", "black")
		})
	}
</script>