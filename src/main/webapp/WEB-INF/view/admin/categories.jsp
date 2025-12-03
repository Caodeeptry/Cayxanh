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
    <title>Quản lý Danh mục - Cây Xanh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./admincss/categories.css">
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

        <a href="./admincategories.html" class="nav-link active">
            <i class="fas fa-list"></i>
            Danh mục
        </a>

        <a href="./adminorders.html" class="nav-link">
            <i class="fas fa-shopping-cart"></i>
            Đơn hàng
        </a>

        <a href="./adminusers.html" class="nav-link">
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
                    <i class="fas fa-list me-2 text-success"></i>
                    Quản lý Danh mục
                </h3>
                <p class="text-muted mb-0">Quản lý danh mục sản phẩm của cửa hàng</p>
            </div>
            <div class="col-auto">
                <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addCategoryModal">
                    <i class="fas fa-plus me-2"></i>Thêm danh mục
                </button>
            </div>
        </div>
    </div>

    <div class="row">
        <!-- Categories Tree -->
        <div class="col-md-6">
            <div class="card-custom">
                <div class="card-header">
                    <h5 class="mb-0">Cây danh mục</h5>
                </div>
                <div class="card-body">
                    <ul class="category-tree">
                        <li>
                            <div class="d-flex justify-content-between align-items-center p-2 bg-light rounded">
                                <div>
                                    <i class="fas fa-folder text-warning me-2"></i>
                                    <strong>Cây để bàn</strong>
                                    <span class="badge bg-secondary ms-2">12 sản phẩm</span>
                                </div>
                                <div class="action-buttons">
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn btn-sm btn-outline-danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </div>
                            <ul class="children">
                                <li>
                                    <div class="d-flex justify-content-between align-items-center p-2">
                                        <div>
                                            <i class="fas fa-folder text-info me-2"></i>
                                            Cây để bàn làm việc
                                            <span class="badge bg-secondary ms-2">8 sản phẩm</span>
                                        </div>
                                        <div class="action-buttons">
                                            <button class="btn btn-sm btn-outline-primary">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                            <button class="btn btn-sm btn-outline-danger">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex justify-content-between align-items-center p-2">
                                        <div>
                                            <i class="fas fa-folder text-info me-2"></i>
                                            Cây để bàn học
                                            <span class="badge bg-secondary ms-2">4 sản phẩm</span>
                                        </div>
                                        <div class="action-buttons">
                                            <button class="btn btn-sm btn-outline-primary">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                            <button class="btn btn-sm btn-outline-danger">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <div class="d-flex justify-content-between align-items-center p-2 bg-light rounded mt-2">
                                <div>
                                    <i class="fas fa-folder text-warning me-2"></i>
                                    <strong>Cây nội thất</strong>
                                    <span class="badge bg-secondary ms-2">8 sản phẩm</span>
                                </div>
                                <div class="action-buttons">
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn btn-sm btn-outline-danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="d-flex justify-content-between align-items-center p-2 bg-light rounded mt-2">
                                <div>
                                    <i class="fas fa-folder text-warning me-2"></i>
                                    <strong>Cây phong thủy</strong>
                                    <span class="badge bg-secondary ms-2">15 sản phẩm</span>
                                </div>
                                <div class="action-buttons">
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn btn-sm btn-outline-danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="d-flex justify-content-between align-items-center p-2 bg-light rounded mt-2">
                                <div>
                                    <i class="fas fa-folder text-warning me-2"></i>
                                    <strong>Sen đá & Xương rồng</strong>
                                    <span class="badge bg-secondary ms-2">25 sản phẩm</span>
                                </div>
                                <div class="action-buttons">
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn btn-sm btn-outline-danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Categories List -->
        <div class="col-md-6">
            <div class="card-custom">
                <div class="card-header">
                    <h5 class="mb-0">Danh sách danh mục</h5>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table table-hover mb-0">
                            <thead>
                            <tr>
                                <th>Tên danh mục</th>
                                <th>Danh mục cha</th>
                                <th>Số sản phẩm</th>
                                <th>Trạng thái</th>
                                <th width="100">Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <i class="fas fa-folder text-warning me-2"></i>
                                    <strong>Cây để bàn</strong>
                                </td>
                                <td>-</td>
                                <td><span class="badge bg-primary">12</span></td>
                                <td><span class="badge bg-success">Hiển thị</span></td>
                                <td class="action-buttons">
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn btn-sm btn-outline-danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="fas fa-folder text-info me-2"></i>
                                    Cây để bàn làm việc
                                </td>
                                <td>Cây để bàn</td>
                                <td><span class="badge bg-primary">8</span></td>
                                <td><span class="badge bg-success">Hiển thị</span></td>
                                <td class="action-buttons">
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn btn-sm btn-outline-danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="fas fa-folder text-info me-2"></i>
                                    Cây để bàn học
                                </td>
                                <td>Cây để bàn</td>
                                <td><span class="badge bg-primary">4</span></td>
                                <td><span class="badge bg-success">Hiển thị</span></td>
                                <td class="action-buttons">
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn btn-sm btn-outline-danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <i class="fas fa-folder text-warning me-2"></i>
                                    <strong>Cây nội thất</strong>
                                </td>
                                <td>-</td>
                                <td><span class="badge bg-primary">8</span></td>
                                <td><span class="badge bg-success">Hiển thị</span></td>
                                <td class="action-buttons">
                                    <button class="btn btn-sm btn-outline-primary">
                                        <i class="fas fa-edit"></i>
                                    </button>
                                    <button class="btn btn-sm btn-outline-danger">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Add Category Modal -->
<div class="modal fade" id="addCategoryModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thêm danh mục mới</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label class="form-label">Tên danh mục *</label>
                        <input type="text" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Danh mục cha</label>
                        <select class="form-select">
                            <option value="">Không có (danh mục gốc)</option>
                            <option value="1">Cây để bàn</option>
                            <option value="2">Cây nội thất</option>
                            <option value="3">Cây phong thủy</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Mô tả</label>
                        <textarea class="form-control" rows="3"></textarea>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Slug (URL)</label>
                        <input type="text" class="form-control">
                    </div>

                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="status" checked>
                        <label class="form-check-label" for="status">Hiển thị danh mục</label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                <button type="button" class="btn btn-success">Thêm danh mục</button>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>