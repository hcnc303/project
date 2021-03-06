<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.hidden {
	display : none;
}
</style>
<script>
	function fn_update(p_id, d_id) {
		location = "inputModifyWrite.do?p_id=" + p_id + "&d_id=" + d_id;
	}
	function fn_delete(p_id, d_id) {
		if (confirm("정말 삭제하시겠습니까?")) {
			location = "inputDelete.do?p_id=" + p_id + "&d_id=" + d_id;
		}
	}
</script>
<!-- Bootstrap -->
<link href="cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
<link href="/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
<link href="/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
<!-- Datatables -->

<link href="/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="/build/css/custom.min.css" rel="stylesheet">

</head>

<body class="nav-md">
	<%@include file="../includes/project/header.jsp"%>

	<!-- page content -->
	<div class="right_col" role="main">
		<div class="contents">
			<div class="page-title">
				<div class="title_left">
					<h3>
						투입인력 관리<small></small>
					</h3>
				</div>
			</div>

			<div class="clearfix"></div>

			<div class="row">
				<div class="col-md-12 col-sm-12 ">
					<div class="x_panel">
						<div class="x_title">
							<h2>
								투입인력 관리 <small></small>
							</h2>
							<ul class="nav navbar-right panel_toolbox">
								<li><a class="collapse-link"><i
										class="fa fa-chevron-up"></i></a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false"><i
										class="fa fa-wrench"></i></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<div class="row">
								<div class="col-sm-12">
									<div class="card-box table-responsive">
										<p class="text-muted font-13 m-b-30">프로젝트별 투입인력 리스트 입니다.</p>
										<table id="datatable-fixed-header"
											class="table table-striped table-bordered"
											style="width: 100%">
											<thead>
												<tr>
													<th>코드</th>
													<th>프로젝트명</th>
													<th>사업 시작</th>
													<th>사업 종료</th>
													<th>발주처</th>
													<th>진행단계</th>
													<th>지역</th>
													<th class="hidden">사번</th>
													<th>이름</th>
													<th>직급</th>
													<th>등급</th>
													<th>역할</th>
													<th>상주</th>
													<th>구분</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="list" items="${resultList}"
													varStatus="status">
													<tr>
														<td>${list.pId }</td>
														<td>${list.pName }</td>
														<td>${list.pStartdate }</td>
														<td>${list.pEnddate }</td>
														<td>${list.pBuyer }</td>
														<td>${list.pProgress }</td>
														<td>${list.pPlace }</td>
														<td class="hidden">${list.dId }</td>
														<td><a href="/resultWrite.do?p_id=${list.pId}&p_name=${list.pName}&d_id=${list.dId}&d_name=${list.dName}">${list.dName }</a></td>
														<td>${list.dJobgrade }</td>
														<td>${list.dTier }</td>
														<td>${list.iRole }</td>
														<td>${list.iStay }</td>
														<td>
															<button type="button" class="btn btn-round btn-primary"
																onclick="fn_update('${list.pId}', '${list.dId}')">수정</button>
															<button type="button" class="btn btn-round btn-danger"
																onclick="fn_delete('${list.pId}', '${list.dId}')">삭제</button>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /page content -->

	<!-- footer content -->
	<footer>
		<div class="pull-right">
			Gentelella - Bootstrap Admin Template by <a
				href="https://colorlib.com">Colorlib</a>
		</div>
		<div class="clearfix"></div>
	</footer>
	<!-- /footer content -->
	</div>
	</div>

	<!-- jQuery -->
	<script src="/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<!-- FastClick -->
	<script src="/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="/vendors/nprogress/nprogress.js"></script>
	<!-- iCheck -->
	<script src="/vendors/iCheck/icheck.min.js"></script>
	<!-- Datatables -->
	<script src="/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<script
		src="/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script src="/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script src="/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script src="/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script
		src="/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
	<script
		src="/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
	<script
		src="/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
	<script
		src="/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
	<script src="/vendors/jszip/dist/jszip.min.js"></script>
	<script src="/vendors/pdfmake/build/pdfmake.min.js"></script>
	<script src="/vendors/pdfmake/build/vfs_fonts.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="/build/js/custom.min.js"></script>
</body>
</html>

