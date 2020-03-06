<!DOCTYPE html>
<html>
  <head>
    <title>andOldMan.html</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
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
    
<form role="form" action="http://localhost:8080/healhtSystem/deleteDoctor" method="post">
  <div class="form-group">
    <label for="name">医护人员姓名:</label>
    <input type="text" class="form-control" name="name" placeholder="请输入医护人员姓名">
  </div>
 
  <div class="form-group">
    <label for="name">操作人:</label>
    <input type="text" class="form-control" name="admin" placeholder="请输入您的姓名">
  </div>
  
  
  <div class="checkbox">
    <label>
      <input type="checkbox">我已了解删除医护人员准则
    </label>
  </div>
  <button type="submit" class="btn btn-default">提交</button>
</form>

  </body>
</script>
</html>

