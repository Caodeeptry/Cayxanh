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
    <title>Cây Kim Tiền - Cây Xanh</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="./css/chitiet.css">
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
                        <a class="nav-link active" href="#">Giới thiệu</a>
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

<!-- Product Header -->
<section class="product-header">
    <div class="container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                <li class="breadcrumb-item active" aria-current="page">Cây Kim Tiền</li>
            </ol>
        </nav>
    </div>
</section>

<!-- Product Detail -->
<section class="product-detail py-5">
    <div class="container">
        <div class="row">
            <!-- Product Images -->
            <div class="col-md-6">
                <div class="product-image-main">
                    <img id="mainImage" src="./img/kim tien 1.jpg" class="img-fluid" alt="Cây Kim Tiền">
                </div>
                <div class="product-thumbnails">
                    <div class="product-thumbnail active" data-image="">
                        <img src="./img/kim tien.jpg" class="img-fluid" alt="Cây Kim Tiền">
                    </div>
                    <div class="product-thumbnail" >
                        <img src="./img/kim tien 2.jpg" class="img-fluid" alt="Cây Kim Tiền góc khác">
                    </div>
                    <div class="product-thumbnail" data-image="">
                        <img src="./img/kimtien3.png" class="img-fluid" alt="Cây Kim Tiền trong nhà">
                    </div>
                    <div class="product-thumbnail" data-image="">
                        <img src="./img/kim tien.jpg" class="img-fluid" alt="Cây Kim Tiền chi tiết">
                    </div>
                </div>
            </div>

            <!-- Product Info -->
            <div class="col-md-6">
                <div class="product-info">
                    <h1 class="product-title">Cây Kim Tiền</h1>
                    <div class="product-price">
                        <span class="current-price">450.000₫</span>
                    </div>

                    <div class="product-rating mb-3">
                        <div class="d-flex align-items-center">
                            <div class="rating-stars">
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star-half-alt text-warning"></i>
                            </div>
                            <span class="ms-2"></span>
                        </div>
                    </div>

                    <p class="product-description">
                        Cây Kim Tiền là loại cây phong thủy được ưa chuộng nhất hiện nay, mang lại tài lộc, may mắn và thịnh vượng cho gia chủ. Cây có sức sống mạnh mẽ, dễ chăm sóc và thích hợp với mọi không gian.
                    </p>

                    <div class="product-meta">
                        <div class="meta-item">
                            <span class="meta-icon"><i class="fas fa-check-circle"></i></span>
                            <span>Tình trạng: <strong>Còn hàng</strong></span>
                        </div>
                        <div class="meta-item">
                            <span class="meta-icon"><i class="fas fa-tag"></i></span>
                            <span>Danh mục: <strong>Cây phong thủy, Cây nội thất</strong></span>
                        </div>
                        <div class="meta-item">
                            <span class="meta-icon"><i class="fas fa-share-alt"></i></span>
                            <span>Mã sản phẩm: <strong>KT001</strong></span>
                        </div>
                    </div>

                    <div class="quantity-selector">
                        <label class="me-3"><strong>Số lượng:</strong></label>
                        <div class="d-flex">
                            <div class="quantity-btn" id="decreaseQty">-</div>
                            <input type="number" class="quantity-input" id="productQty" value="1" min="1">
                            <div class="quantity-btn" id="increaseQty">+</div>
                        </div>
                    </div>

                    <div class="action-buttons">
                        <button class="btn-add-to-cart"><i class="fas fa-shopping-cart me-2"></i> Thêm vào giỏ hàng</button>
                        <button class="btn-wishlist"><i class="far fa-heart"></i></button>
                    </div>

                    <div class="product-share">
                        <span class="me-2"><strong>Chia sẻ:</strong></span>
                        <a href="#" class="text-dark me-2"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="text-dark me-2"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="text-dark me-2"><i class="fab fa-pinterest"></i></a>
                        <a href="#" class="text-dark"><i class="fas fa-envelope"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product Tabs -->
        <div class="product-tabs">
            <ul class="nav nav-tabs" id="productTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="description-tab" data-bs-toggle="tab" data-bs-target="#description" type="button" role="tab">Mô tả</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="features-tab" data-bs-toggle="tab" data-bs-target="#features" type="button" role="tab">Đặc điểm</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="care-tab" data-bs-toggle="tab" data-bs-target="#care" type="button" role="tab">Chăm sóc</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="reviews-tab" data-bs-toggle="tab" data-bs-target="#reviews" type="button" role="tab">Đánh giá (42)</button>
                </li>
            </ul>

            <div class="tab-content" id="productTabContent">
                <!-- Description Tab -->
                <div class="tab-pane fade show active" id="description" role="tabpanel">
                    <h4>Giới thiệu về Cây Kim Tiền</h4>
                    <p>Cây Kim Tiền (tên khoa học: Zamioculcas zamiifolia) là loại cây cảnh nội thất phổ biến, có nguồn gốc từ vùng nhiệt đới Đông Phi. Cây có khả năng thích nghi tốt với môi trường trong nhà và ưa bóng râm.</p>

                    <p>Trong phong thủy, Kim Tiền được coi là biểu tượng của sự giàu có, thịnh vượng và may mắn. Cây thu hút năng lượng tích cực, giúp gia chủ làm ăn phát đạt, tài lộc dồi dào.</p>

                    <h4>Lợi ích khi trồng Cây Kim Tiền</h4>
                    <ul class="product-features">
                        <li>Thanh lọc không khí, hấp thụ các chất độc hại</li>
                        <li>Mang lại may mắn, tài lộc cho gia chủ</li>
                        <li>Dễ chăm sóc, phù hợp với người bận rộn</li>
                        <li>Thích hợp trang trí văn phòng, nhà ở, cửa hàng</li>
                        <li>Tăng cường độ ẩm không khí, tốt cho sức khỏe</li>
                    </ul>

                    <div class="row mt-4">
                        <div class="col-md-6">
                            <img src="./img/Sen Đá.jpg" class="img-fluid rounded" alt="Cây Kim Tiền trong nhà">
                        </div>
                        <div class="col-md-6">
                            <img src="./img/kim tien 1.jpg" class="img-fluid rounded" alt="Cây Kim Tiền văn phòng">
                        </div>
                    </div>
                </div>

                <!-- Features Tab -->
                <div class="tab-pane fade" id="features" role="tabpanel">
                    <h4>Đặc điểm của Cây Kim Tiền</h4>

                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <th width="200">Tên khoa học</th>
                                <td>Zamioculcas zamiifolia</td>
                            </tr>
                            <tr>
                                <th>Họ thực vật</th>
                                <td>Araceae (họ Ráy)</td>
                            </tr>
                            <tr>
                                <th>Chiều cao</th>
                                <td>30-50 cm (kể cả chậu)</td>
                            </tr>
                            <tr>
                                <th>Đường kính tán</th>
                                <td>25-35 cm</td>
                            </tr>
                            <tr>
                                <th>Lá</th>
                                <td>Lá kép, dày, màu xanh bóng, mọc đối xứng</td>
                            </tr>
                            <tr>
                                <th>Thân</th>
                                <td>Mập mạp, phình to ở gốc, dự trữ nước</td>
                            </tr>
                            <tr>
                                <th>Điều kiện ánh sáng</th>
                                <td>Ánh sáng gián tiếp, tránh ánh nắng trực tiếp</td>
                            </tr>
                            <tr>
                                <th>Nhu cầu nước</th>
                                <td>Trung bình, chịu hạn tốt</td>
                            </tr>
                            <tr>
                                <th>Độc tính</th>
                                <td>Có độc nhẹ, tránh tiếp xúc trực tiếp với nhựa cây</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Care Tab -->
                <div class="tab-pane fade" id="care" role="tabpanel">
                    <h4>Hướng dẫn chăm sóc Cây Kim Tiền</h4>

                    <h5>Ánh sáng</h5>
                    <p>Cây Kim Tiền ưa sáng nhưng không thích ánh nắng trực tiếp. Nên đặt cây ở vị trí có ánh sáng gián tiếp hoặc bán râm. Tránh đặt cây dưới ánh nắng mặt trời trực tiếp vì có thể làm cháy lá.</p>

                    <h5>Tưới nước</h5>
                    <p>Kim Tiền có khả năng chịu hạn tốt nhờ thân mọng nước. Chỉ tưới khi đất trên bề mặt chậu đã khô. Mùa hè tưới 1 lần/tuần, mùa đông 2 tuần/lần. Tránh tưới quá nhiều gây thối rễ.</p>

                    <h5>Đất trồng</h5>
                    <p>Sử dụng đất tơi xốp, giàu dinh dưỡng và thoát nước tốt. Có thể trộn thêm xơ dừa, trấu hun hoặc phân hữu cơ để tăng độ dinh dưỡng.</p>

                    <h5>Bón phân</h5>
                    <p>Bón phân NPK định kỳ 1-2 tháng/lần trong mùa sinh trưởng (mùa xuân và mùa hè). Giảm bón phân vào mùa đông khi cây ngừng sinh trưởng.</p>

                    <h5>Nhân giống</h5>
                    <p>Có thể nhân giống bằng cách tách bụi hoặc giâm lá. Mỗi lá khi giâm sẽ phát triển thành cây con sau 2-3 tháng.</p>
                </div>

                <!-- Reviews Tab -->
                <div class="tab-pane fade" id="reviews" role="tabpanel">
                    <h4>Đánh giá từ khách hàng</h4>

                    <div class="row mb-5">
                        <div class="col-md-5">
                            <div class="bg-light p-4 rounded text-center">
                                <h2 class="text-primary">4.5/5</h2>
                                <div class="rating-stars mb-2">
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star text-warning"></i>
                                    <i class="fas fa-star-half-alt text-warning"></i>
                                </div>
                                <p class="mb-0">Dựa trên 42 đánh giá</p>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="rating-bars">
                                <div class="d-flex align-items-center mb-2">
                                    <span class="me-2">5 <i class="fas fa-star text-warning"></i></span>
                                    <div class="progress flex-grow-1 me-2">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <span>75%</span>
                                </div>
                                <div class="d-flex align-items-center mb-2">
                                    <span class="me-2">4 <i class="fas fa-star text-warning"></i></span>
                                    <div class="progress flex-grow-1 me-2">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <span>15%</span>
                                </div>
                                <div class="d-flex align-items-center mb-2">
                                    <span class="me-2">3 <i class="fas fa-star text-warning"></i></span>
                                    <div class="progress flex-grow-1 me-2">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 7%" aria-valuenow="7" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <span>7%</span>
                                </div>
                                <div class="d-flex align-items-center mb-2">
                                    <span class="me-2">2 <i class="fas fa-star text-warning"></i></span>
                                    <div class="progress flex-grow-1 me-2">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 2%" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <span>2%</span>
                                </div>
                                <div class="d-flex align-items-center">
                                    <span class="me-2">1 <i class="fas fa-star text-warning"></i></span>
                                    <div class="progress flex-grow-1 me-2">
                                        <div class="progress-bar bg-warning" role="progressbar" style="width: 1%" aria-valuenow="1" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                    <span>1%</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="reviews-list">
                        <div class="review-item">
                            <div class="review-header">
                                <span class="review-author">Nguyễn Văn Cao</span>
                                <span class="review-date">20/06/2023</span>
                            </div>
                            <div class="rating-stars mb-2">
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                            </div>
                            <p>Cây đẹp, giao hàng nhanh. Đóng gói cẩn thận. Cây khỏe mạnh, lá xanh bóng. Rất hài lòng với sản phẩm!</p>
                        </div>

                        <div class="review-item">
                            <div class="review-header">
                                <span class="review-author">Đặng Nhật Minh</span>
                                <span class="review-date">15/06/2023</span>
                            </div>
                            <div class="rating-stars mb-2">
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="far fa-star text-warning"></i>
                            </div>
                            <p>Cây đẹp, giá hợp lý. Tuy nhiên hơi ít lá so với mong đợi. Hy vọng cây sẽ phát triển tốt.</p>
                        </div>

                        <div class="review-item">
                            <div class="review-header">
                                <span class="review-author">Nguyễn Hữu Phúc</span>
                                <span class="review-date">10/06/2023</span>
                            </div>
                            <div class="rating-stars mb-2">
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star text-warning"></i>
                                <i class="fas fa-star-half-alt text-warning"></i>
                            </div>
                            <p>Đặt mua 2 cây, 1 cây rất đẹp nhưng 1 cây hơi yếu. Shop hỗ trợ đổi cây mới nên rất hài lòng về dịch vụ.</p>
                        </div>
                    </div>

                    <div class="text-center mt-4">
                        <button class="btn btn-outline-primary">Xem thêm đánh giá</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Related Products -->
        <div class="related-products">
            <h3 class="section-title">Sản phẩm liên quan</h3>
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="card product-card">
                        <span class="badge bg-danger product-badge-card">-15%</span>
                        <img src="./img/Cây Trầu Bà.jpg" class="card-img-top" alt="Cây trầu bà">
                        <div class="card-body">
                            <h5 class="card-title">Cây Trầu Bà</h5>
                            <div class="product-price">
                                <span class="text-success fw-bold">280.000₫</span>
                                <span class="text-muted text-decoration-line-through ms-2">330.000₫</span>
                            </div>
                            <a href="#" class="btn btn-sm btn-outline-success mt-2">Xem chi tiết</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6">
                    <div class="card product-card">
                        <img src="./img/luoi ho.jpg" class="card-img-top" alt="Cây lưỡi hổ">
                        <div class="card-body">
                            <h5 class="card-title">Cây Lưỡi Hổ</h5>
                            <div class="product-price">
                                <span class="text-success fw-bold">350.000₫</span>
                            </div>
                            <a href="#" class="btn btn-sm btn-outline-success mt-2">Xem chi tiết</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6">
                    <div class="card product-card">
                        <span class="badge bg-success product-badge-card">Mới</span>
                        <img src="./img/Cây Ngọc Ngân.jpg" class="card-img-top" alt="Cây ngọc ngân">
                        <div class="card-body">
                            <h5 class="card-title">Cây Ngọc Ngân</h5>
                            <div class="product-price">
                                <span class="text-success fw-bold">380.000₫</span>
                            </div>
                            <a href="#" class="btn btn-sm btn-outline-success mt-2">Xem chi tiết</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6">
                    <div class="card product-card">
                        <img src="./img/Cây Lan Ý.jpg" class="card-img-top" alt="Cây lan ý">
                        <div class="card-body">
                            <h5 class="card-title">Cây Lan Ý</h5>
                            <div class="product-price">
                                <span class="text-success fw-bold">520.000₫</span>
                            </div>
                            <a href="#" class="btn btn-sm btn-outline-success mt-2">Xem chi tiết</a>
                        </div>
                    </div>
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

        // Xử lý thay đổi ảnh sản phẩm
        $('.product-thumbnail').click(function() {
            $('.product-thumbnail').removeClass('active');
            $(this).addClass('active');

            const newImage = $(this).data('image');
            $('#mainImage').attr('src', newImage);
        });

        // Xử lý tăng giảm số lượng
        $('#increaseQty').click(function() {
            const currentVal = parseInt($('#productQty').val());
            $('#productQty').val(currentVal + 1);
        });

        $('#decreaseQty').click(function() {
            const currentVal = parseInt($('#productQty').val());
            if (currentVal > 1) {
                $('#productQty').val(currentVal - 1);
            }
        });

        // Xử lý thêm vào giỏ hàng
        $('.btn-add-to-cart').click(function() {
            const quantity = $('#productQty').val();
            alert(`Đã thêm ${quantity} sản phẩm vào giỏ hàng!`);
        });

        // Xử lý thêm vào yêu thích
        $('.btn-wishlist').click(function() {
            $(this).find('i').toggleClass('far fas');
            if ($(this).find('i').hasClass('fas')) {
                alert('Đã thêm vào danh sách yêu thích!');
            } else {
                alert('Đã xóa khỏi danh sách yêu thích!');
            }
        });
    });
</script>
</body>
</html>