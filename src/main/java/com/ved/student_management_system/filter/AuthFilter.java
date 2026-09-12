package com.ved.student_management_system.filter;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Component
public class AuthFilter implements Filter {

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        HttpSession session = request.getSession(false);

        boolean loggedIn = (session != null && session.getAttribute("loggedInUser") != null);
        String path = request.getRequestURI();

        boolean isPublicPath = path.equals("/login") || path.equals("/") || path.startsWith("/css");

        if (!loggedIn && !isPublicPath) {
            response.sendRedirect("/login");
        } else {
            chain.doFilter(req, res);
        }
    }
}