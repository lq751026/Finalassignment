<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
		 pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- 页面meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>数据 - AdminLTE2定制版</title>
	<meta name="description" content="AdminLTE2定制版">
	<!-- 若您需要使用Kendo UI Professional，请联系版权人获得合法的授权或许可。 -->
	<!-- Bootstrap css -->
	<link href="https://magicbox.bk.tencent.com/static_api/v3/assets/bootstrap-3.3.4/css/bootstrap.min.css" rel="stylesheet">
	<!-- kendo ui css -->
	<link href="https://magicbox.bk.tencent.com/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.common.min.css" rel="stylesheet">
	<link href="https://magicbox.bk.tencent.com/static_api/v3/assets/kendoui-2015.2.624/styles/kendo.default.min.css" rel="stylesheet">
	<!-- font-awesome -->
	<link href="https://magicbox.bk.tencent.com/static_api/v3/assets/fontawesome/css/font-awesome.css" rel="stylesheet">
	<!--蓝鲸提供的公用样式库 -->
	<link href="https://magicbox.bk.tencent.com/static_api/v3/bk/css/bk.css" rel="stylesheet">
	<link href="https://magicbox.bk.tencent.com/static_api/v3/bk/css/bk_pack.css" rel="stylesheet">
	<!-- 如果要使用Bootstrap的js插件，必须先调入jQuery -->
	<script src="https://magicbox.bk.tencent.com/static_api/v3/assets/js/jquery-1.10.2.min.js"></script>
	<!-- 包括所有bootstrap的js插件或者可以根据需要使用的js插件调用　-->
	<script src="https://magicbox.bk.tencent.com/static_api/v3/assets/echarts-2.0/echarts-all.js"></script>
	<script src="https://magicbox.bk.tencent.com/static_api/v3/assets/bootstrap-3.3.4/js/bootstrap.min.js"></script>
	<!-- 包括所有kendoui的js插件或者可以根据需要使用的js插件调用　-->
	<script src="https://magicbox.bk.tencent.com/static_api/v3/assets/kendoui-2015.2.624/js/kendo.all.min.js"></script>
	<script src="https://magicbox.bk.tencent.com/static_api/v3/assets/echarts-2.0/echarts-all.js"></script>
	<script src="https://magicbox.bk.tencent.com/static_api/v3/bk/js/bk.js"></script>
	<!-- 数据埋点统计 -->
	<script src="https://magicbox.bk.tencent.com/static_api/v3/assets/js/jquery-1.10.2.min.js"></script>
	<script src="https://magicbox.bk.tencent.com/static_api/v3/assets/bkSwitcher-1.0/js/bkSwitcher.js"></script>
	<script src="http://magicbox.bk.tencent.com/static_api/analysis.js"></script>
	<!-- 以下两个插件用于在IE8以及以下版本浏览器支持HTML5元素和媒体查询，如果不需要用可以移除 -->
	<!--[if lt IE 9]><script src="https://magicbox.bk.tencent.com/static_api/v3/assets/js/html5shiv.min.js"></script><script src="https://magicbox.bk.tencent.com/static_api/v3/assets/js/respond.min.js"></script><![endif]-->
	<meta name="keywords" content="AdminLTE2定制版">

	<!-- Tell the browser to be responsive to screen width -->
	<meta
			content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
			name="viewport">

	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/morris/morris.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/select2/select2.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/css/style.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
	<link rel="stylesheet"
		  href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
</head>

<body class="hold-transition skin-blue sidebar-mini">

