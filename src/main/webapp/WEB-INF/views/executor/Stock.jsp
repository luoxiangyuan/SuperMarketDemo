<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% pageContext.setAttribute("APP_PATH", request.getContextPath());%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="${pageContext.request.contextPath }/static/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/static/css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="${pageContext.request.contextPath }/static/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/static/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body>
	<div class="container">
		<!-- 标题行 -->
		<div class="row">
			<div class="col-md-12">
				<h1>查询库存</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				
					  <div class="form-group">
					    <label class="col-sm-2 control-label">仓库</label>
					    <div class="col-sm-10">
					      <select class="form-control" name="warehouseId" id="warehouseId">
					      
						  </select>
						  <button type="button" class="btn btn-success" id="getStock">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
							查询
						  </button>
					    </div>
					  </div>		  
				
			</div>
		</div>
		
		<!-- 表格 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="stockTable">
					<thead>
						<tr>
							<th>仓库名称</th>
							<th>商品名称</th>
							<th>库存数量</th>
						</tr>					
					</thead>
					<tbody>						
					</tbody>
				</table>
			</div>
		</div>
		<!-- 分页信息 -->
		<div class="row">
							<!-- 文字信息 -->
			<div class="col-md-6" id="page_info_area"></div>
							<!-- 分页条 -->
			<div class="col-md-6" id="page_nav_area"></div>
		</div>
						
	</div>
	<!-- 全局js -->
	<script src="${pageContext.request.contextPath }/static/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath }/static/js/bootstrap.min.js?v=3.3.6"></script>
    <!-- 引入自定义的js文件 完成函数操作 -->
	<script><%@include file="/static/MYjs/Stock.js" %></script>
</body>
</html>