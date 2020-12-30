<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 4 admin, bootstrap 4, css3 dashboard, bootstrap 4 dashboard, AdminWrap lite admin bootstrap 4 dashboard, frontend, responsive bootstrap 4 admin template, Nice admin lite design, Nice admin lite dashboard bootstrap 4 dashboard template">
<meta name="description"
	content="Nice Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
<meta name="robots" content="noindex,nofollow">
<title>Profile</title>
<link rel="canonical"
	href="https://www.wrappixel.com/templates/niceadmin-lite/" />
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="../assets/images/favicon.png">
<!-- Custom CSS -->
<link href="../dist/css/style.min.css" rel="stylesheet">
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
		<jsp:include page="../includes/admin/topHeader.jsp"></jsp:include>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<jsp:include page="../includes/admin/navbar.jsp"></jsp:include>
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
						<h4 class="page-title">Profile</h4>
					</div>
					<div class="col-7 align-self-center">
						<div class="d-flex align-items-center justify-content-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Profile</li>
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
				<!-- ============================================================== -->
				<!-- Start Page Content -->
				<!-- ============================================================== -->
				<!-- Row -->
				<div class="row">
					<!-- Column -->
					<div class="col-lg-4 col-xlg-3 col-md-5">
						<div class="card">
							<div class="card-body">
								<center class="m-t-30">
									<img src="../assets/images/users/5.jpg" class="rounded-circle"
										width="150" />
									<h4 class="card-title m-t-10">
										<s:property value="fullname" />
									</h4>
									<h6 class="card-subtitle">Accoubts Manager Amix corp</h6>
									<div class="row text-center justify-content-md-center">
										<div class="col-4">
											<a href="javascript:void(0)" class="link"><i
												class="icon-people"></i> <font class="font-medium">254</font>
											</a>
										</div>
										<div class="col-4">
											<a href="javascript:void(0)" class="link"><i
												class="icon-picture"></i> <font class="font-medium">54</font>
											</a>
										</div>
									</div>
								</center>
							</div>
							<div>
								<hr>
							</div>
							<div class="card-body">
								<small class="text-muted">Email address </small>
								<h6>
									<s:property value="email" />
								</h6>
								<small class="text-muted p-t-30 db">Phone</small>
								<h6>
									<s:property value="phone" />
								</h6>
								<small class="text-muted p-t-30 db">Address</small>
								<h6>
									<s:property value="address" />
								</h6>

								<small class="text-muted p-t-30 db">Social Profile</small> <br />
								<button class="btn btn-circle btn-secondary">
									<i class="mdi mdi-facebook"></i>
								</button>
								<button class="btn btn-circle btn-secondary">
									<i class="mdi mdi-twitter"></i>
								</button>
								<button class="btn btn-circle btn-secondary">
									<i class="mdi mdi-youtube-play"></i>
								</button>
							</div>
						</div>
					</div>
					<!-- Column -->
					<!-- Column -->
					<div class="col-lg-8 col-xlg-9 col-md-7">
						<div class="card">
							<div class="card-body">
								<form action="updateInformation" method="post"
									class="form-horizontal form-material">
									<div class="form-group">
										<label class="col-md-12">Full Name</label>
										<div class="col-md-12">
											<input name="fullname" type="text"
												placeholder='<s:property value="fullname"/>'
												class="form-control form-control-line">
										</div>
									</div>
									<div class="form-group">
										<label for="example-email" class="col-md-12">Email</label>
										<div class="col-md-12">
											<input name="email" type="email"
												placeholder='<s:property value="email"/>'
												class="form-control form-control-line" name="example-email"
												id="example-email">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-12">Password</label>
										<div class="col-md-12">
											<input name="password" type="password" value="password"
												class="form-control form-control-line">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-12">Phone No</label>
										<div class="col-md-12">
											<input name="phone" type="text"
												placeholder='<s:property value="phone"/>'
												class="form-control form-control-line" required="required">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-12">Message</label>
										<div class="col-md-12">
											<textarea name="message" rows="5"
												class="form-control form-control-line"><s:property
													value="message" /></textarea>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12">
											<button class="btn btn-success">Update Profile</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- Column -->
				</div>
				<!-- Row -->
				<!-- ============================================================== -->
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
			<jsp:include page="../includes/admin/footer.jsp"></jsp:include>
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
</body>

</html>