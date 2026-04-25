<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
    <nav class="navbar navbar-expand-lg client-navbar sticky-top">
        <div class="container">
            <a class="navbar-brand client-brand" href="<c:url value='/client/indexs'/>">
                <span class="brand-mark"><i class="fa-solid fa-seedling"></i></span>
                <span>
                    <strong>Tree Shop</strong>
                    <small>Green lifestyle</small>
                </span>
            </a>
            <button class="navbar-toggler client-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#clientNavbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="clientNavbarNav">
                <ul class="navbar-nav mx-auto client-nav-links">
                    <li class="nav-item"><a class="nav-link ${param.active == 'home' ? 'active' : ''}" href="<c:url value='/client/indexs'/>"><i class="fa-solid fa-house"></i><span>Trang chủ</span></a></li>
                    <li class="nav-item"><a class="nav-link ${param.active == 'categories' ? 'active' : ''}" href="<c:url value='/client/categories'/>"><i class="fa-solid fa-seedling"></i><span>Sản phẩm</span></a></li>
                    <li class="nav-item"><a class="nav-link ${param.active == 'about' ? 'active' : ''}" href="<c:url value='/client/products'/>"><i class="fa-solid fa-circle-info"></i><span>Giới thiệu</span></a></li>
                    <li class="nav-item"><a class="nav-link ${param.active == 'contact' ? 'active' : ''}" href="<c:url value='/client/contact'/>"><i class="fa-regular fa-message"></i><span>Liên hệ</span></a></li>
                </ul>
                <div class="client-nav-actions">
                    <a class="icon-action ${param.active == 'wishlist' ? 'active' : ''}" href="<c:url value='/client/wishlist'/>">
                        <i class="fa-regular fa-heart"></i>
                        <span class="count-badge wishlist-badge">0</span>
                    </a>
                    <a class="icon-action ${param.active == 'cart' ? 'active' : ''}" href="<c:url value='/client/cart'/>">
                        <i class="fa-solid fa-bag-shopping"></i>
                        <span class="count-badge cart-badge">0</span>
                    </a>
                    <c:choose>
                        <c:when test="${not empty currentUser}">
                            <div class="dropdown">
                                <button class="btn account-pill dropdown-toggle" data-bs-toggle="dropdown">
                                    <i class="fa-regular fa-user"></i>
                                    <span>${currentUser.fullName}</span>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end shadow-sm rounded-4 border-0">
                                    <c:if test="${currentUser.roles.name eq 'ADMIN' or currentUser.roles.name eq 'Admin'}">
                                        <li><a class="dropdown-item" href="<c:url value='/admin'/>"><i class="fa-solid fa-shield-halved me-2"></i>Quản trị</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                    </c:if>
                                    <li><a class="dropdown-item" href="<c:url value='/client/wishlist'/>"><i class="fa-regular fa-heart me-2"></i>Wishlist</a></li>
                                    <li><a class="dropdown-item" href="<c:url value='/client/cart'/>"><i class="fa-solid fa-bag-shopping me-2"></i>Giỏ hàng</a></li>
                                    <li><a class="dropdown-item" href="<c:url value='/client/contact'/>"><i class="fa-regular fa-envelope me-2"></i>Tin nhắn hỗ trợ</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li><a class="dropdown-item" href="<c:url value='/client/logout'/>"><i class="fa-solid fa-right-from-bracket me-2"></i>Đăng xuất</a></li>
                                </ul>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <a class="btn account-pill" href="<c:url value='/client/login'/>">
                                <i class="fa-regular fa-user"></i><span>Đăng nhập</span>
                            </a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </nav>
</header>
