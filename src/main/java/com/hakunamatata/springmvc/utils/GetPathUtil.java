package com.hakunamatata.springmvc.utils;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

public class GetPathUtil {
	public GetPathUtil() {
		super();
	}
	public String getIdePath() {
		return (new File("").getAbsolutePath());
	}
	public String getRuntimePath() {
		String localUri = this.getClass().getResource("/../../").getPath();
		return new File(localUri).toString();
	}
	public String getRuntimePath(HttpServletRequest request) {
		 return request.getSession().getServletContext().getRealPath("/");
		 //.getContextPath();
	}

	public String getWorkspacePath() {
		String runtimePath = getRuntimePath();
		
		return runtimePath.substring(0, runtimePath.indexOf(".metadata"));
	}
	
	public String getProjectPath() {
		String runtimePath = getRuntimePath();
		String projectName = runtimePath.substring(runtimePath.lastIndexOf("\\")).substring(1);
		return getWorkspacePath()+projectName+"\\";
	}
	@Override
	public String toString() {
		return "Project path : "+ getProjectPath();
	}
	
}
