<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
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
<title>Profiles</title>

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
						<h4 class="page-title">User Management</h4>
					</div>
					<div class="col-7 align-self-center">
						<div class="d-flex align-items-center justify-content-end">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">
										User Management</li>
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
				<div class="row">
					<div class="col-12">
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
														aria-label="Fullname: activate to sort column ascending"
														style="width: 0px;">Fullname</th>
													<th class="sorting" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-label="Email: activate to sort column ascending"
														style="width: 0px;">Email</th>
													<th class="sorting" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-label="Phone No.: activate to sort column ascending"
														style="width: 0px;">Phone No.</th>
													<th class="sorting" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-label="Role: activate to sort column ascending"
														style="width: 0px;">Role</th>
													<th class="sorting" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-label="Status: activate to sort column ascending"
														style="width: 0px;">Status</th>
													<th class="sorting" tabindex="0"
														aria-controls="file_export" rowspan="1" colspan="1"
														aria-label="Act: activate to sort column ascending"
														style="width: 0px;">Act</th>
												</tr>
											</thead>
											<tbody>
												<s:iterator value="dataList" var="profile">
													<tr>
														<th scope="row"><s:property value="id" /></th>
														<td><s:property value="fullname" /></td>
														<td><s:property value="email" /></td>
														<td><s:property value="phone" /></td>
														<td><s:if test='%{#profile.isAdmin == "1"}'>
																<span class="label label-success label-rounded">admin</span>
															</s:if> <s:else>
																<span class="label label-primary label-rounded">user</span>
															</s:else></td>
														<td><s:if test='%{#profile.isVerified == "1"}'>
																<span class="label label-success label-rounded">verified</span>
															</s:if> <s:else>
																<span class="label label-danger label-rounded ">unverified</span>
															</s:else></td>
														</td>
														<td><span
															style="text-align: left; display: table-cell; min-width: 10px; padding-right: 10px;">
																<form action="roomDetails" method="POST">
																	<input name="roomID" type="hidden"
																		value='<s:property value="id" />' /> <input
																		name="authorEmail" type="hidden"
																		value='<s:property value="author" />' />
																	<button type="submit"
																		class="btn btn-sm btn-icon btn-pure btn-outline delete-row-btn"
																		data-toggle="tooltip" data-original-title="Details">
																		<i class="ti-search" aria-hidden="true"></i>
																	</button>
																</form>
														</span><span
															style="text-align: left; display: table-cell; min-width: 10px; padding-right: 10px;">
																<form action="grantAdmin" method="POST">
																	<input name="roomID" type="hidden"
																		value='<s:property value="id" />' /> <input
																		name="authorEmail" type="hidden"
																		value='<s:property value="author" />' />
																	<button type="submit"
																		class="btn btn-sm btn-icon btn-pure btn-outline delete-row-btn"
																		data-toggle="tooltip"
																		data-original-title="Grant Administrator">
																		<i class="ti-bolt-alt" aria-hidden="true"></i>
																	</button>
																</form>
														</span> <span
															style="text-align: left; display: table-cell; min-width: 10px; padding-right: 10px;">
																<form action="verifiedProfile" method="POST">
																	<input name="roomID" type="hidden"
																		value='<s:property value="id" />' /> <input
																		name="authorEmail" type="hidden"
																		value='<s:property value="author" />' />
																	<button type="submit"
																		class="btn btn-sm btn-icon btn-pure btn-outline delete-row-btn"
																		data-toggle="tooltip" data-original-title="Verified">
																		<i class="ti-check-box" aria-hidden="true"></i>
																	</button>
																</form>
														</span></td>

													</tr>
												</s:iterator>
											</tbody>
											<tfoot>
												<tr>
													<th rowspan="1" colspan="1">#</th>
													<th rowspan="1" colspan="1">Fullname</th>
													<th rowspan="1" colspan="1">Email</th>
													<th rowspan="1" colspan="1">Phone No.</th>
													<th rowspan="1" colspan="1">Role</th>
													<th rowspan="1" colspan="1">Status</th>
													<th rowspan="1" colspan="1">Act</th>
												</tr>
											</tfoot>
										</table>
									</div>
								</div>
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
			<jsp:include page="../includes/admin/footer.jsp"></jsp:include>
			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>

	<jsp:include page="../includes/allfooterjs.jsp"></jsp:include>
</body>
</html>
