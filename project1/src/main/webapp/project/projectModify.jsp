<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix= "spring" uri= "http://www.springframework.org/tags" %>      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Gentelella Alela! | </title>
	<style>
		.hidden {display:none;}
	</style>
		<!-- Bootstrap -->
		<link href="/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link href="/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<!-- NProgress -->
		<link href="/vendors/nprogress/nprogress.css" rel="stylesheet">
		<!-- iCheck -->
		<link href="/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
		<!-- bootstrap-wysiwyg -->
		<link href="/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
		<!-- Select2 -->
		<link href="/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
		<!-- Switchery -->
		<link href="/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
		<!-- starrr -->
		<link href="/vendors/starrr/dist/starrr.css" rel="stylesheet">
		<!-- bootstrap-daterangepicker -->
		<link href="/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
	
		<!-- Custom Theme Style -->
		<link href="/build/css/custom.min.css" rel="stylesheet">
	</head>
	<body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="index.html">Dashboard</a></li>
                      <li><a href="index2.html">Dashboard2</a></li>
                      <li><a href="index3.html">Dashboard3</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="tables.html">Tables</a></li>
                      <li><a href="tables_dynamic.html">Table Dynamic</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="chartjs.html">Chart JS</a></li>
                      <li><a href="chartjs2.html">Chart JS2</a></li>
                      <li><a href="morisjs.html">Moris JS</a></li>
                      <li><a href="echarts.html">ECharts</a></li>
                      <li><a href="other_charts.html">Other Charts</a></li>
                    </ul>
                  </li>
              </div>
              <div class="menu_section">
                <h3>Live On</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="e_commerce.html">E-commerce</a></li>
                      <li><a href="projects.html">Projects</a></li>
                      <li><a href="project_detail.html">Project Detail</a></li>
                      <li><a href="contacts.html">Contacts</a></li>
                      <li><a href="profile.html">Profile</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-sitemap"></i>코드 관리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="/codeList.do">코드 리스트</a>
                        <li><a href="/codeWrite.do">코드 작성</a>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-sitemap"></i>프로젝트 관리 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="projectList.do">프로젝트 리스트</a>
                        <li><a href="projectWrite.do">프로젝트 작성</a>
                    </ul>
                  </li>    
                  <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="#level1_1">Level One</a>
                        <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="level2.html">Level Two</a>
                            </li>
                            <li><a href="#level2_1">Level Two</a>
                            </li>
                            <li><a href="#level2_2">Level Two</a>
                            </li>
                          </ul>
                        </li>
                        <li><a href="#level1_2">Level One</a>
                        </li>
                    </ul>
                  </li>        
                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <div class="nav toggle">
                  <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>
                <nav class="nav navbar-nav">
                <ul class=" navbar-right">
                  <li class="nav-item dropdown open" style="padding-left: 15px;">
                    <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                      <img src="images/img.jpg" alt="">John Doe
                    </a>
                    <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item"  href="javascript:;"> Profile</a>
                        <a class="dropdown-item"  href="javascript:;">
                          <span class="badge bg-red pull-right">50%</span>
                          <span>Settings</span>
                        </a>
                    <a class="dropdown-item"  href="javascript:;">Help</a>
                      <a class="dropdown-item"  href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                    </div>
                  </li>
  
                  <li role="presentation" class="nav-item dropdown open">
                    <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-envelope-o"></i>
                      <span class="badge bg-green">6</span>
                    </a>
                    <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <div class="text-center">
                          <a class="dropdown-item">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                          </a>
                        </div>
                      </li>
                    </ul>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        <!-- /top navigation -->
	
				<!-- page content -->
				<div class="right_col" role="main">
					<div class="">
						<div class="page-title">
							<div class="title_left">
								<h3>프로젝트 수정</h3>
							</div>
	
							<div class="title_right">
								<div class="col-md-5 col-sm-5  form-group pull-right top_search">
									<div class="input-group">
										<input type="text" class="form-control" placeholder="Search for...">
										<span class="input-group-btn">
											<button class="btn btn-default" type="button">Go!</button>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
						<div class="row">
							<div class="col-md-12 col-sm-12 ">
								<div class="x_panel">
									<div class="x_title">
										<h2>프로젝트 수정 <small></small></h2>
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
											</li>
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-wrench"></i></a>
											</li>
										</ul>
										<div class="clearfix"></div>
									</div>
									<div class="x_content">
										<br />
										<form id="demo-form2" name="frm" method="post" action="projectModifySave.do" data-parsley-validate class="form-horizontal form-label-left">
											<div class="item form-group hidden">
												<label class="col-form-label col-md-3 col-sm-3 label-align" for="p_id" >프로젝트 코드 <span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 ">
													<input type="text" id="p_id" required="required" class="form-control "name="p_id" value="${vo.p_id }" readonly> 
												</div>
											</div>
											<div class="item form-group">
												<label class="col-form-label col-md-3 col-sm-3 label-align" for="p_name" >프로젝트 이름 <span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 ">
													<input type="text" id="p_name" required="required" class="form-control "name="p_name" value="${vo.p_name }"> 
												</div>
											</div>
											<div class="item form-group">
												<label class="col-form-label col-md-3 col-sm-3 label-align" for="p_startdate">프로젝트 시작일 <span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 ">
													<input type="text" id="p_startdate" required="required" class="form-control" name="p_startdate" value="${vo.p_startdate }">
												</div>
											</div>
											<div class="item form-group">
												<label class="col-form-label col-md-3 col-sm-3 label-align" for="p_enddate">프로젝트 종료일<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 ">
													<input type="text" id="p_enddate" required="required" class="form-control" name="p_enddate" value="${vo.p_enddate }">
												</div>
											</div>
											<div class="item form-group">
												<label class="col-form-label col-md-3 col-sm-3 label-align" for="p_place">사업 장소<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 ">
													<input type="text" id="p_place" required="required" class="form-control" name="p_place" value="${vo.p_place }">
												</div>
											</div>
											<div class="item form-group">
												<label class="col-form-label col-md-3 col-sm-3 label-align" for="p_buyer">발주처<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 ">
													<input type="text" id="p_buyer" required="required" class="form-control" name="p_buyer" value="${vo.p_buyer }">
												</div>
											</div>
											<div class="item form-group">
												<label class="col-form-label col-md-3 col-sm-3 label-align" for="p_salesman">영업담당자<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 ">
													<input type="text" id="p_salesman" required="required" class="form-control" name="p_salesman" value="${vo.p_salesman }">
												</div>
											</div>
											<div class="item form-group">
												<label class="col-form-label col-md-3 col-sm-3 label-align" for="p_tell">연락처<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 ">
													<input type="text" id="p_tell" required="required" class="form-control" name="p_tell" value="${vo.p_tell }">
												</div>
											</div>
											<div class="item form-group">
												<label class="col-form-label col-md-3 col-sm-3 label-align" for="p_progress">진행과정<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 ">
													<input type="text" id="p_progress" required="required" class="form-control" name="p_progress" value="${vo.p_progress }">
												</div>
											</div>
											<div class="item form-group">
												<label class="col-form-label col-md-3 col-sm-3 label-align" for="p_note">비고<span class="required">*</span>
												</label>
												<div class="col-md-6 col-sm-6 ">
													<input type="text" id="p_note" required="required" class="form-control" name="p_note" value="${vo.p_note }">
												</div>
											</div>
											<div class="ln_solid"></div>
											<div class="item form-group">
												<div class="col-md-6 col-sm-6 offset-md-3">
													<button class="btn btn-primary" type="button">취소</button>
													<button class="btn btn-primary" type="reset">초기화</button>
													<button class="btn btn-success" type="submit">저장</button>
												</div>
											</div>
										</form>
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
						Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
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
		<!-- bootstrap-progressbar -->
		<script src="/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
		<!-- iCheck -->
		<script src="/vendors/iCheck/icheck.min.js"></script>
		<!-- bootstrap-daterangepicker -->
		<script src="/vendors/moment/min/moment.min.js"></script>
		<script src="/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
		<!-- bootstrap-wysiwyg -->
		<script src="/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
		<script src="/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
		<script src="/vendors/google-code-prettify/src/prettify.js"></script>
		<!-- jQuery Tags Input -->
		<script src="/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
		<!-- Switchery -->
		<script src="/vendors/switchery/dist/switchery.min.js"></script>
		<!-- Select2 -->
		<script src="/vendors/select2/dist/js/select2.full.min.js"></script>
		<!-- Parsley -->
		<script src="/vendors/parsleyjs/dist/parsley.min.js"></script>
		<!-- Autosize -->
		<script src="/vendors/autosize/dist/autosize.min.js"></script>
		<!-- jQuery autocomplete -->
		<script src="/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
		<!-- starrr -->
		<script src="/vendors/starrr/dist/starrr.js"></script>
		<!-- Custom Theme Scripts -->
		<script src="/build/js/custom.min.js"></script>
	
	</body>
</html>