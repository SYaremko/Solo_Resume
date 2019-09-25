package ua.com.Solo_Resume.filter;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Component
public class ResumeFilter implements Filter {

    @Value("${application.production}")
    private boolean production;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String requestUrl = request.getRequestURI();
        request.setAttribute("REQUEST_URL", requestUrl);
        try {
            filterChain.doFilter(request, response);
        } catch (Throwable e) {
            handleException(e, requestUrl, response);
        }
    }

    private void handleException(Throwable e, String requestUrl, HttpServletResponse resp) throws IOException, ServletException {
        if (production) {
            if ("/error".equals(requestUrl)) {
                throw new ServletException(e);
            } else {
                resp.sendRedirect("/error?url=" + requestUrl);
            }
        } else {
            throw new ServletException(e);
        }
    }

    @Override
    public void destroy() {
    }
}
