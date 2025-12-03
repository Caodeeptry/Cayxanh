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
    <title>Danh Mục Sản Phẩm - Cây Xanh</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="./css/danhmuc.css">
    <style>

    </style>
</head>
<body>
<!-- Header -->
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
                        <a class="nav-link active" href="./danhmuc.html">Sản phẩm</a>
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


<!-- Category Header -->
<section class="category-header">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                <li class="breadcrumb-item active" aria-current="page">Danh mục sản phẩm</li>
            </ol>
        </nav>
        <h1 class="h2">Danh Mục Sản Phẩm</h1>
        <p class="text-muted">Khám phá bộ sưu tập cây cảnh đa dạng của chúng tôi</p>
    </div>
</section>

<!-- Main Content -->
<main class="container mb-5">
    <div class="row">
        <!-- Sidebar Filters -->
        <div class="col-lg-3">
            <div class="category-sidebar mb-4">
                <h5 class="filter-title">Danh Mục</h5>
                <ul class="category-list">
                    <li><a href="#">Cây để bàn <span class="text-muted"></span></a></li>
                    <li><a href="#">Cây nội thất <span class="text-muted"></span></a></li>
                    <li><a href="#">Cây phong thủy <span class="text-muted"></span></a></li>
                    <li><a href="#">Cây trang trí <span class="text-muted"></span></a></li>
                    <li><a href="#">Cây văn phòng <span class="text-muted"></span></a></li>
                    <li><a href="#">Chậu cây <span class="text-muted"></span></a></li>
                </ul>
            </div>

            <div class="category-sidebar mb-4">
                <h5 class="filter-title">Lọc Theo Giá</h5>
                <div class="price-filter">
                    <input type="range" class="form-range" id="priceRange" min="0" max="10000000" step="100000">
                    <div class="price-values">
                        <span>100.000₫</span>
                        <span>10.000.000₫</span>
                    </div>
                </div>
            </div>

            <div class="category-sidebar mb-4">
                <h5 class="filter-title">Kích Thước</h5>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sizeSmall">
                    <label class="form-check-label" for="sizeSmall">Nhỏ (dưới 20cm)</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sizeMedium">
                    <label class="form-check-label" for="sizeMedium">Trung bình (20-50cm)</label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="sizeLarge">
                    <label class="form-check-label" for="sizeLarge">Lớn (trên 50cm)</label>
                </div>
            </div>

        </div>

        <!-- Product Listing -->
        <div class="col-lg-9">
            <!-- Filter Bar -->
            <div class="d-flex justify-content-between align-items-center mb-4">
                <div class="d-flex">
                    <select class="form-select form-select-sm me-2" style="width: auto;">
                        <option selected>Sắp xếp theo mặc định</option>
                        <option>Giá: thấp đến cao</option>
                        <option>Giá: cao đến thấp</option>
                        <option>Sản phẩm mới nhất</option>
                        <option>Đánh giá cao nhất</option>
                    </select>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-outline-success active"><i class="fas fa-th"></i></button>
                        <button type="button" class="btn btn-outline-success"><i class="fas fa-list"></i></button>
                    </div>
                </div>
            </div>

            <!-- Products Grid -->
            <div class="row">
                <!-- Product 1 -->
                <div class="col-md-4 col-sm-6">
                    <div class="card product-card">
                        <span class="badge bg-danger product-badge">-15%</span>
                        <img src="./img/Cây Trầu Bà.jpg" class="card-img-top" alt="Cây trầu bà">
                        <div class="card-body">
                            <h5 class="card-title">Cây Trầu Bà</h5>
                            <p class="card-text">Dễ chăm sóc, thích hợp để bàn làm việc.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <span class="text-success fw-bold">280.000₫</span>
                                    <span class="text-muted text-decoration-line-through ms-2">330.000₫</span>
                                </div>
                                <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Product 2 -->
                <div class="col-md-4 col-sm-6">
                    <div class="card product-card">
                        <span class="badge bg-success product-badge">Mới</span>
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

                <!-- Product 3 -->
                <div class="col-md-4 col-sm-6">
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

                <!-- Product 4 -->
                <div class="col-md-4 col-sm-6">
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

                <!-- Product 5 -->
                <div class="col-md-4 col-sm-6">
                    <div class="card product-card">
                        <span class="badge bg-warning text-dark product-badge">Bán chạy</span>
                        <img src="./img/kim tien 2.jpg" class="card-img-top" alt="Cây kim tiền">
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

                <!-- Product 6 -->
                <div class="col-md-4 col-sm-6">
                    <div class="card product-card">
                        <img src="./img/Sen Đá.jpg" class="card-img-top" alt="Sen đá">
                        <div class="card-body">
                            <h5 class="card-title">Sen Đá</h5>
                            <p class="card-text">Dễ chăm sóc, nhiều màu sắc đẹp.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="text-success fw-bold">120.000₫</span>
                                <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Product 7 -->
                <div class="col-md-4 col-sm-6">
                    <div class="card product-card">
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

                <!-- Product 8 -->
                <div class="col-md-4 col-sm-6">
                    <div class="card product-card">
                        <span class="badge bg-danger product-badge">-10%</span>
                        <img src="./img/Cây Lan Ý.jpg" class="card-img-top" alt="Cây lan ý">
                        <div class="card-body">
                            <h5 class="card-title">Cây Lan Ý</h5>
                            <p class="card-text">Lọc không khí, trang trí nội thất đẹp.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <span class="text-success fw-bold">470.000₫</span>
                                    <span class="text-muted text-decoration-line-through ms-2">520.000₫</span>
                                </div>
                                <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Product 9 -->
                <div class="col-md-4 col-sm-6">
                    <div class="card product-card">
                        <img src="./img/phat loc.jpg" class="card-img-top" alt="Cây phát lộc">
                        <div class="card-body">
                            <h5 class="card-title">Cây Phát Lộc</h5>
                            <p class="card-text">Mang lại may mắn, tài lộc cho gia chủ.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <span class="text-success fw-bold">290.000₫</span>
                                <a href="#" class="btn btn-sm btn-outline-success">Thêm vào giỏ</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Pagination -->
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Trước</a>
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
    </div>
</main>

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
            <p>&copy; TREESHOP made by VanCao</p>
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

        // Xử lý bộ lọc giá
        $('#priceRange').on('input', function() {
            // Logic xử lý lọc giá có thể thêm ở đây
            console.log("Giá trị lọc: " + $(this).val());
        });
    });
</script>
</body>
</html>