<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- 这段代码的意思是获取当前项目的路径，如：http://localhost:8080/项目名称。 -->
<%    
	String path = request.getContextPath();    
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息添加</title>
	<!-- basic styles -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
	<!--[if IE 7]>
	<link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
	<![endif]-->
	<!-- page specific plugin styles -->
	<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
	<link rel="stylesheet" href="assets/css/jquery.gritter.css" />
	<link rel="stylesheet" href="assets/css/select2.css" />
	<link rel="stylesheet" href="assets/css/bootstrap-editable.css" />
	<!-- ace styles -->
	<link rel="stylesheet" href="assets/css/ace.min.css" />
	<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
	<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
	<!--[if lte IE 8]>
	<link rel="stylesheet" href="assets/css/ace-ie.min.css" />
	<![endif]-->
	<!-- inline styles related to this page -->
	<!-- ace settings handler -->
	<script src="assets/js/ace-extra.min.js"></script>
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<!-- Head部分 -->
	<%@ include file="supHead.jsp"%> 
	
	
	<!-- PAGE CONTENT BEGINS -->
	<div class="clearfix">
		<div class="pull-left alert alert-success no-margin">
			<button type="button" class="close" data-dismiss="alert">
				<i class="icon-remove"></i>
			</button>

			<i class="icon-umbrella bigger-120 blue"></i>欢迎使用高校宿舍管理系统！
		</div>
	</div>
	<div class="hr dotted"></div>
	<div>
		<div id="user-profile-3" class="user-profile row">
			<div class="col-sm-offset-1 col-sm-10">
				<div class="space"></div>
				<form class="form-horizontal" method="post" enctype="multipart/form-data" action="userInfoSetting">
					<div class="tabbable">
						<ul class="nav nav-tabs padding-16">
							<li class="active"><a data-toggle="tab" href="#edit-basic">
									<i class="green icon-edit bigger-125"></i> 基本信息
							</a></li>
						</ul>

						<div class="tab-content profile-edit-tab-content">
							<div id="edit-basic" class="tab-pane in active">
								<h4 class="header blue bolder smaller">General</h4>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-username">用户名</label>

									<div class="col-sm-8">
										<input class="col-xs-12 col-sm-4" type="text"
											id="form-field-username" placeholder="Username"
											value="alexdoe" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right"
										for="form-field-username">密码</label>

									<div class="col-sm-8">
										<input class="col-xs-12 col-sm-4" type="text"
											id="form-field-username" placeholder="Username"
											value="alexdoe" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-select-1">成员类型</label>
									<div class="col-sm-9">
									<select name="type" class="col-sm-4" id="form-field-select-1">
										<option value="">&nbsp;</option>
										<option value="系统管理员">系统管理员</option>
										<option value="宿舍管理员">宿舍管理员</option>
										<option value="学生">学生</option>
									</select>
									</div>
								</div>
								<hr />
								<div class="space"></div>
							</div>
						</div>
					</div>

					<div class="clearfix form-actions">
						<div class="col-md-offset-3 col-md-9">
							<input class="btn btn-info" type="submit">
							</input>

							&nbsp; &nbsp;
							<button class="btn" type="reset">
								<i class="icon-undo bigger-110"></i> Reset
							</button>
						</div>
					</div>
				</form>
			</div>
			<!-- /span -->
		</div>
		<!-- /user-profile -->
	</div>
	<!-- PAGE CONTENT ENDS -->
	
	<!-- footer部分 -->
	<%@ include file="supFooter.jsp"%> 
	<!-- basic scripts -->
	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
	</script>
	<!-- <![endif]-->
	<!--[if IE]>
	<script type="text/javascript">
	 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
	</script>
	<![endif]-->
	<script type="text/javascript">
		if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
	</script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/typeahead-bs2.min.js"></script>
	<!-- page specific plugin scripts -->
	<!--[if lte IE 8]>
	  <script src="assets/js/excanvas.min.js"></script>
	<![endif]-->
	<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
	<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/js/jquery.gritter.min.js"></script>
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/jquery.slimscroll.min.js"></script>
	<script src="assets/js/jquery.easy-pie-chart.min.js"></script>
	<script src="assets/js/jquery.hotkeys.min.js"></script>
	<script src="assets/js/bootstrap-wysiwyg.min.js"></script>
	<script src="assets/js/select2.min.js"></script>
	<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
	<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
	<script src="assets/js/x-editable/bootstrap-editable.min.js"></script>
	<script src="assets/js/x-editable/ace-editable.min.js"></script>
	<script src="assets/js/jquery.maskedinput.min.js"></script>
	<!-- ace scripts -->
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<!-- inline scripts related to this page -->
	<script src="assets/js1/profile.js"></script>
</body>
</html>