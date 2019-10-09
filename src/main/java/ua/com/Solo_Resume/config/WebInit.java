package ua.com.Solo_Resume.config;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;
import ua.com.Solo_Resume.filter.ResumeFilter;
import javax.servlet.*;
import java.util.EnumSet;


public class WebInit implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext container) throws ServletException {
        WebApplicationContext webApplicationContext = createWebApplicationContext(container);
        container.setSessionTrackingModes(EnumSet.of(SessionTrackingMode.COOKIE));
        container.addListener(new ContextLoaderListener(webApplicationContext));

        registerFilters(container, webApplicationContext);
        registerMVCDispatcherServlet(container, webApplicationContext);
    }

    private WebApplicationContext createWebApplicationContext(ServletContext container) {
        AnnotationConfigWebApplicationContext configApplicationContext = new AnnotationConfigWebApplicationContext();
        configApplicationContext.scan("ua.com.Solo_Resume.config");
        configApplicationContext.setServletContext(container);
        configApplicationContext.refresh();
        return configApplicationContext;
    }

    private void registerFilters(ServletContext container, WebApplicationContext webApplicationContext) {
        registerFilter(container, webApplicationContext.getBean(ResumeFilter.class));
        registerFilter(container, new CharacterEncodingFilter("UTF-8", true));

    }

    private void registerFilter(ServletContext container, Filter filter, String... filterNames) {
        String filterName = filterNames.length > 0 ? filterNames[0] : filter.getClass().getSimpleName();
        container.addFilter(filterName, filter).addMappingForUrlPatterns(null, true, "/");
    }

    private void registerMVCDispatcherServlet(ServletContext servletContext, WebApplicationContext webApplicationContext) {
        ServletRegistration.Dynamic registration = servletContext.addServlet("dispatcherServlet", new DispatcherServlet(webApplicationContext));
        registration.setLoadOnStartup(1);
        registration.addMapping("/");
    }
}

