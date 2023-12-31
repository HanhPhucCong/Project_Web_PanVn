<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 11/28/2023
  Time: 9:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <!--Import css bootrap-->
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous"
    />
    <!--end import css bootrap-->
    <!-- import fontawesome-->
    <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
            integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
            crossorigin="anonymous"
    />
    <!-- end import fontawesome-->
    <!--import my css-->
    <link rel="stylesheet" type="text/css" href="css/admin-style.css" />
    <!--end import my css-->
    <!--import css chung-->
    <link rel="stylesheet" type="text/css" href="css/content-5-page.css" />
    <!--End import css chung-->
    <!--Import page css-->
    <link rel="stylesheet" type="text/css" href="css/order-list.css" />
    <!--End import page css-->
    <!--import reponsive-->
    <link
            rel="stylesheet"
            type="text/css"
            href="css/responsive-order-list.css"
    />
    <!--End import reponsive-->
    <!--import menu component-->
    <link
            rel="stylesheet"
            type="text/css"
            href="css/component-menu-admin.css"
    />
    <!--end import menu component-->
    <!-- google font -->
    <link
            href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700"
            rel="stylesheet"
    />
    <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    />
    <!-- google font -->
    <title>Document</title>
</head>

<body>
<!--Thẻ lớn nhất chứa cả trang web-->
<div class="container-fluid table h-100">
    <!--Chia ra từng hàng-->
    <div class="row table-row h-100">
        <!--Thêm vào để text fixed-->
        <div
                class="col-2 col-sm-1 col-md-1 col-lg-2 col-xl-2 table-cell float-none align-top
         d-none d-sm-none d-md-block d-lg-block d-xl-block"
                id="side-menu-temp"
        ></div>
        <!--End Thêm vào để text fixed-->

        <!--slide menu-->
        <div
                class="col-2 col-sm-1 col-md-1 col-lg-2 col-xl-2 table-cell float-none align-top h-100 fixed-top
         d-none d-sm-none d-md-block d-lg-block d-xl-block"
                id="side-menu"
        >
            <div class="top-menu d-none d-lg-block">
                <span class="logo"><h2>Hello, Admin</h2></span>
            </div>
            <!-- <h4 class="d-none d-sm-none d-md-none d-lg-block d-xl-block">Trang quản trị</h4> -->
            <ul>
                <li class="link">
                    <a href="admin">
                        <span class="fas fa-home"></span>
                        <span
                                class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2"
                        >Trang chủ</span
                        >
                    </a>
                </li>

                <li class="link">
                    <a href="customer">
                        <span class="fas fa-users"></span>
                        <span
                                class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2"
                        >Khách hàng</span
                        >
                    </a>
                </li>


                <li class="link ads-button">
                    <a href="orderlist">
                        <span class="fas fa-shopping-cart"></span>
                        <span
                                class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2"
                        >Đơn hàng</span
                        >
                        <span
                                class="badge badge-success d-none d-sm-none d-md-none d-lg-inline d-xl-inline"
                        >40</span
                        >
                    </a>
                </li>

                <!--Menu sản phẩm-->
                <!--collape-->
                <li class="link">
                    <!-- <a href="#collapse-post" data-toggle="collapse" aria-controls="collapse-post">
                                       <span class="fas fa-tags"></span>
                                       <span>Sản phẩm</span>
                                       <span class="badge badge-warning label-message float-right mr-1">20</span>
                                   </a> -->
                    <a href="products">
                        <span class="fas fa-tags"></span>
                        <span
                                class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2"
                        >Sản phẩm</span
                        >
                        <span
                                class="badge badge-success d-none d-sm-none d-md-none d-lg-inline d-xl-inline"
                        >20</span
                        >
                    </a>
                </li>
                <li class="link">
                    <a href="AddProduct.jsp">
                        <span class="fas fa-plus-circle"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Thêm mới</span>
                    </a>
                </li>
            </ul>
        </div>
        <!--End slide menu-->

        <!--Nội dung-->
        <!--Mặc định padding -15 của col-->
        <div
                class="col-12 col-sm-12 col-md-11 col-lg-10 col-xl-10 table-cell float-none align-top p-0"
                id="col-content"
        >
            <header class="nav-header row m-0">
                <!--mặc định bị padding-->
                <!-- <div class="row m-0 pt-4 pb-3"> -->
                <div
                        class="content-left col-2 col-sm-6 col-md-7 col-lg-3 col-xl-4 pr-0 d-flex align-items-center"
                >
                    <nav
                            class="navbar-default d-block d-sm-block d-md-none d-lg-none d-xl-none d-none"
                    >
                        <button
                                class="navbar-toggler collapsed p-0"
                                type="button"
                                data-toggle="offcanvas"
                                data-target="#side-menu"
                        >
                            <span class="fas fa-bars"></span>
                        </button>
                    </nav>
                    <input
                            class="header-search-field d-none d-md-block ml-3"
                            type="text"
                            placeholder="Tìm kiếm"
                    />
                </div>

                <div
                        class="content-right row ml-0 mr-0 col-10 col-sm-6 col-md-5 col-lg-9 col-xl-8 d-flex align-items-center"
                >
                    <!-- <ul class="list-unstyled row ml-0 mr-0"> -->
                    <div class="col-0 col-lg-6 text-right d-none d-lg-block">
                        Chào mừng đến trang quản lý đơn hàng
                    </div>
                    <div class="col-12 col-lg-6 text-right">
                        <a href="#" class="mr-4">
                            <span class="fas fa-bell"></span>
                            <span class="badge badge-success label-message">3</span>
                        </a>
                        <a href="#" class="mr-5">
                            <span class="fas fa-envelope"></span>
                            <span class="badge badge-success label-message">3</span>
                        </a>
                        <a href="#" class="logout">
                            <span class="fas fa-sign-out-alt"></span>
                            &nbsp;Đăng xuất
                        </a>
                    </div>
                    <!-- </ul> -->
                </div>
                <!-- </div> -->
            </header>

            <!--Nội dung trang index-->
            <div id="dashboard-con">
                <div id="content">
                    <header>
                        <h5 class="mb-0">Danh sách đơn hàng</h5>
                    </header>

                    <div class="content-inner">
                        <!--Thanh tìm kiếm sản phẩm-->
                        <form class="form row ml-0 mr-0 mb-4">
                            <div class="form-row col-7 col-sm-9 col-lg-10 p-0 ml-0 mr-0">
                                <div
                                        class="form-group col-12 col-md-4 col-lg-3 mt-2 mb-0 pl-0"
                                >
                                    <input
                                            type="password"
                                            class="form-control form-control-sm"
                                            id="inputPassword2"
                                            placeholder="Tên khách hàng"
                                    />
                                </div>

                                <div
                                        class="form-group col-12 col-sm-6 col-md-4 col-lg-3 mb-0 mt-2 d-flex"
                                >
                                    <label class="col-form-label col-form-label-sm mr-2"
                                    >Từ</label
                                    >
                                    <!--Để tạm thẻ này sau này sửa thành date picker-->
                                    <select class="custom-select custom-select-sm">
                                        <option>10/4/2019</option>
                                    </select>
                                    <!--End Để tạm thẻ này sau này sửa thành date picker-->
                                </div>

                                <div
                                        class="form-group col-12 col-sm-6 col-md-4 col-lg-3 mb-0 mt-2 d-flex"
                                >
                                    <label class="col-form-label col-form-label-sm mr-2"
                                    >Đến</label
                                    >
                                    <!--Để tạm thẻ này sau này sửa thành date picker-->
                                    <select class="custom-select custom-select-sm">
                                        <option>10/4/2019</option>
                                    </select>
                                    <!--End Để tạm thẻ này sau này sửa thành date picker-->
                                </div>

                                <div
                                        class="form-group col-12 col-sm-12 col-md-4 col-lg-3 mb-0 mt-2 pl-0"
                                >
                                    <select class="custom-select custom-select-sm">
                                        <option>Xem tất cả</option>
                                        <option>Đã thanh toán</option>
                                        <option>Chưa thanh toán</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-5 col-sm-3 col-lg-2 pr-0 mt-2">
                                <button type="button" class="btn btn-sm btn-success w-100">
                                    <i class="fas fa-search"></i>&ensp;Tìm kiếm
                                </button>
                            </div>
                        </form>
                        <!--End thanh tìm kiếm sản phẩm-->

                        <!--Table hiển thị sản phẩm-->
                        <table class="table table-responsive-xl mb-4">
                            <thead>
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Khách hàng</th>
                                <th>Thời gian</th>
                                <th class="text-center">Hình thức</th>
                                <th class="text-center">Trạng thái</th>
                                <th class="text-center">Chi tiết</th>
                                <th class="text-center">Tác vụ</th>
                            </tr>
                            </thead>

                            <tbody>
                            <!--Nội dung của một hàng-->
                            <tr>
                                <td>KH120</td>
                                <td>manhdz@gmail</td>
                                <td>
                                    <span>14/04/2019&nbsp;</span>
                                    <span>13:21:25</span>
                                </td>
                                <td align="center">
                        <span class="badge badge-pill badge-warning"
                        >Đặt hàng</span
                        >
                                </td>
                                <td align="center">
                                    <span class="badge badge-light">Chưa thanh toán</span>
                                </td>
                                <td align="center">
                                    <button
                                            type="button"
                                            class="btn btn-sm btn-primary"
                                            data-toggle="modal"
                                            data-target="#exampleModalCenter"
                                    >
                                        Xem chi tiết
                                    </button>
                                </td>

                                <td align="center">
                                    <button class="btn btn-sm btn-danger" type="button">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>

                            <!--End nội dung của một hàng-->

                            <!--Nội dung của một hàng-->
                            <tr>
                                <td>KH120</td>
                                <td>manhdz@gmail</td>
                                <td>
                                    <span>14/04/2023&nbsp;</span>
                                    <span>13:21:25</span>
                                </td>
                                <td align="center">
                        <span class="badge badge-pill badge-warning"
                        >Đặt hàng</span
                        >
                                </td>
                                <td align="center">
                                    <span class="badge badge-info">đang giao</span>
                                </td>
                                <td align="center">
                                    <button
                                            type="button"
                                            class="btn btn-sm btn-primary"
                                            data-toggle="modal"
                                            data-target="#exampleModalCenter"
                                    >
                                        Xem chi tiết
                                    </button>
                                </td>

                                <td align="center">
                                    <button class="btn btn-sm btn-danger" type="button">
                                        <i class="fas fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>

                            <!--End nội dung của một hàng-->
                            </tbody>
                        </table>
                        <!--End Table hiển thị sản phẩm-->

                        <!--Modal hiển thị thông tin chi tiết của đơn hàng-->
                        <div
                                class="modal fade bd-example-modal-lg"
                                id="exampleModalCenter"
                                tabindex="-1"
                                role="dialog"
                                aria-labelledby="exampleModalCenterTitle"
                                aria-hidden="true"
                        >
                            <div
                                    class="modal-dialog modal-dialog-centered modal-lg"
                                    role="document"
                            >
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">
                                            Thông tin chi tiết đơn hàng&nbsp;
                                        </h5>
                                        <h5 class="modal-title">KH120</h5>
                                        <button
                                                type="button"
                                                class="close"
                                                data-dismiss="modal"
                                                aria-label="Close"
                                        >
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>

                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row ml-0 mr-0">
                                                <div class="col-3 p-0">
                                                    <p>Khách hàng:</p>
                                                </div>
                                                <div class="col-9">
                                                    Hoàng Công Mạnh
                                                </div>
                                            </div>

                                            <div class="row ml-0 mr-0">
                                                <div class="col-3 p-0">
                                                    <p>Ngày đặt:</p>
                                                </div>
                                                <div class="col-9">
                                                    14/04/2019 14:00
                                                </div>
                                            </div>

                                            <div class="row ml-0 mr-0">
                                                <div class="col-3 p-0">
                                                    <p>Hình thức:</p>
                                                </div>
                                                <div class="col-9">
                              <span class="badge badge-pill badge-warning"
                              >Đặt hàng</span
                              >
                                                </div>
                                            </div>

                                            <div class="row ml-0 mr-0">
                                                <div class="col-3 p-0">
                                                    <p>Trạng thái:</p>
                                                </div>
                                                <div class="col-9">
                                                    <span class="badge badge-info">đang giao</span>
                                                </div>
                                            </div>

                                            <div class="row ml-0 mr-0">
                                                <div class="col-3 p-0">
                                                    <p>Tổng giá trị:</p>
                                                </div>
                                                <div class="col-9">
                                                    200.000&nbsp;đ
                                                </div>
                                            </div>
                                            <br />
                                            <h5>Thông tin chi tiết</h5>
                                            <div class="row ml-0 mr-0">
                                                <table class="table table-responsive-sm">
                                                    <thead>
                                                    <tr>
                                                        <th scope="col">Mã</th>
                                                        <th scope="col">Sản phẩm</th>
                                                        <th scope="col">Số lượng</th>
                                                        <th scope="col">Tổng tiền</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td scope="row">CA1</td>
                                                        <td>Cà chua sạch (200.000&nbsp;đ)</td>
                                                        <td>10</td>
                                                        <td>200.000&nbsp;đ</td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row">CA1</td>
                                                        <td>Cà chua sạch (200.000&nbsp;đ)</td>
                                                        <td>10</td>
                                                        <td>200.000&nbsp;đ</td>
                                                    </tr>
                                                    <tr>
                                                        <td scope="row">CA1</td>
                                                        <td>Cà chua sạch (200.000&nbsp;đ)</td>
                                                        <td>10</td>
                                                        <td>200.000&nbsp;đ</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <button
                                                type="button"
                                                class="btn btn-sm btn-outline-success"
                                        >
                                            Duyệt
                                        </button>
                                        <button
                                                type="button"
                                                class="btn btn-sm btn-outline-primary"
                                        >
                                            Giao hàng
                                        </button>
                                        <button
                                                type="button"
                                                class="btn btn-sm btn-outline-info"
                                        >
                                            Hoàn tất đơn hàng
                                        </button>
                                        <button
                                                type="button"
                                                class="btn btn-sm btn-outline-danger"
                                        >
                                            Hủy đơn
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End modal hiển thị thông tin chi tiết của đơn hàng-->

                        <hr />

                        <!--Thanh điều hướng trang-->
                        <div class="row justify-content-center">
                            <!-- <div class="col-md-12"> -->
                            <nav>
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">1</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">2</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">3</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">4</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">5</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                            <!-- </div> -->
                        </div>
                        <!--end Thanh điều hướng trang-->
                    </div>
                </div>
            </div>
            <!--End Nội dung trang index-->

            <!--footer-->
            <footer id="admin-footer">
            </footer>
            <!--end footer-->
        </div>
    </div>
</div>

<!--import script bootrap-->
<script
        src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"
></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"
></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"
></script>
<!--end import sript bootrap-->
<!--import nav-bar-side-menu script-->
<script src="../js/nav-bar-side-menu.js"></script>
<!--End import nav-bar-side-menu script-->
</body>
</html>

