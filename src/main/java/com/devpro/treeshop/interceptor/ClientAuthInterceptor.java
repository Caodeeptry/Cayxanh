package com.devpro.treeshop.interceptor;

import com.devpro.treeshop.model.Users;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class ClientAuthInterceptor implements HandlerInterceptor {

    private boolean isAdmin(Users user) {
        return user != null && user.getRoles() != null
                && "ADMIN".equalsIgnoreCase(user.getRoles().getName());
    }

    private boolean isPublicClientRoute(String uri) {
        return uri.matches(".*/client/(indexs|categories|products(/.*)?|about|contact|login|logout|register|auth/.*|chatbot/.*|cart/(add|update|remove|count)|wishlist/(toggle|count|move-to-cart)|payment/.*)$");
    }

    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws Exception {
        String uri = req.getRequestURI();
        HttpSession session = req.getSession(false);
        Users user = session != null ? (Users) session.getAttribute("user") : null;

        if (isPublicClientRoute(uri)) {
            return true;
        }

        if (user == null) {
            res.sendRedirect(req.getContextPath() + "/client/login?next=" + req.getRequestURI());
            return false;
        }

        if (isAdmin(user)) {
            res.sendRedirect(req.getContextPath() + "/admin");
            return false;
        }
        return true;
    }
}
