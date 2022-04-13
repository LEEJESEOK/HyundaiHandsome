package util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
작성자  : 고석준
클래스 설명 : 서블릿 CommandPattern을 위한 인터페이스 
*/
public interface Action {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
