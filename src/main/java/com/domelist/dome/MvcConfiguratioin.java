package com.domelist.dome;

import com.domelist.dome.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfiguratioin implements WebMvcConfigurer {

    /* 로그인 인터셉터 추가 */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/writePost","/modifyPost","/deletePost");
    }
}
