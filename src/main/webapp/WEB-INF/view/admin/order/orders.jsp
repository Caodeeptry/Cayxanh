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
    <title>Quản lý Đơn hàng - Cây Xanh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./admincss/orders.css">
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

        <a href="./adminorders.html" class="nav-link active">
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
                    <i class="fas fa-shopping-cart me-2 text-success"></i>
                    Quản lý Đơn hàng
                </h3>
                <p class="text-muted mb-0">Quản lý và theo dõi đơn hàng của khách hàng</p>
            </div>
            <div class="col-auto">
                <div class="btn-group">
                    <button class="btn btn-outline-success">
                        <i class="fas fa-download me-2"></i>Xuất Excel
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Order Stats -->
    <div class="row g-3 mb-4">
        <div class="col-xl-2 col-md-4 col-6">
            <div class="card-custom text-center p-3">
                <div class="text-primary fw-bold fs-4">0</div>
                <div class="text-muted small">Tổng đơn hàng</div>
            </div>
        </div>
        <div class="col-xl-2 col-md-4 col-6">
            <div class="card-custom text-center p-3">
                <div class="text-warning fw-bold fs-4">0</div>
                <div class="text-muted small">Chờ xác nhận</div>
            </div>
        </div>
        <div class="col-xl-2 col-md-4 col-6">
            <div class="card-custom text-center p-3">
                <div class="text-info fw-bold fs-4">0</div>
                <div class="text-muted small">Đang xử lý</div>
            </div>
        </div>
        <div class="col-xl-2 col-md-4 col-6">
            <div class="card-custom text-center p-3">
                <div class="text-primary fw-bold fs-4">0</div>
                <div class="text-muted small">Đang giao hàng</div>
            </div>
        </div>
        <div class="col-xl-2 col-md-4 col-6">
            <div class="card-custom text-center p-3">
                <div class="text-success fw-bold fs-4">0</div>
                <div class="text-muted small">Đã giao</div>
            </div>
        </div>
        <div class="col-xl-2 col-md-4 col-6">
            <div class="card-custom text-center p-3">
                <div class="text-danger fw-bold fs-4">0</div>
                <div class="text-muted small">Đã hủy</div>
            </div>
        </div>
    </div>

    <!-- Filters -->
    <div class="card-custom">
        <div class="card-body">
            <div class="row g-3">
                <div class="col-md-3">
                    <input type="text" class="form-control" placeholder="Tìm kiếm đơn hàng...">
                </div>
                <div class="col-md-2">
                    <select class="form-select">
                        <option value="">Tất cả trạng thái</option>
                        <option value="pending">Chờ xác nhận</option>
                        <option value="confirmed">Đã xác nhận</option>
                        <option value="shipping">Đang giao hàng</option>
                        <option value="delivered">Đã giao</option>
                        <option value="cancelled">Đã hủy</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <select class="form-select">
                        <option value="">Tất cả thanh toán</option>
                        <option value="pending">Chờ thanh toán</option>
                        <option value="paid">Đã thanh toán</option>
                        <option value="failed">Thanh toán thất bại</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <input type="date" class="form-control" placeholder="Từ ngày">
                </div>
                <div class="col-md-2">
                    <button class="btn btn-primary w-100">
                        <i class="fas fa-filter me-2"></i>Lọc
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- Orders Table -->
    <div class="card-custom">
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover mb-0">
                    <thead>
                    <tr>
                        <th width="120">Mã đơn</th>
                        <th>Khách hàng</th>
                        <th>Số điện thoại</th>
                        <th>Tổng tiền</th>
                        <th>Trạng thái</th>
                        <th>Thanh toán</th>
                        <th>Ngày đặt</th>
                        <th width="150" class="text-center">Thao tác</th>
                    </tr>
                    </thead>
                    <tbody>

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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>