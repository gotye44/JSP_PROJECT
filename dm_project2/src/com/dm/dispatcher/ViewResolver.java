package com.dm.dispatcher;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewResolver {
	public static void view(HttpServletRequest request, HttpServletResponse response, String url) throws ServletException, IOException{
		if(url.indexOf("re:") > -1) {
			url = request.getContextPath()+url.replace("re:", "");
			response.sendRedirect(url);
		}else {
			url = "/WEB-INF/views" + url + ".jsp";
			request.getRequestDispatcher(url).forward(request, response);
		}
		
	}
}
