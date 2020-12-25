<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<title>Admin Dashboard</title>
<link rel="canonical"
	href="https://www.wrappixel.com/templates/niceadmin-lite/" />
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="../assets/images/favicon.png">
<!-- Custom CSS -->
<link href="../assets/libs/chartist/dist/chartist.min.css"
	rel="stylesheet">
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
		<jsp:include page="../includes/topHeader.jsp"></jsp:include>
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
						<h4 class="page-title">Dashboard</h4>
					</div>
					<div class="col-7 align-self-center">
						<div class="d-flex align-items-center justify-content-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
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
				<!-- Ravenue - page-view-bounce rate -->
				<!-- ============================================================== -->
				<div class="row">
					<!-- column -->
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Latest Sales</h4>
							</div>
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<th class="border-top-0">NAME</th>
											<th class="border-top-0">STATUS</th>
											<th class="border-top-0">DATE</th>
											<th class="border-top-0">PRICE</th>
										</tr>
									</thead>
									<tbody>
										<tr>

											<td class="txt-oflo">Elite admin</td>
											<td><span class="label label-success label-rounded">SALE</span>
											</td>
											<td class="txt-oflo">April 18, 2017</td>
											<td><span class="font-medium">$24</span></td>
										</tr>
										<tr>

											<td class="txt-oflo">Real Homes WP Theme</td>
											<td><span class="label label-info label-rounded">EXTENDED</span></td>
											<td class="txt-oflo">April 19, 2017</td>
											<td><span class="font-medium">$1250</span></td>
										</tr>
										<tr>

											<td class="txt-oflo">Ample Admin</td>
											<td><span class="label label-purple label-rounded">Tax</span></td>
											<td class="txt-oflo">April 19, 2017</td>
											<td><span class="font-medium">$1250</span></td>
										</tr>
										<tr>

											<td class="txt-oflo">Medical Pro WP Theme</td>
											<td><span class="label label-success label-rounded">Sale</span></td>
											<td class="txt-oflo">April 20, 2017</td>
											<td><span class="font-medium">-$24</span></td>
										</tr>
										<tr>

											<td class="txt-oflo">Hosting press html</td>
											<td><span class="label label-success label-rounded">SALE</span></td>
											<td class="txt-oflo">April 21, 2017</td>
											<td><span class="font-medium">$24</span></td>
										</tr>
										<tr>

											<td class="txt-oflo">Digital Agency PSD</td>
											<td><span class="label label-danger label-rounded">Tax</span>
											</td>
											<td class="txt-oflo">April 23, 2017</td>
											<td><span class="font-medium">-$14</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- Ravenue - page-view-bounce rate -->
				<!-- ============================================================== -->
				<!-- ============================================================== -->
				<!-- Recent comment and chats -->
				<!-- ============================================================== -->
				<div class="row">
					<!-- column -->
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Recent Comments</h4>
							</div>
							<div class="comment-widgets" style="height: 430px;">
								<!-- Comment Row -->
								<div class="d-flex flex-row comment-row m-t-0">
									<div class="p-2">
										<img src="../assets/images/users/1.jpg" alt="user" width="50"
											class="rounded-circle">
									</div>
									<div class="comment-text w-100">
										<h6 class="font-medium">James Anderson</h6>
										<span class="m-b-15 d-block">Lorem Ipsum is simply
											dummy text of the printing and type setting industry. </span>
										<div class="comment-footer">
											<span class="text-muted float-right">April 14, 2016</span> <span
												class="label label-rounded label-primary">Pending</span> <span
												class="action-icons"> <a href="javascript:void(0)">
													<i class="ti-pencil-alt"></i>
											</a> <a href="javascript:void(0)"> <i class="ti-check"></i>
											</a> <a href="javascript:void(0)"> <i class="ti-heart"></i>
											</a>
											</span>
										</div>
									</div>
								</div>
								<!-- Comment Row -->
								<div class="d-flex flex-row comment-row">
									<div class="p-2">
										<img src="../assets/images/users/4.jpg" alt="user" width="50"
											class="rounded-circle">
									</div>
									<div class="comment-text active w-100">
										<h6 class="font-medium">Michael Jorden</h6>
										<span class="m-b-15 d-block">Lorem Ipsum is simply
											dummy text of the printing and type setting industry. </span>
										<div class="comment-footer ">
											<span class="text-muted float-right">April 14, 2016</span> <span
												class="label label-success label-rounded">Approved</span> <span
												class="action-icons active"> <a
												href="javascript:void(0)"> <i class="ti-pencil-alt"></i>
											</a> <a href="javascript:void(0)"> <i class="icon-close"></i>
											</a> <a href="javascript:void(0)"> <i
													class="ti-heart text-danger"></i>
											</a>
											</span>
										</div>
									</div>
								</div>
								<!-- Comment Row -->
								<div class="d-flex flex-row comment-row">
									<div class="p-2">
										<img src="../assets/images/users/5.jpg" alt="user" width="50"
											class="rounded-circle">
									</div>
									<div class="comment-text w-100">
										<h6 class="font-medium">Johnathan Doeting</h6>
										<span class="m-b-15 d-block">Lorem Ipsum is simply
											dummy text of the printing and type setting industry. </span>
										<div class="comment-footer">
											<span class="text-muted float-right">April 14, 2016</span> <span
												class="label label-rounded label-danger">Rejected</span> <span
												class="action-icons"> <a href="javascript:void(0)">
													<i class="ti-pencil-alt"></i>
											</a> <a href="javascript:void(0)"> <i class="ti-check"></i>
											</a> <a href="javascript:void(0)"> <i class="ti-heart"></i>
											</a>
											</span>
										</div>
									</div>
								</div>
								<!-- Comment Row -->
								<div class="d-flex flex-row comment-row m-t-0">
									<div class="p-2">
										<img src="../assets/images/users/2.jpg" alt="user" width="50"
											class="rounded-circle">
									</div>
									<div class="comment-text w-100">
										<h6 class="font-medium">Steve Jobs</h6>
										<span class="m-b-15 d-block">Lorem Ipsum is simply
											dummy text of the printing and type setting industry. </span>
										<div class="comment-footer">
											<span class="text-muted float-right">April 14, 2016</span> <span
												class="label label-rounded label-primary">Pending</span> <span
												class="action-icons"> <a href="javascript:void(0)">
													<i class="ti-pencil-alt"></i>
											</a> <a href="javascript:void(0)"> <i class="ti-check"></i>
											</a> <a href="javascript:void(0)"> <i class="ti-heart"></i>
											</a>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- column -->
				</div>
				<!-- ============================================================== -->
				<!-- Recent comment and chats -->
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
	<!--This page JavaScript -->
	<!--chartis chart-->
	<script src="../assets/libs/chartist/dist/chartist.min.js"></script>
	<script
		src="../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
	<script src="../dist/js/pages/dashboards/dashboard1.js"></script>
</body>

</html>