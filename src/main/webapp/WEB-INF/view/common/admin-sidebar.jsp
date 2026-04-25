<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="sidebar">
    <div class="brand">
        <div class="brand-icon"><i class="fas fa-leaf"></i></div>
        <div>
            <h4 class="mb-0">TREESHOP</h4>
            <small>Admin Panel</small>
        </div>
    </div>

    <nav class="nav flex-column mt-4">
        <a href="<c:url value='/admin'/>" class="nav-link ${param.active == 'dashboard' ? 'active' : ''}">
            <i class="fas fa-chart-line"></i><span>Dashboard</span>
        </a>
        <a href="<c:url value='/admin/products'/>" class="nav-link ${param.active == 'products' ? 'active' : ''}">
            <i class="fas fa-tree"></i><span>Sản phẩm</span>
        </a>
        <a href="<c:url value='/admin/categories'/>" class="nav-link ${param.active == 'categories' ? 'active' : ''}">
            <i class="fas fa-list"></i><span>Danh mục</span>
        </a>
        <a href="<c:url value='/admin/orders'/>" class="nav-link ${param.active == 'orders' ? 'active' : ''}">
            <i class="fas fa-shopping-cart"></i><span>Đơn hàng</span>
        </a>
        <a href="<c:url value='/admin/users'/>" class="nav-link ${param.active == 'users' ? 'active' : ''}">
            <i class="fas fa-users"></i><span>Người dùng</span>
        </a>
        <a href="<c:url value='/admin/messages'/>" class="nav-link ${param.active == 'messages' ? 'active' : ''}">
            <i class="fas fa-envelope-open-text"></i><span>Tin nhắn</span>
        </a>
    </nav>

    <div class="sidebar-footer">
        <a href="<c:url value='/client/logout'/>" class="nav-link nav-link-logout">
            <i class="fas fa-sign-out-alt"></i><span>Đăng xuất</span>
        </a>
    </div>
</div>
