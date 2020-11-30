<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/x-handlebars-template"  id="reply-list-template" >
{{#each .}}
<div class="submenu" >
 	<div class="timeline-item" >
  		<span class="time">
    		<i class="fa fa-clock"></i>{{prettifyDate regdate}}
	 		<a class="btn btn-primary btn-xs" id="modifyReplyBtn" data-rno={{rno}}
	    		data-replyer={{replyer}} data-toggle="modal" data-target="#modifyModal">Modify</a>
  		</span>
	</div>
</div>
{{/each}}	
</script>
<script>
	window.onload = function() {
		$(".mainmenu").hover(function() {
			$(this).css("background", "white")
		}, function() {
			$(this).css("background", "#4c4c4d")
		})
	}
</script>