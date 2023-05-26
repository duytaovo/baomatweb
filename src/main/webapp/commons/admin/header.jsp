<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/commons/taglib.jsp"%>

<div class="wrapper">
	<!-- Sidebar  -->
	<nav id="sidebar">
		<div class="sidebar-header">
			<h3>Shoes Shop Admin</h3>
		</div>
		<ul class="list-unstyled components">
			<li><a href=<c:url value = "/admin-home?flag=0"></c:url>>Trang chủ</a></li>
			<li class="active"><a href="#homeSubmenu" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle">Thống kê</a>
				<ul class="collapse list-unstyled" id="homeSubmenu">
					<li><a href=<c:url value = "/admin-chart/top10product?filter=tat-ca&start_day=&end_day="></c:url>>Top 10 sản phẩm</a></li>
					<li><a href=<c:url value = "/admin-chart/top10customer?filter=tat-ca&start_day=&end_day="></c:url>>Top 10 khách hàng</a></li>
					<li><a href=<c:url value = "/admin-chart/top10store?filter=tat-ca&start_day=&end_day="></c:url>>Top 10 cửa hàng</a></li>
				</ul></li>
			<li><a href="#pageSubmenu" data-toggle="collapse"
				aria-expanded="false" class="dropdown-toggle">Quản lí hệ thống</a>
				<ul class="collapse list-unstyled" id="pageSubmenu">
					<li><a href=<c:url value = "/admin-user?index=0"></c:url>>Người dùng</a></li>
					<li><a href=<c:url value = "/admin-seller?index=0"></c:url>>Cửa hàng</a></li>
					<li><a href=<c:url value = "/admin-product?index=0"></c:url>>Sản phẩm</a></li>
					<li><a href=<c:url value ="/admin-order?index=0&filter=tat-ca"></c:url>>Đơn hàng</a></li>
				</ul></li>
			<li><a href=<c:url value = "/admin-category?index=0"></c:url>>Loại sản phẩm</a></li>
			<li><a href=<c:url value = "/admin-shipper?index=0"></c:url>>Đơn vị vận chuyển</a></li>
		</ul>
	</nav>

	<!-- Page Content  -->
	<div id="content">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">

				<button type="button" id="sidebarCollapse" class="btn btn-info">
					<i class="fas fa-align-left"></i> <span>Sidebar</span>
				</button>
				<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
					type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-align-justify"></i>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="nav navbar-nav ml-auto">
						<div class="dropdown" style="margin-right: 80px;">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="dropdownMenuButton" data-toggle="dropdown">${Users.username}</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item" href=<c:url value = "/change_password"></c:url>>Thay mật khẩu</a> <a
									class="dropdown-item" href=<c:url value = "/home?action=logout"></c:url>>Đăng xuất</a> 
							</div>
						</div>
						
					</ul>
				</div>
			</div>
		</nav>
		<dec:body/>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		$('#sidebarCollapse').on('click', function() {
			$('#sidebar').toggleClass('active');
		});
	});
</script>