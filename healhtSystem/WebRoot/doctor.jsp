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
			<img alt="" src="images/c.png" />
		</div>
	</div>
	<div class="row">
		<div class="col-md-2">
			<ul class="nav nav-list">
				<li class="nav-header">
					<h3>老人管理</h3>
				</li>
				<li class="active">
					<a href="http://localhost:8080/healhtSystem/doctorAddOldMan">添加老人信息</a>
				</li>
				<li>
					<a href="http://localhost:8080/healhtSystem/doctorDelOldMan">删除老人信息</a>
				</li>
				<li>
					<a href="http://localhost:8080/healhtSystem/doctorAddManInfo">添加诊断信息</a>
				</li>
				<li>
					<a href="http://localhost:8080/healhtSystem/home">返回首页</a>
				</li>
		</div>
		<div class="col-md-10">
			<iframe id="doctor" width="100%" height="700px" src="${src}"></iframe>
		</div>
	</div>
</div>
</body>
</html>