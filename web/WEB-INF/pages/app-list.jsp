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
	href="${pageContext.request.contextPath}/css/sttyle.css">
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
				app应用管理 <small>全部用户</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/index.jsp"><i
						class="fa fa-dashboard"></i> 首页</a></li>
				<li><a
					href="${pageContext.request.contextPath}/user/findAll.do">应用管理</a></li>

				<li class="active">app应用管理</li>
			</ol>
			</section>
			<!-- 内容头部 /-->

				<!-- 正文区域 -->
				<section class="content"> <!-- .box-body -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<center><span>${msg}</span></center>
						<center><span>${sg}</span></center>
						<h3 class="box-title">列表</h3>
					</div>

					<div class="box-body">

						<!-- 数据表格 -->

						<div class="table-box" style="top: 100px;">
							<center>
								<%--

   model.addAttribute("sortone",sort.getSortones());
        model.addAttribute("sorttwo",sort.getSorttwos());
        model.addAttribute("sortthree",sort.getSortthrees());
								--%>
								<form action="/sort" method="post">
								<span>一级分类:</span>
								<select   style="width: 130px; " tabindex="-1" title="" name="one" >
								<option value="1">请选择一级分类</option>
									<c:forEach items="${sort.sortones}" var="sortone">
										<option value="${sortone.id}">${sortone.name}</option>
									</c:forEach>
							</select>
									<span>二级分类:</span>
								<select   style="width: 130px; " tabindex="-1" title="" name="two">
									<option value="1">请选择二级分类</option>
									<c:forEach items="${sort.sorttwos}" var="one"  >
										<option value="${one.id}">${one.name}</option>
								</c:forEach>
								</select>
								<span>三级分类:</span>
								<select   style="width: 130px; " tabindex="-1" title="" name="three">
									<option value="1">请选择三级分类</option>
									<c:forEach items="${sort.sortthrees}" var="one"  >
										<option value="${one.id}">${one.name}</option>
				</c:forEach>
								</select>
								<button id="btns" type="submit" class="btn-defaults"  style="border: none;; border-radius: 10%;">查询</button>
								</form>
								<script>document.getElementById("btns").onmousemove=function (){
                                    document.getElementById("btns").className="btnclass";

								}
                                document.getElementById("btns").onmouseout=function () {
                                    document.getElementById("btns").className="btn-defaults";
                                }

								</script>
								<style>
                                           .btnclass{		   background-color: limegreen;
                               				color: whitesmoke;
										   }
										   .btn-defaults{

										   }
								</style>
							</center>
							<br>
							<!--工具栏-->
							<div class="pull-left">
								<div class="form-group form-inline">
									<div class="btn-group">
										<button type="button" class="btn btn-default" title="新建" onclick="location.href='${pageContext.request.contextPath}/appAdd'">
											<i class="fa fa-file-o"></i> 新建
										</button>
										
										<button type="button" onclick="history.go(0)" class="btn btn-default" title="刷新">
											<i class="fa fa-refresh"></i> 刷新
										</button>
									</div>
								</div>
							</div>
							<div class="box-tools pull-right">
								<div class="has-feedback" style="display: none">
									<input type="text" class="form-control input-sm"
										placeholder="搜索"> <span
										class="glyphicon glyphicon-search form-control-feedback"></span>
								</div>
							</div>
							<!--工具栏/-->

							<!--数据列表-->
							<table id="dataList"
								class="table table-bordered table-striped table-hover dataTable">
								<thead>
									<tr>

										<th class="sorting_asc">ID</th>
										<th class="sorting_desc">软件名称</th>
										<th class="sorting_desc">软件logo</th>
										<th class="sorting_asc sorting_asc_disabled">软件大小（mb）</th>
										<th class="sorting_desc sorting_desc_disabled">平台</th>
										<th class="sorting">状态</th>
										<th class="sorting_desc sorting_desc_disabled">分类</th>
										<th class="sorting">版本号</th>
										<th class="sorting">最近低配置</th>
										<th class="sorting">界面语言</th>
										<th class="sorting">下载次数</th>
										<th class="text-center">操作</th>
									</tr>
								</thead>
								<tbody>
								<%--

  private Sortone sortone;

  private Sorttwo sorttwo;

  private Sortthree sortthree;
    private String deploy; //配置

  private String Language;//界面语言

  private String downtimes ;//下载次数

								--%>

								<c:forEach items="${pahader.list}" var="app">
										<tr>
											<td>${app.id }</td>
											<td>${app.name }</td>
											<td><img src="${pageContext.request.contextPath}/${app.logo}"></td>
											<td>${app.size }</td>
											<td>${app.platform }</td>
											<td>${app.statusName}</td>
											<td>${app.sortone.name}->${app.sorttwo.name}->${app.sortthree.name}</td>
											<td>${app.versions}</td>
											<td>${app.deploy}</td>
											<td>${app.language}</td>
											<td>${app.downtimes}</td>
											<td class="text-center">
												<select id="updates${app.id}"  class="btn bg-olive btn-xs" style="width: 70px; " tabindex="-1" title="">
													<option value="操作">操作</option>
													<option value="1">删除</option>
													<option value="2">详情</option>
													<c:if test="${sessionScope.role.id==2}">
															<option value="3">${app.status==3?'下架':'上架'}</option>
													</c:if>
												</select>
												<script>
                                                    document.getElementById("updates${app.id}").onchange=function () {
                                                            if( parseInt(this.value)==2){
                                                            window.location.href="${pageContext.request.contextPath}/update?id=${app.id}";
                                                        }else if(parseInt(this.value)==1){
                                                            window.location.href="${pageContext.request.contextPath}/appDelete?id=${app.id}";
                                                        }else if(parseInt(this.value)==3){
                                                                window.location.href="${pageContext.request.contextPath}/status?id=${app.id}&status=${app.status}";
                                                            }
                                                    }
												</script>
											</td>
											<c:if test="${sessionScope.role.id==2}">
											<td class="text-center">
												<select id="updatess${app.id}"  class="btn bg-olive btn-xs" style="width: 70px; " tabindex="-1" title="">
													<option value="操作">审核</option>
													<option value="2">审核中</option>
													<option value="3">通过</option>
													<option value="4">未通过</option>
												</select>
												<script>
                                                    document.getElementById("updatess${app.id}").onchange=function () {
                                                        var i;
                                                        if( parseInt(this.value)==2){
                                                            i=2;
                                                        }else if(parseInt(this.value)==3){
                                                            i=3;
                                                        }else if(parseInt(this.value)==4){i=4;
                                                        }
                                                        window.location.href="${pageContext.request.contextPath}/updateStatuss?status="+i+"&id=${app.id}";
                                                    }
												</script>
											</td>
											</c:if>
										</tr>
									</c:forEach>
								</tbody>

								<!--
                            <tfoot>
                            <tr>
                            <th>Rendering engine</th>
                            <th>Browser</th>
                            <th>Platform(s)</th>
                            <th>Engine version</th>
                            <th>CSS grade</th>
                            </tr>
                            </tfoot>-->
							</table>
							<!--数据列表/-->

						</div>
						<!-- 数据表格 /-->

					</div>
					<!-- /.box-body -->
