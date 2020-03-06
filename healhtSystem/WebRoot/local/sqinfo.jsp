<!DOCTYPE html>
 <!-- 要使用static文件夹下的静态资源, 必须在头部声明 -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdn.bootcss.com/moment.js/2.18.1/moment-with-locales.min.js"></script>
	<link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />
	<script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

</head>
<body>
	<div class="container">
	<div class="row">
		<div class="span12">
			<div class="page-header">
				<h1>
					<em>社区信息展示</em>
				</h1>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			 <img src="../images/renwu3.jpg" class="img-responsive img-circle" > 
			 <h3>总经理:普通市民刘先生</h3>
			 <h3>管理辖区:阳光社区</h3>
			 <h3>联系方式:13748463729</h3>
			 <h3>上班时间:8:00-18:00</h3>
		</div>
		<div class="col-md-4">
			<img src="../images/renwu1.jpg" class="img-responsive img-circle" > 
			 <h3>总经理:天生脸盲刘强东</h3>
			 <h3>管理辖区:太阳岛社区</h3>
			 <h3>联系方式:13748457029</h3>
			 <h3>上班时间:8:00-18:00</h3>
		</div>
		<div class="col-md-4">
			<img src="../images/renwu2.jpg" class="img-responsive img-circle" > 
			 <h3>总经理:对钱无感杰克马</h3>
			 <h3>管理辖区:财富社区</h3>
			 <h3>联系方式:13748244429</h3>
			 <h3>上班时间:8:00-18:00</h3>
		</div>
	</div>
</div>
</body>
</html>