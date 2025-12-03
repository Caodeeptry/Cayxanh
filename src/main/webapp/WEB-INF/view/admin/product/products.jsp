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
    <title>Quản lý Sản phẩm - Cây Xanh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./admincss/product.css">
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

        <a href="./adminproduct.html" class="nav-link active">
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
                    <i class="fas fa-tree me-2 text-success"></i>
                    Quản lý Sản phẩm
                </h3>
                <p class="text-muted mb-0">Quản lý danh sách sản phẩm của cửa hàng</p>
            </div>
            <div class="col-auto">
                <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addProductModal">
                    <i class="fas fa-plus me-2"></i>Thêm sản phẩm
                </button>
            </div>
        </div>
    </div>

    <!-- Filters -->
    <div class="card-custom">
        <div class="card-body">
            <div class="row g-3">
                <div class="col-md-3">
                    <input type="text" class="form-control" placeholder="Tìm kiếm sản phẩm...">
                </div>
                <div class="col-md-2">
                    <select class="form-select">
                        <option value="">Tất cả danh mục</option>
                        <option value="1">Cây để bàn</option>
                        <option value="2">Cây nội thất</option>
                        <option value="3">Cây phong thủy</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <select class="form-select">
                        <option value="">Tất cả trạng thái</option>
                        <option value="active">Đang bán</option>
                        <option value="inactive">Ngừng bán</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <button class="btn btn-outline-primary w-100">
                        <i class="fas fa-filter me-2"></i>Lọc
                    </button>
                </div>
                <div class="col-md-3 text-end">
                    <div class="btn-group">
                        <button class="btn btn-outline-secondary">
                            <i class="fas fa-download"></i>
                        </button>
                        <button class="btn btn-outline-secondary">
                            <i class="fas fa-print"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Products Table -->
    <div class="card-custom">
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover mb-0">
                    <thead>
                    <tr>
                        <th width="50">#</th>
                        <th width="80">Hình ảnh</th>
                        <th>Tên sản phẩm</th>
                        <th>Danh mục</th>
                        <th>Giá</th>
                        <th>Tồn kho</th>
                        <th>Trạng thái</th>
                        <th>Ngày tạo</th>
                        <th width="120" class="text-center">Thao tác</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>
                            <img src="./img/kim tien.jpg"
                                 alt="Cây Kim Tiền" class="product-img">
                        </td>
                        <td>
                            <div class="fw-bold">Cây Kim Tiền</div>
                            <small class="text-muted">SKU: KT001</small>
                        </td>
                        <td>Cây phong thủy</td>
                        <td>
                            <div class="fw-bold text-success">450.000 ₫</div>
                            <small class="text-muted text-decoration-line-through">550.000 ₫</small>
                        </td>
                        <td>
                            <span class="badge bg-success">50</span>
                        </td>
                        <td>
                            <span class="badge bg-success">Đang bán</span>
                        </td>
                        <td>20/11/2023</td>
                        <td class="text-center action-buttons">
                            <button class="btn btn-sm btn-outline-primary" title="Sửa">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="btn btn-sm btn-outline-danger" title="Xóa">
                                <i class="fas fa-trash"></i>
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>
                            <img src="./img/luoi ho.jpg"
                                 alt="Cây Lưỡi Hổ" class="product-img">
                        </td>
                        <td>
                            <div class="fw-bold">Cây Lưỡi Hổ</div>
                            <small class="text-muted">SKU: LH002</small>
                        </td>
                        <td>Cây nội thất</td>
                        <td>
                            <div class="fw-bold text-success">350.000 ₫</div>
                        </td>
                        <td>
                            <span class="badge bg-warning text-dark">5</span>
                        </td>
                        <td>
                            <span class="badge bg-success">Đang bán</span>
                        </td>
                        <td>19/11/2023</td>
                        <td class="text-center action-buttons">
                            <button class="btn btn-sm btn-outline-primary">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="btn btn-sm btn-outline-danger">
                                <i class="fas fa-trash"></i>
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>
                            <img src="./img/Cây Trầu Bà.jpg"
                                 alt="Cây Trầu Bà" class="product-img">
                        </td>
                        <td>
                            <div class="fw-bold">Cây Trầu Bà</div>
                            <small class="text-muted">SKU: TB003</small>
                        </td>
                        <td>Cây để bàn</td>
                        <td>
                            <div class="fw-bold text-success">280.000 ₫</div>
                            <small class="text-muted text-decoration-line-through">330.000 ₫</small>
                        </td>
                        <td>
                            <span class="badge bg-success">40</span>
                        </td>
                        <td>
                            <span class="badge bg-success">Đang bán</span>
                        </td>
                        <td>18/11/2023</td>
                        <td class="text-center action-buttons">
                            <button class="btn btn-sm btn-outline-primary">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button class="btn btn-sm btn-outline-danger">
                                <i class="fas fa-trash"></i>
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>
                            <img src="./img/Sen Đá.jpg"
                                 alt="Sen Đá" class="product-img">
                        </td>
                        <td>
                            <div class="fw-bold">Sen Đá Nâu</div>
                            <small class="text-muted">SKU: SD004</small>
                        </td>
                        <td>Sen đá & Xương rồng</td>
                        <td>
                            <div class="fw-bold text-success">120.000 ₫</div>
                        </td>
                        <td>
                            <span class="badge bg-danger">0</span>
                        </td>
                        <td>
                            <span class="badge bg-secondary">Hết hàng</span>
                        </td>
                        <td>17/11/2023</td>
                        <td class="text-center action-buttons">
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

<!-- Add Product Modal -->
<div class="modal fade" id="addProductModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thêm sản phẩm mới</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Tên sản phẩm *</label>
                                <input type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">SKU *</label>
                                <input type="text" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Danh mục *</label>
                                <select class="form-select" required>
                                    <option value="">Chọn danh mục</option>
                                    <option value="1">Cây để bàn</option>
                                    <option value="2">Cây nội thất</option>
                                    <option value="3">Cây phong thủy</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Giá *</label>
                                <input type="number" class="form-control" required>
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Mô tả ngắn</label>
                        <textarea class="form-control" rows="2"></textarea>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Mô tả chi tiết</label>
                        <textarea class="form-control" rows="4"></textarea>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Số lượng tồn kho</label>
                                <input type="number" class="form-control" value="0">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Hình ảnh</label>
                                <input type="file" class="form-control" accept="image/*">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                <button type="button" class="btn btn-success">Thêm sản phẩm</button>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>