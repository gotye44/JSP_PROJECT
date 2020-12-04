<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page trimDirectiveWhitespaces="true" %>

<script>
	function goPage(url,mCode){
		// HTML5 지원브라우저에서 사용 가능
		if(typeof(history.pushState) == 'function'){
			// 현재 주소를 가져온다.
			var renewURL = location.href
			// 현재 주소 중 .do 뒷 부분이 잇다면 날려버린다.
			renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);
			
			if(mCode != 'M00'){
				renewURL += "?mCode="+mCode
			}
			
			// 페이지를 리로드하지 않고 페이지 주소만 변경할 때 사용
			history.pushState(mCode, null, renewURL)
		}else{
			location.href = "#"+mCode
		}
		
		$("#if_list").attr("src", "<%=request.getContextPath()%>"+url)
	}
</script>