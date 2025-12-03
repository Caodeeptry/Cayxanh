<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- directive của JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Cây Xanh</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${env}/admin/admincss/index.css">
    <style>

    </style>
</head>
<body>
<!-- Sidebar -->
<div class="sidebar">
    <div class="brand">
        <h4 class="mb-0">
            <i class="fas fa-leaf me-2"></i>
            TREESHOP
        </h4>
        <small class="text-white-50">Admin Panel</small>
    </div>

    <nav class="nav flex-column mt-4">
        <a href="/admin" class="nav-link active">
            <i class="fas fa-tachometer-alt"></i>
            Dashboard
        </a>

        <div class="px-3 mt-3 mb-2 text-white-50 small fw-bold">QUẢN LÝ</div>

        <a href="${env}/admin/adminproduct.html" class="nav-link">
            <i class="fas fa-tree"></i>
            Sản phẩm
        </a>

        <a href="${env}/admin/admincategories.html" class="nav-link">
            <i class="fas fa-list"></i>
            Danh mục
        </a>

        <a href="${env}/admin/adminorders.html" class="nav-link">
            <i class="fas fa-shopping-cart"></i>
            Đơn hàng
        </a>

        <a href="${env}/admin/adminusers.html" class="nav-link">
            <i class="fas fa-users"></i>
            Người dùng
        </a>

        <div class="px-3 mt-3 mb-2 text-white-50 small fw-bold">NỘI DUNG</div>

        <a href="/admin/blogs" class="nav-link">
            <i class="fas fa-blog"></i>
            Bài viết
        </a>

        <a href="/admin/contacts" class="nav-link">
            <i class="fas fa-envelope"></i>
            Liên hệ
        </a>

        <a href="/admin/promotions" class="nav-link">
            <i class="fas fa-tag"></i>
            Khuyến mãi
        </a>
    </nav>
</div>

<!-- Main Content -->
<div class="main-content">
    <!-- Header -->
    <div class="admin-header">
        <div class="row align-items-center">
            <div class="col">
                <h3 class="mb-0 fw-bold">Dashboard</h3>
                <p class="text-muted mb-0">Tổng quan hệ thống</p>
            </div>
            <div class="col-auto">
                <div class="user-info">
                    <div class="user-avatar">
                        <i class="fas fa-user"></i>
                    </div>
                    <div>
                        <div class="fw-bold">Admin User</div>
                        <small class="text-muted">Quản trị viên</small>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Statistics -->
    <div class="row g-4 mb-4">
        <div class="col-xl-3 col-md-6">
            <div class="stat-card products">
                <div class="stat-icon text-info">
                    <i class="fas fa-tree"></i>
                </div>
                <div class="stat-number text-info" th:text="${stats.totalProducts}">0</div>
                <div class="stat-label">Tổng sản phẩm</div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6">
            <div class="stat-card users">
                <div class="stat-icon text-warning">
                    <i class="fas fa-users"></i>
                </div>
                <div class="stat-number text-warning" th:text="${stats.totalUsers}">0</div>
                <div class="stat-label">Người dùng</div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6">
            <div class="stat-card orders">
                <div class="stat-icon text-success">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="stat-number text-success" th:text="${stats.totalOrders}">0</div>
                <div class="stat-label">Đơn hàng</div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6">
            <div class="stat-card revenue">
                <div class="stat-icon text-danger">
                    <i class="fas fa-dollar-sign"></i>
                </div>
                <div class="stat-number text-danger" th:text="|${#numbers.formatDecimal(stats.totalRevenue, 0, 0)}|">0</div>
                <div class="stat-label">Doanh thu (VNĐ)</div>
            </div>
        </div>
    </div>

    <!-- Content Row -->
    <div class="row g-4">
        <!-- Recent Orders -->
        <div class="col-lg-8">
            <div class="recent-card">
                <div class="card-header">
                    <h5 class="mb-0 fw-bold">
                        <i class="fas fa-clock me-2 text-warning"></i>
                        Đơn hàng gần đây
                    </h5>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table table-hover mb-0">
                            <thead>
                            <tr>
                                <th>Mã đơn</th>
                                <th>Khách hàng</th>
                                <th>Số tiền</th>
                                <th>Trạng thái</th>
                                <th>Ngày đặt</th>
                            </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- Quick Actions & Stats -->
        <div class="col-lg-4">
            <!-- Quick Actions -->
            <div class="recent-card mb-4">
                <div class="card-header">
                    <h5 class="mb-0 fw-bold">
                        <i class="fas fa-bolt me-2 text-primary"></i>
                        Thao tác nhanh
                    </h5>
                </div>
                <div class="card-body">
                    <div class="quick-actions d-grid gap-2">
                        <a href="/admin/products/add" class="btn btn-primary">
                            <i class="fas fa-plus me-2"></i>Thêm sản phẩm
                        </a>
                        <a href="/admin/orders" class="btn btn-success">
                            <i class="fas fa-shopping-cart me-2"></i>Xem đơn hàng
                        </a>
                        <a href="/admin/contacts" class="btn btn-info text-white">
                            <i class="fas fa-envelope me-2"></i>Tin nhắn mới
                            <span class="badge bg-light text-dark ms-2">3</span>
                        </a>
                        <a href="/admin/promotions/add" class="btn btn-warning text-dark">
                            <i class="fas fa-tag me-2"></i>Tạo khuyến mãi
                        </a>
                    </div>
                </div>
            </div>

            <!-- System Stats -->
            <div class="recent-card">
                <div class="card-header">
                    <h5 class="mb-0 fw-bold">
                        <i class="fas fa-chart-bar me-2 text-success"></i>
                        Thống kê hệ thống
                    </h5>
                </div>
                <div class="card-body">
                    <div class="list-group list-group-flush">
                        <div class="list-group-item d-flex justify-content-between align-items-center border-0 px-0">
                            <span class="text-muted">Đơn hàng chờ xử lý</span>
                            <span class="badge bg-warning text-dark" th:text="${stats.pendingOrders}">0</span>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center border-0 px-0">
                            <span class="text-muted">Sản phẩm hết hàng</span>
                            <span class="badge bg-danger">0</span>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center border-0 px-0">
                            <span class="text-muted">Bài viết mới</span>
                            <span class="badge bg-info">0</span>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center border-0 px-0">
                            <span class="text-muted">Người dùng mới</span>
                            <span class="badge bg-success">0</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    // Simple animations
    document.addEventListener('DOMContentLoaded', function() {
        // Add loading animation to stat cards
        const statCards = document.querySelectorAll('.stat-card');
        statCards.forEach((card, index) => {
            card.style.animationDelay = `${index * 0.1}s`;
            card.classList.add('animate__animated', 'animate__fadeInUp');
        });
    });
</script>
</body>
</html>