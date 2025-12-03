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
    <title>Cây Xanh - Cửa hàng cây cảnh trực tuyến</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="./css/index.css">

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
                        <a class="nav-link active" href="#">Trang chủ</a>
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
                        <a class="nav-link" href="./cart.html"><i class="fas fa-shopping-cart"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<!-- Banner Carousel -->
<div id="heroCarousel" class="carousel slide hero-carousel" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="./img/banner1.png" class="d-block w-100" alt="Cây cảnh đẹp">
            <div class="carousel-caption d-none d-md-block">
                <h2>Không gian xanh cho ngôi nhà bạn</h2>
                <p>Cây cảnh mang lại không khí trong lành và vẻ đẹp tự nhiên</p>
                <a href="#" class="btn btn-success">Mua ngay</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="./img/banner6.jpg" class="d-block w-100" alt="Cây cảnh trong nhà">
            <div class="carousel-caption d-none d-md-block">
                <h2>Cây cảnh trong nhà</h2>
                <p>Lựa chọn hoàn hảo để trang trí không gian sống</p>
                <a href="#" class="btn btn-success">Khám phá</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="./img/banner4.jpg" class="d-block w-100" alt="Cây cảnh văn phòng">
            <div class="carousel-caption d-none d-md-block">
                <h2>Cây cảnh văn phòng</h2>
                <p>Tạo môi trường làm việc xanh và thoải mái</p>
                <a href="#" class="btn btn-success">Xem thêm</a>
            </div>
        </div>
        <div class="carousel-item">
            <img src="./img/banner2.jpg" class="d-block w-100" alt="Cây cảnh văn phòng">
            <div class="carousel-caption d-none d-md-block">
                <h2>Cây cảnh mới</h2>
                <p>Mua ngay hôm nay</p>
                <a href="#" class="btn btn-success">Xem thêm</a>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<!-- Main Content -->
<main class="container my-5">
    <!-- Tầng sản phẩm 1: Sản phẩm nổi bật -->
    <section class="mb-5">
        <h2 class="section-title">Sản phẩm nổi bật</h2>
        <div class="row">
            <div class="col-md-3">
                <div class="card product-card">
                    <span class="badge bg-danger product-badge">Hot</span>
                    <img src="./img/kim tien.jpg" class="card-img-top" alt="Cây kim tiền">
                    <div class="card-body">
                        <h5 class="card-title">Cây Kim Tiền</h5>
                        <p class="card-text">Cây phong thủy mang lại tài lộc, may mắn.</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="text-success fw-bold">450.000₫</span>
                            <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card product-card">
                    <img src="./img/luoi ho.jpg" class="card-img-top" alt="Cây lưỡi hổ">
                    <div class="card-body">
                        <h5 class="card-title">Cây Lưỡi Hổ</h5>
                        <p class="card-text">Cây lọc không khí, hấp thụ độc tố tốt.</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="text-success fw-bold">350.000₫</span>
                            <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card product-card">
                    <span class="badge bg-success product-badge">Mới</span>
                    <img src="./img/Cây Trầu Bà.jpg" class="card-img-top" alt="Cây trầu bà">
                    <div class="card-body">
                        <h5 class="card-title">Cây Trầu Bà</h5>
                        <p class="card-text">Dễ chăm sóc, thích hợp để bàn làm việc.</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="text-success fw-bold">280.000₫</span>
                            <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card product-card">
                    <img src="./img/Cây Lan Ý.jpg" class="card-img-top" alt="Cây lan ý">
                    <div class="card-body">
                        <h5 class="card-title">Cây Lan Ý</h5>
                        <p class="card-text">Lọc không khí, trang trí nội thất đẹp.</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="text-success fw-bold">520.000₫</span>
                            <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Tầng sản phẩm 2: Sản phẩm bán chạy -->
    <section class="mb-5">
        <h2 class="section-title">Sản phẩm bán chạy</h2>
        <div class="row">
            <div class="col-md-3">
                <div class="card product-card">
                    <span class="badge bg-danger product-badge">Hot</span>
                    <img src="./img/Sen Đá.jpg" class="card-img-top" alt="Cây sen đá">
                    <div class="card-body">
                        <h5 class="card-title">Sen Đá</h5>
                        <p class="card-text">Dễ chăm sóc, nhiều màu sắc đẹp.</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <span class="text-success fw-bold">120.000₫</span>
                            </div>
                            <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card product-card">
                    <img src="./img/Xương Rồng.jpg" class="card-img-top" alt="Cây xương rồng">
                    <div class="card-body">
                        <h5 class="card-title">Xương Rồng</h5>
                        <p class="card-text">Chịu hạn tốt, không cần chăm sóc nhiều.</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="text-success fw-bold">90.000₫</span>
                            <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card product-card">
                    <span class="badge bg-warning text-dark product-badge">Hot</span>
                    <img src="./img/Cây Dây Nhện.jpg" class="card-img-top" alt="Cây dây nhện">
                    <div class="card-body">
                        <h5 class="card-title">Cây Dây Nhện</h5>
                        <p class="card-text">Lọc không khí cực tốt, dễ trồng.</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="text-success fw-bold">220.000₫</span>
                            <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card product-card">
                    <img src="./img/Cây Ngọc Ngân.jpg" class="card-img-top" alt="Cây ngọc ngân">
                    <div class="card-body">
                        <h5 class="card-title">Cây Ngọc Ngân</h5>
                        <p class="card-text">Lá đẹp, mang ý nghĩa tài lộc.</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="text-success fw-bold">380.000₫</span>
                            <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h5>Về chúng tôi</h5>
                <p>Cửa hàng cây cảnh Cây Xanh chuyên cung cấp các loại cây cảnh, cây phong thủy, cây văn phòng chất lượng cao.</p>
            </div>
            <div class="col-md-4">
                <h5>Liên hệ</h5>
                <p><i class="fas fa-map-marker-alt me-2"></i> Lập Thạch,Vĩnh Phúc</p>
                <p><i class="fas fa-phone me-2"></i> 0978 917 562</p>
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
            <p>&copy; Vì một cuộc sống xanh</p>
        </div>
    </div>
</footer>

<!-- Scroll Top Button -->
<div class="scroll-top" id="scrollTop">
    <i class="fas fa-arrow-up"></i>
</div>

<!-- Bootstrap & jQuery JS -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    $(document).ready(function() {
        // Xử lý scroll top button
        $(window).scroll(function() {
            if ($(this).scrollTop() > 300) {
                $('#scrollTop').addClass('show');
            } else {
                $('#scrollTop').removeClass('show');
            }
        });

        $('#scrollTop').click(function() {
            $('html, body').animate({scrollTop: 0}, 800);
            return false;
        });

        // Xử lý carousel tự động chuyển slide
        $('#heroCarousel').carousel({
            interval: 5000
        });
    });
</script>
</body>
</html>