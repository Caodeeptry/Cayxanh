<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%-- JSTL directive --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng - Cây Xanh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="./css/cart.css">
    <style>

    </style>
</head>
<body>
<!-- Header -->
<header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">
                <i class="fas fa-leaf me-2"></i>TREESHOP
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link " href="./index.html">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./danhmuc.html">Sản phẩm</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./chitiet.html">Giới thiệu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Liên hệ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./login.html">Đăng nhập/Đăng ký</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  active" href="./cart.html"><i class="fas fa-shopping-cart"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<!-- Breadcrumb -->
<section class="bg-light py-3">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                <li class="breadcrumb-item active">Giỏ hàng</li>
            </ol>
        </nav>
    </div>
</section>

<!-- Cart Content -->
<section class="py-5">
    <div class="container">
        <h2 class="mb-4">Giỏ hàng của bạn</h2>

        <div class="row">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <!-- Cart Item 1 -->
                        <div class="cart-item d-flex">
                            <div class="flex-shrink-0">
                                <img src="./img/kim tien 2.jpg"
                                     alt="Cây Kim Tiền" class="img-fluid rounded" style="width: 100px;">
                            </div>
                            <div class="flex-grow-1 ms-3">
                                <h5 class="mb-1">Cây Kim Tiền</h5>
                                <p class="text-muted mb-2">Cây phong thủy mang lại tài lộc</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="d-flex align-items-center">
                                        <button class="btn btn-sm btn-outline-secondary decrease-qty">-</button>
                                        <input type="number" class="form-control form-control-sm quantity-input mx-2" value="1" min="1">
                                        <button class="btn btn-sm btn-outline-secondary increase-qty">+</button>
                                    </div>
                                    <div>
                                        <span class="fw-bold text-success">450.000₫</span>
                                        <button class="btn btn-sm btn-link text-danger ms-2">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Cart Item 2 -->
                        <div class="cart-item d-flex">
                            <div class="flex-shrink-0">
                                <img src="./img/luoi ho.jpg"
                                     alt="Cây Lưỡi Hổ" class="img-fluid rounded" style="width: 100px;">
                            </div>
                            <div class="flex-grow-1 ms-3">
                                <h5 class="mb-1">Cây Lưỡi Hổ</h5>
                                <p class="text-muted mb-2">Cây lọc không khí, hấp thụ độc tố</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="d-flex align-items-center">
                                        <button class="btn btn-sm btn-outline-secondary decrease-qty">-</button>
                                        <input type="number" class="form-control form-control-sm quantity-input mx-2" value="2" min="1">
                                        <button class="btn btn-sm btn-outline-secondary increase-qty">+</button>
                                    </div>
                                    <div>
                                        <span class="fw-bold text-success">700.000₫</span>
                                        <button class="btn btn-sm btn-link text-danger ms-2">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="d-flex justify-content-between mt-4">
                            <a href="index.html" class="btn btn-outline-secondary">
                                <i class="fas fa-arrow-left me-2"></i>Tiếp tục mua hàng
                            </a>
                            <button class="btn btn-outline-danger" id="clear-cart">
                                <i class="fas fa-trash me-2"></i>Xóa giỏ hàng
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="summary-card">
                    <h5 class="mb-3">Tóm tắt đơn hàng</h5>

                    <div class="d-flex justify-content-between mb-2">
                        <span>Tạm tính:</span>
                        <span>1.150.000₫</span>
                    </div>

                    <div class="d-flex justify-content-between mb-2">
                        <span>Giảm giá:</span>
                        <span class="text-danger">-100.000₫</span>
                    </div>

                    <div class="d-flex justify-content-between mb-2">
                        <span>Phí vận chuyển:</span>
                        <span>30.000₫</span>
                    </div>

                    <hr>

                    <div class="d-flex justify-content-between mb-3">
                        <strong>Tổng cộng:</strong>
                        <strong class="text-success">1.080.000₫</strong>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Mã giảm giá</label>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Nhập mã giảm giá">
                            <button class="btn btn-success">Áp dụng</button>
                        </div>
                    </div>

                    <a href="checkout.html" class="btn btn-success w-100 py-3">
                        <i class="fas fa-shopping-bag me-2"></i>Tiến hành thanh toán
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="bg-dark text-white pt-4 pb-2">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h5>Về chúng tôi</h5>
                <p>Cửa hàng cây cảnh Cây Xanh chuyên cung cấp các loại cây cảnh, cây phong thủy, cây văn phòng chất lượng cao.</p>
            </div>
            <div class="col-md-4">
                <h5>Liên hệ</h5>
                <p><i class="fas fa-map-marker-alt me-2"></i> Lập Thạch, Vĩnh Phúc</p>
                <p><i class="fas fa-phone me-2"></i> 09878 917 562/p>
                <p><i class="fas fa-envelope me-2"></i> caodozett@gmail.com</p>
            </div>
            <div class="col-md-4">
                <h5>Theo dõi chúng tôi</h5>
                <div class="d-flex">
                    <a href="#" class="me-3 text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                    <a href="#" class="me-3 text-white"><i class="fab fa-instagram fa-lg"></i></a>
                    <a href="#" class="me-3 text-white"><i class="fab fa-youtube fa-lg"></i></a>
                    <a href="#" class="text-white"><i class="fab fa-tiktok fa-lg"></i></a>
                </div>
                <div class="mt-3">
                    <h5>Đăng ký nhận tin</h5>
                    <div class="input-group">
                        <input type="email" class="form-control" placeholder="Email của bạn">
                        <button class="btn btn-success" type="button">Đăng ký</button>
                    </div>
                </div>
            </div>
        </div>
        <hr class="mt-4 bg-light">
        <div class="text-center">
            <p>&copy; Treeshop made by vancao.</p>
        </div>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    $(document).ready(function() {
        // Xử lý tăng/giảm số lượng
        $('.increase-qty').click(function() {
            const input = $(this).siblings('.quantity-input');
            input.val(parseInt(input.val()) + 1);
            updateCartTotal();
        });

        $('.decrease-qty').click(function() {
            const input = $(this).siblings('.quantity-input');
            if (parseInt(input.val()) > 1) {
                input.val(parseInt(input.val()) - 1);
                updateCartTotal();
            }
        });

        // Xử lý xóa sản phẩm
        $('.btn-link.text-danger').click(function() {
            $(this).closest('.cart-item').remove();
            updateCartCount();
            updateCartTotal();
        });

        // Xóa toàn bộ giỏ hàng
        $('#clear-cart').click(function() {
            $('.cart-item').remove();
            updateCartCount();
            updateCartTotal();
        });

        // Cập nhật số lượng sản phẩm trong giỏ
        function updateCartCount() {
            const count = $('.cart-item').length;
            $('.cart-count').text(count);
        }

        // Cập nhật tổng tiền (đơn giản)
        function updateCartTotal() {
            // Logic tính tổng tiền thực tế sẽ phức tạp hơn
            alert('Đã cập nhật số lượng sản phẩm!');
        }
    });
</script>
</body>
</html>