<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 4 admin, bootstrap 4, css3 dashboard, bootstrap 4 dashboard, AdminWrap lite admin bootstrap 4 dashboard, frontend, responsive bootstrap 4 admin template, Nice admin lite design, Nice admin lite dashboard bootstrap 4 dashboard template" />
<meta name="description"
	content="Nice Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework" />
<meta name="robots" content="noindex,nofollow" />
<title>Nice Admin Lite Template by WrapPixel</title>
<link rel="canonical"
	href="https://www.wrappixel.com/templates/niceadmin-lite/" />
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="../assets/images/favicon.png" />
<!-- Custom CSS -->
<link href="../dist/css/style.min.css" rel="stylesheet" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper" data-navbarbg="skin6" data-theme="light"
		data-layout="vertical" data-sidebartype="full"
		data-boxed-layout="full">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<%@include file="../includes/topHeader.jsp"%>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<jsp:include page="../includes/navbar.jsp"></jsp:include>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-5 align-self-center">
						<h4 class="page-title">Rooms</h4>
					</div>
					<div class="col-7 align-self-center">
						<div class="d-flex align-items-center justify-content-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">
										Rooms</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
			<%@ include file="../includes/notific.jsp"%>
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<div id="demo" class="carousel slide" data-ride="carousel"
									style="align-items: center;">

									<!-- Indicators -->
									<ul class="carousel-indicators">
										<li data-target="#demo" data-slide-to="0" class="active"></li>
										<li data-target="#demo" data-slide-to="1"></li>
										<li data-target="#demo" data-slide-to="2"></li>
									</ul>

									<!-- The slideshow -->
									<div class="carousel-inner">
										<div class="carousel-item active">
											<div class="parent d-flex justify-content-center">
												<img src="../images/1.jpg" alt="Los Angeles"
													style="width: 50%; margin: auto; height: 500px;">
											</div>
										</div>
										<div class="carousel-item">
											<div class="parent d-flex justify-content-center">
												<img src="../images/2.jpg" alt="Los Angeles"
													style="width: 50%; margin: auto; height: 500px;">
											</div>
										</div>
										<div class="carousel-item">
											<div class="parent d-flex justify-content-center">
												<img src="../images/3.jpg" alt="Los Angeles"
													style="width: 50%; margin: auto; height: 500px;">
											</div>
										</div>
									</div>

									<!-- Left and right controls -->
									<a class="carousel-control-prev" href="#demo" data-slide="prev">
										<span class="carousel-control-prev-icon"></span>
									</a> <a class="carousel-control-next" href="#demo"
										data-slide="next"> <span
										class="carousel-control-next-icon"></span>
									</a>

								</div>
								<div class="table-responsive" style="padding-top: 40px;">
									<table class="table table-hover">
										<tbody>
											<tr>
												<th scope="col" class="card-title"><b>Address:</b></th>
												<th scope="col" colspan="3" class="text-success"><s:property
														value="address" /></th>
											</tr>
											<tr>
												<th scope="col"><b>Sector:</b></th>
												<th scope="col" colspan="3">Hồ Chí Minh</th>
											</tr>
											<tr>
												<th scope="col"><b>Type:</b></th>
												<th scope="col" colspan="3" class="text-info">Phòng
													trọ, nhà trọ</th>
											</tr>
											<tr>
												<th scope="col"><b>PostID:</b></th>
												<th scope="col">#<s:property value="roomID" /></th>
												<th scope="col">Poster:</th>
												<th scope="col"><s:property value="authorName" /></th>
											</tr>
											<tr>
												<th scope="col"><b>Scope:</b></th>
												<th scope="col">Public</th>
												<th scope="col">Phone:</th>
												<th scope="col" class="text-success"><s:property
														value="phone" /></th>
											</tr>
											<tr>
												<th scope="col"><b>Update Date:</b></th>
												<th scope="col">null</th>
												<th scope="col">Area:</th>
												<th scope="col" class="text-danger"><s:property
														value="area" />m<sup>2</sup></th>
											</tr>
											<tr>
												<th scope="col"><b>Expires Date:</b></th>
												<th scope="col">null</th>
												<th scope="col">Prices:</th>
												<th scope="col" class="text-danger"><s:property
														value="prices" /> Millions Per Month</th>
											</tr>
										</tbody>
									</table>

								</div>
							</div>
							<div class="card-body">
								<h4>
									<b>Thông tin mô tả</b>
								</h4>
								<h5>
									<s:property value="body" />
								</h5>
								<p>---------------------------------------------</p>
								<p>
									☎️ Điện thoại liên hệ: <strong style="color: red;"><s:property
											value="phone" /></strong>
								</p>
							</div>
							<div class="card-body">
								<a href="#" class="btn btn-warning" onclick="history.back();">Go
									Back</a>
							</div>
						</div>
					</div>
				</div>
				<!--==============================================================-->
				<!-- End PAge Content -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Right sidebar -->
				<!-- ============================================================== -->
				<!-- .right-sidebar -->
				<!-- ============================================================== -->
				<!-- End Right sidebar -->
				<!-- ============================================================== -->
			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
			<jsp:include page="../includes/footer.jsp"></jsp:include>
			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="../assets/libs/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="../assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="../assets/extra-libs/sparkline/sparkline.js"></script>
	<!--Wave Effects -->
	<script src="../dist/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="../dist/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="../dist/js/custom.min.js"></script>
	<script type="text/javascript">
		$('#demo').carousel({
			interval : 2000,
			cycle : true
		});
	</script>
</body>
</html>