<%--
    private Integer pages;  //当前的页数
    private Integer topages; //总页数
    private Integer size; //显示的条数
    private  Integer total; //总记录数
  /*** null */
  private Integer one_id;

  /*** null */
  private Integer two_id;
 sorts
  /*** null */
  private Integer three_id;
--%>
					<!-- .box-footer-->
					<div class="box-footer">
						<div class="pull-left">
							<div class="form-group form-inline">
								总共${pahader.topages} 页，当前是第${pahader.pages}页,共${pahader.total} 条数据。 每页 <select class="form-control" id="selcts">
									<option>每页${pahader.size}条</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> 条
								<script>
									document.getElementById("selcts").onchange=function (){
									    if(${sorts.one_id!=null}){
                                            window.location.href="${pageContext.request.contextPath}/sort?pages=${pahader.pages}&size="+this.value+"&one=${sorts.one_id}&two=${sorts.two_id}&three=${sorts.three_id}";
										}else{
                                            window.location.href="${pageContext.request.contextPath}/user?pages=${pahader.pages}&size="+this.value;

                                        }
												 }
								</script>
							</div>
						</div>

						<div class="box-tools pull-right">
							<ul class="pagination">
								<c:choose>
								<c:when test="${sorts.one_id!=null}">
									<li><a href="${pageContext.request.contextPath}/sort?pages=1&size=${pahader.size}&one=${sorts.one_id}&two=${sorts.two_id}&three=${sorts.three_id}" aria-label="Previous">首页</a></li>
									<li><a href="${pageContext.request.contextPath}/sort?pages=${pahader.pages-1<=1?1:pahader.pages-1}&size=${pahader.size}&one=${sorts.one_id}&two=${sorts.two_id}&three=${sorts.three_id}">上一页</a></li>

									<li><a href="${pageContext.request.contextPath}/sort?pages=${pahader.pages+1>=pahader.topages?pahader.topages:pahader.pages+1}&size=${pahader.size}&one=${sorts.one_id}&two=${sorts.two_id}&three=${sorts.three_id}">下一页</a></li>

									<li><a href="${pageContext.request.contextPath}/sort?pages=${pahader.topages}&size=${pahader.size}&one=${sorts.one_id}&two=${sorts.two_id}&three=${sorts.three_id}" aria-label="Next">尾页</a></li>


								</c:when>
								<c:when test="${sorts.one_id==null}">
									<li><a href="${pageContext.request.contextPath}/user?pages=1&size=${pahader.size}" aria-label="Previous">首页</a></li>
									<li><a href="${pageContext.request.contextPath}/user?pages=${pahader.pages-1<=1?1:pahader.pages-1}&size=${pahader.size}">上一页</a></li>
									<li><a href="${pageContext.request.contextPath}/user?pages=${pahader.pages+1>=pahader.topages?pahader.topages:pahader.pages+1}&size=${pahader.size}">下一页</a></li>
									<li><a href="${pageContext.request.contextPath}/user?pages=${pahader.topages}&size=${pahader.size}" aria-label="Next">尾页</a></li>

								</c:when>
								</c:choose>
										</ul>
						</div>

					</div>
					<!-- /.box-footer-->

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