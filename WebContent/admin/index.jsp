<%@ page language="java" contentType="text/html; charset=utf-8"%>
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
<jsp:include page="../includes/allcss.jsp"></jsp:include>
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
				<%@ include file="../includes/notific.jsp"%>
				<!-- Ravenue - page-view-bounce rate -->
				<!-- ============================================================== -->
				<div class="row">
					<!-- column -->
					<div class="col-12">
						<div class="card-group">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-12">
											<div class="d-flex no-block align-items-center">
												<div>
													<i class="mdi mdi-emoticon font-20 text-muted"></i>
													<p class="font-16 m-b-5">New Clients</p>
												</div>
												<div class="ml-auto">
													<h1 class="font-light text-right">
														<s:property value="totalUser" />
													</h1>
												</div>
											</div>
										</div>
										<div class="col-12">
											<div class="progress">
												<div class="progress-bar bg-info" role="progressbar"
													style="width: 75%; height: 6px;" aria-valuenow="25"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Column -->
							<!-- Column -->
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-12">
											<div class="d-flex no-block align-items-center">
												<div>
													<i class="mdi mdi-image font-20  text-muted"></i>
													<p class="font-16 m-b-5">New Request</p>
												</div>
												<div class="ml-auto">
													<h1 class="font-light text-right">
														<s:property value="totalRequest" />
													</h1>
												</div>
											</div>
										</div>
										<div class="col-12">
											<div class="progress">
												<div class="progress-bar bg-success" role="progressbar"
													style="width: 60%; height: 6px;" aria-valuenow="25"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Column -->
							<!-- Column -->
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-12">
											<div class="d-flex no-block align-items-center">
												<div>
													<i class="mdi mdi-currency-eur font-20 text-muted"></i>
													<p class="font-16 m-b-5">Request Accepted</p>
												</div>
												<div class="ml-auto">
													<h1 class="font-light text-right">
														<s:property value="totalOpen" />
													</h1>
												</div>
											</div>
										</div>
										<div class="col-12">
											<div class="progress">
												<div class="progress-bar bg-purple" role="progressbar"
													style="width: 65%; height: 6px;" aria-valuenow="25"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Column -->
							<!-- Column -->
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-md-12">
											<div class="d-flex no-block align-items-center">
												<div>
													<i class="mdi mdi-poll font-20 text-muted"></i>
													<p class="font-16 m-b-5">Request Closed</p>
												</div>
												<div class="ml-auto">
													<h1 class="font-light text-right">
														<s:property value="totalClosed" />
													</h1>
												</div>
											</div>
										</div>
										<div class="col-12">
											<div class="progress">
												<div class="progress-bar bg-danger" role="progressbar"
													style="width: 70%; height: 6px;" aria-valuenow="25"
													aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="card">
							<div class="card-body">
								<h4 class="card-title">File export</h4>
								<div class="table-responsive">
									<div id="file_export_wrapper"
										class="dataTables_wrapper container-fluid dt-bootstrap4">

										<table id="file_export"
											class="table table-striped table-bordered display dataTable"
											role="grid" aria-describedby="file_export_info">
											<thead>
												<tr role="row">
													<th class="sorting_asc" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-sort="ascending"
														aria-label="# activate to sort column descending"
														style="width: 0px;">#</th>
													<th class="sorting" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-label="Author: activate to sort column ascending"
														style="width: 0px;">Author</th>
													<th class="sorting" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-label="Title: activate to sort column ascending"
														style="width: 0px;">Title</th>
													<th class="sorting" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-label="Area: activate to sort column ascending"
														style="width: 0px;">Area (m<sup>2</sup>)
													</th>
													<th class="sorting" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-label="Price: activate to sort column ascending"
														style="width: 0px;">Price (Millions)</th>
													<th class="sorting" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-label="Status: activate to sort column ascending"
														style="width: 0px;">Status</th>
												</tr>
											</thead>
											<tbody>
												<s:iterator value="dataList" var="room">
													<tr>
														<th scope="row"><s:property value="id" /></th>
														<td><s:property value="author" /></td>
														<td><s:property value="header" /></td>
														<td align="center"><s:property value="area" /></td>
														<td align="center"><s:property value="price" /></td>
														<td><s:if test='%{#room.status == "Open"}'>
																<span class="label label-success label-rounded">Open</span>
															</s:if> <s:elseif test='%{#room.status == "Closed"}'>
																<span class="label label-danger label-rounded">Closed</span>
															</s:elseif> <s:else>
																<span class="label label-inverse label-rounded">Pending</span>
															</s:else></td>

													</tr>
												</s:iterator>
											</tbody>
											<tfoot>
												<tr>
													<th rowspan="1" colspan="1">#</th>
													<th rowspan="1" colspan="1">Author</th>
													<th rowspan="1" colspan="1">Title</th>
													<th rowspan="1" colspan="1">Area (m<sup>2</sup>)
													</th>
													<th rowspan="1" colspan="1">Price (Millions)</th>
													<th rowspan="1" colspan="1">Status</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- ============================================================== -->
					<!-- End Container fluid  -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- footer -->
					<!-- ============================================================== -->

					<!-- ============================================================== -->
					<!-- End footer -->
					<!-- ============================================================== -->
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>


	<jsp:include page="../includes/allfooterjs.jsp"></jsp:include>

</body>

</html>