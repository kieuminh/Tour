package com.hakunamatata.springmvc.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author BaoBB
 *
 */
@WebFilter("/blogdetail/*")
public class FilterCmt implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest)request).getSession();
		String value = (String)session.getAttribute("username");
		if( value == null || value.isEmpty()) {
			String queryString = ((HttpServletRequest)request).getQueryString();
			request.setAttribute("URL", ((HttpServletRequest) request).getRequestURI()+"?"+queryString);
			request.getRequestDispatcher("/login/").forward(request, response);
		}else {
			chain.doFilter(request, response);
		}
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
