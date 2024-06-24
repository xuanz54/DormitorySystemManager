package com.interceptor;

import com.po.Admin;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 登录拦截器
 */
public class Loginlnterceptor implements HandlerInterceptor {
    //在请求处理器(Controller)处理请求之前被调用
    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        // 获取请求的URL
        String url = request.getRequestURI();
        // URL:除了login.jsp是可以公开访问的，其它的URL都进行拦截控制
        if(url.indexOf("/login")>=0){
            return true;
        }
        // 获取Session
        HttpSession session = request.getSession();
        Object admin =  session.getAttribute("admin");
        // 判断Session中是否有用户数据，如果有，则返回true,继续向下执行
        if(admin != null){
            return true;
        }
        // 不符合条件的给出提示信息，并转发到主页面
        request.setAttribute("msg", "您还没有登录，请先登录！");
        request.getRequestDispatcher("/")
                .forward(request, response);
        return false;
    }
    //在请求处理器(Controller)执行处理之后，但在视图渲染之前被调用
    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
    }
    //在整个请求完成（包括视图渲染）之后调用
    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
    }
}