<div class="wrapper">

	<!-- 页面头部 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 页面头部 /-->

	<!-- 导航侧栏 -->
	<jsp:include page="aside.jsp"></jsp:include>
	<!-- 导航侧栏 /-->

	<!-- 内容区域 -->
	<div class="content-wrapper">

		<!-- 内容头部 -->
		<section class="content-header">
			<h1>
				app应用添加 <small>全部用户</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/index.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a
						href="${pageContext.request.contextPath}/user/findAll.do">应用管理</a></li>

				<li class="active">app应用添加</li>
			</ol>
		</section>
		<!-- 内容头部 /-->

		<!-- 正文区域 -->
		<section class="content"> <!-- .box-body -->
			<br>
			<div class="box box-primary">
				<div class="bg-white" data-bg-color="bg-white">
					<div class="king-page-bo">
						<div class="king-layout1-header"></div>
						<div class="king-layout1-main clearfix">
							<!-- sidebar start -->
							<div class="king-layout1-sidebar" style="width:216px;"></div>
							<!-- sidebar end -->
							<!-- content start -->
							<div class="king-content-wrap">
								<div class="king-layout1-content" style="margin-left: 216px;">
									<form class="form-horizontal" action="/app_add" method="post" enctype="multipart/form-data">
										<%--
										 /*** null */
  private Integer id;

  /*** null */
  private String name;

  /*** null */
  private BigDecimal size;  //软件大小

  /*** null */
  private String platform;   //平台


  /*** null */
  private Integer status;  //状态码

  /*** null */
  private String versions; //版本号


										--%>
										<center><span>${msg}</span></center>
										<div class="form-group clearfix ">
											<label class="col-sm-3 control-label bk-lh30 pt0">名称：</label>
											<div class="col-sm-9">
												<input type="text" name="name" class="form-control bk-valign-top"  placeholder="请输入你的app名称"> </div>
										</div>
										<div class="form-group clearfix ">
											<label class="col-sm-3 control-label bk-lh30 pt0">软件大小（mb）：</label>
											<div class="col-sm-9">
												<input name="size" type="text" class="form-control bk-valign-top"  placeholder="请输入你app的软件大小">
											</div>
										</div>
										<div class="form-group clearfix ">
											<label class="col-sm-3 control-label bk-lh30 pt0">软件支持的平台：</label>
											<div class="col-sm-9">
												<input type="text" name="platform" class="form-control bk-valign-top"  placeholder="请输入你app软件支持的平台">
											</div>
										</div>
										<div class="form-group clearfix ">
											<label class="col-sm-3 control-label bk-lh30 pt0">版本号：</label>
											<div class="col-sm-9">
												<input type="text" name="versions" class="form-control bk-valign-top"  placeholder="app的版本号"> </div>
										</div>
											<div class="form-group clearfix ">
												<label class="col-sm-3 control-label bk-lh30 pt0">最低配置：</label>
												<div class="col-sm-9">
													<input type="text"  id="popo5"   name="deploy"  class="form-control bk-valign-top"  placeholder="app的最低配置"> </div>
											</div>
											<div class="form-group clearfix ">
												<label class="col-sm-3 control-label bk-lh30 pt0">界面语言：</label>
												<div class="col-sm-9">
													<input type="text"  id="popo6"   name="language"  class="form-control bk-valign-top"  placeholder="app的语言"> </div>
											</div>
											<div class="form-group clearfix ">
												<label class="col-sm-3 control-label bk-lh30 pt0">下载次数：</label>
												<div class="col-sm-9">
													<input type="text"  id="popo7"   name="downtimes"  class="form-control bk-valign-top"  placeholder="app的下载次数"> </div>
											</div>
											<div class="form-group clearfix ">
												<label class="col-sm-3 control-label bk-lh30 pt0">上传软件的logo：</label>
												<div class="col-sm-9">
													<input type="file" name="file" class="form-control bk-valign-top"  placeholder="logo上传"> </div>
											</div>
										<div class="form-group clearfix ">
											<label class="col-sm-3 control-label bk-lh30 pt0">分类一:</label>
											<div class="col-sm-9">
												<select name="one"  class="form-control bk-valign-top">
													<c:forEach items="${sort.sortones}" var="sortone">
														<option value="${sortone.id}">${sortone.name}</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="form-group clearfix ">
											<label class="col-sm-3 control-label bk-lh30 pt0">分类二：</label>
											<div class="col-sm-9">
												<select name="two"  class="form-control bk-valign-top">
													<c:forEach items="${sort.sorttwos}" var="one"  >
														<option value="${one.id}">${one.name}</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="form-group clearfix ">
											<label class="col-sm-3 control-label bk-lh30 pt0">分类三：</label>
											<div class="col-sm-9">
												<select name="three"  class="form-control bk-valign-top">
													<c:forEach items="${sort.sortthrees}" var="one"  >
														<option value="${one.id}">${one.name}</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="form-group clearfix">
											<div class="col-sm-9 col-sm-offset-3">
												<button type="submit" class="king-btn mr10  king-success">添加</button>
												<button type="button" onclick="location.href='${pageContext.request.contextPath}/user'" class="king-btn king-default ">取消</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- content end -->
					</div>
				</div>
				</div>
				<!-- /.box-footer-->
		</section>
			</div>

		</section>
		<!-- 正文区域 /-->

	</div>
	<!-- @@close -->
	<!-- 内容区域 /-->
<!-- 底部导航 -->
<jsp:include page="dibu.jsp"></jsp:include>
<!-- 底部导航 /-->

</div>

<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="../plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../plugins/raphael/raphael-min.js"></script>
<script src="../plugins/morris/morris.min.js"></script>
<script src="../plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="../plugins/knob/jquery.knob.js"></script>
<script src="../plugins/daterangepicker/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="../plugins/datepicker/bootstrap-datepicker.js"></script>
<script
		src="../plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
		src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../plugins/fastclick/fastclick.js"></script>
<script src="../plugins/iCheck/icheck.min.js"></script>
<script src="../plugins/adminLTE/js/app.min.js"></script>
<script src="../plugins/treeTable/jquery.treetable.js"></script>
<script src="../plugins/select2/select2.full.min.js"></script>
<script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
		src="../plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="../plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
		src="../plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="../plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="../plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="../plugins/ckeditor/ckeditor.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.js"></script>
<script
		src="../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="../plugins/chartjs/Chart.min.js"></script>
<script src="../plugins/flot/jquery.flot.min.js"></script>
<script src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script src="../plugins/flot/jquery.flot.categories.min.js"></script>
<script src="../plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="../plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale : 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document)
        .ready(
            function() {

                // 激活导航位置
                setSidebarActive("admin-datalist");

                // 列表按钮
                $("#dataList td input[type='checkbox']")
                    .iCheck(
                        {
                            checkboxClass : 'icheckbox_square-blue',
                            increaseArea : '20%'
                        });
                // 全选操作
                $("#selall")
                    .click(
                        function() {
                            var clicks = $(this).is(
                                ':checked');
                            if (!clicks) {
                                $(
                                    "#dataList td input[type='checkbox']")
                                    .iCheck(
                                        "uncheck");
                            } else {
                                $(
                                    "#dataList td input[type='checkbox']")
                                    .iCheck("check");
                            }
                            $(this).data("clicks",
                                !clicks);
                        });
            });
</script>
</body>

</html>