<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- directive của JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Người dùng - Cây Xanh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./admincss/user.css">
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
        <a href="./admin.html" class="nav-link">
            <i class="fas fa-tachometer-alt"></i>
            Dashboard
        </a>

        <div class="px-3 mt-3 mb-2 text-white-50 small fw-bold">QUẢN LÝ</div>

        <a href="./adminproduct.html" class="nav-link">
            <i class="fas fa-tree"></i>
            Sản phẩm
        </a>

        <a href="./admincategories.html" class="nav-link">
            <i class="fas fa-list"></i>
            Danh mục
        </a>

        <a href="./adminorders.html" class="nav-link">
            <i class="fas fa-shopping-cart"></i>
            Đơn hàng
        </a>

        <a href="./adminusers.html" class="nav-link active">
            <i class="fas fa-users"></i>
            Người dùng
        </a>

        <div class="px-3 mt-3 mb-2 text-white-50 small fw-bold">NỘI DUNG</div>

        <a href="admin-blogs.html" class="nav-link">
            <i class="fas fa-blog"></i>
            Bài viết
        </a>

        <a href="admin-contacts.html" class="nav-link">
            <i class="fas fa-envelope"></i>
            Liên hệ
        </a>
    </nav>
</div>

<!-- Main Content -->
<div class="main-content">
    <!-- Header -->
    <div class="page-header">
        <div class="row align-items-center">
            <div class="col">
                <h3 class="mb-1 fw-bold">
                    <i class="fas fa-users me-2 text-success"></i>
                    Quản lý Người dùng
                </h3>
                <p class="text-muted mb-0">Quản lý thông tin người dùng hệ thống</p>
            </div>
            <div class="col-auto">
                <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addUserModal">
                    <i class="fas fa-plus me-2"></i>Thêm người dùng
                </button>
            </div>
        </div>
    </div>

    <!-- User Stats -->
    <div class="row g-3 mb-4">
        <div class="col-xl-3 col-md-6">
            <div class="card-custom text-center p-4">
                <div class="text-primary fw-bold fs-3">0</div>
                <div class="text-muted">Tổng người dùng</div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card-custom text-center p-4">
                <div class="text-success fw-bold fs-3">0</div>
                <div class="text-muted">Khách hàng</div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card-custom text-center p-4">
                <div class="text-warning fw-bold fs-3">0</div>
                <div class="text-muted">Quản lý</div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card-custom text-center p-4">
                <div class="text-danger fw-bold fs-3">0</div>
                <div class="text-muted">Administrator</div>
            </div>
        </div>
    </div>

    <!-- Filters -->
    <div class="card-custom">
        <div class="card-body">
            <div class="row g-3">
                <div class="col-md-4">
                    <input type="text" class="form-control" placeholder="Tìm kiếm người dùng...">
                </div>
                <div class="col-md-3">
                    <select class="form-select">
                        <option value="">Tất cả vai trò</option>
                        <option value="admin">Administrator</option>
                        <option value="manager">Quản lý</option>
                        <option value="customer">Khách hàng</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <select class="form-select">
                        <option value="">Tất cả trạng thái</option>
                        <option value="active">Đang hoạt động</option>
                        <option value="inactive">Ngừng hoạt động</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <button class="btn btn-primary w-100">
                        <i class="fas fa-filter me-2"></i>Lọc
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Users Table -->
    <div class="card-custom">
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover mb-0">
                    <thead>
                    <tr>
                        <th width="60">#</th>
                        <th>Người dùng</th>
                        <th>Email</th>
                        <th>Số điện thoại</th>
                        <th>Vai trò</th>
                        <th>Trạng thái</th>
                        <th>Ngày đăng ký</th>
                        <th width="120" class="text-center">Thao tác</th>
                    </tr>
                    </thead>

                </table>
            </div>
        </div>
    </div>

    <!-- Pagination -->
    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center mt-4">
            <li class="page-item disabled">
                <a class="page-link" href="#">Trước</a>
            </li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#">Sau</a>
            </li>
        </ul>
    </nav>
</div>

<!-- Add User Modal -->
<div class="modal fade" id="addUserModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thêm người dùng mới</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Họ *</label>
                                <input type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Tên *</label>
                                <input type="text" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Email *</label>
                        <input type="email" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Tên đăng nhập *</label>
                        <input type="text" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Mật khẩu *</label>
                        <input type="password" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Số điện thoại</label>
                        <input type="tel" class="form-control">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Vai trò *</label>
                        <select class="form-select" required>
                            <option value="">Chọn vai trò</option>
                            <option value="admin">Administrator</option>
                            <option value="manager">Quản lý</option>
                            <option value="customer">Khách hàng</option>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                <button type="button" class="btn btn-success">Thêm người dùng</button>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>