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
    
<form role="form" action="http://localhost:8080/healhtSystem/insertZhenDuanInfo" method="post">
  <div class="form-group">
    <label for="name">患者姓名:</label>
    <input type="text" class="form-control" name="name" placeholder="请输入患者姓名">
  </div>
  <div class="form-group">
    <label >性别:</label>
    <input type="radio" name="sex" value="男">男
    <input type="radio"  name="sex" value="女">女
  </div>
  <div class="form-group">
    <label>诊断日期:</label>
    				<!--指定 date标记-->

            			<div class='input-group date' id='datetimepicker2'>

                		<input type='text' class="form-control" name= "testDate" />

                			<span class="input-group-addon">

                    			<span class="glyphicon glyphicon-calendar"></span>

                			</span>

            			</div>
  </div>
  
  <div class="form-group">
    <label for="name">心率:</label>
    <input type="text" class="form-control" name="xinlv" placeholder="请输入心率">
  </div>
  
  <div class="form-group">
    <label for="name">血压:</label>
    <input type="text" class="form-control" name="xueya" placeholder="请输入血压">
  </div>
  <div class="form-group">
    <label for="name">呼吸频率:</label>
    <input type="text" class="form-control" name="hxpl" placeholder="请输入呼吸频率">
  </div>
  <div class="form-group">
    <label for="name">体温:</label>
    <input type="text" class="form-control" name="tiwen" placeholder="请输入体温">
  </div>
  <div class="form-group">
    <label for="name">体重:</label>
    <input type="text" class="form-control" name="tizhong" placeholder="请输入体重">
  </div>
  <div class="form-group">
    <label for="name">健康状况:</label>
    <input type="text" class="form-control" name="healthDesc" placeholder="请输入健康状况">
  </div>
  <div class="form-group">
    <label for="name">诊断人:</label>
    <input type="text" class="form-control" name="doctor" placeholder="请输入诊断人">
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox">我将对此次诊断负责
    </label>
  </div>
  <button type="submit" class="btn btn-default">提交</button>
</form>

  </body>
  <script type="text/javascript">
$(function () {
    $('#datetimepicker2').datetimepicker({

        format: 'YYYY-MM-DD hh:mm',

        locale: moment.locale('zh-cn')

    });
});
</script>
</html>

