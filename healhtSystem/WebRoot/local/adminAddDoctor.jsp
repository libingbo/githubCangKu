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
    
<form role="form" action="http://localhost:8080/healhtSystem/addDoctor" method="post">
  <div class="form-group">
    <label for="name">姓名:</label>
    <input type="text" class="form-control" name="name" placeholder="请输入姓名">
  </div>
  <div class="form-group">
    <label >性别:</label>
    <input type="radio" name="sex" value="男">男
    <input type="radio"  name="sex" value="女">女
  </div>
  <div class="form-group">
    <label >医护资质:</label>
    <input type="radio" name="zizhi" value="住院医师">住院医师
    <input type="radio"  name="zizhi" value="主治医师">主治医师
    <input type="radio"  name="zizhi" value="主任医师">主任医师
    <input type="radio"  name="zizhi" value="护理">护理
  </div>
  <div class="form-group">
    <label>生日:</label>
    				<!--指定 date标记-->

            			<div class='input-group date' id='datetimepicker2'>

                		<input type='text' class="form-control" name="birthday" />

                			<span class="input-group-addon">

                    			<span class="glyphicon glyphicon-calendar"></span>

                			</span>

            			</div>
  </div>
  
  <div class="form-group">
    <label for="name">电话号码:</label>
    <input type="text" class="form-control" name="telephone" placeholder="请输入电话号码">
  </div>
  
  <div class="form-group">
    <label for="name">邮箱:</label>
    <input type="text" class="form-control" name="eamil" placeholder="请输入邮箱">
  </div>
  
  <div class="form-group">
    <label for="name">密码:</label>
    <input type="password" class="form-control" name="mm" placeholder="请输入密码">
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox">我已阅读添加患者守则
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
