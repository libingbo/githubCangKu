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
			<img alt="" src="images/a.png" />
		</div>
	</div>
	<div class="row">
		<div class="span12">
		<div class="row">
		<div class="span12">
			<ul class="nav nav-tabs">
				<li class="active">
					<a href="http://localhost:8080/healhtSystem/home">首页</a>
				</li>
				<li>
					<a href="http://localhost:8080/healhtSystem/oldMan">老人查询</a>
				</li>
				<li class="disabled">
					<a href="http://localhost:8080/healhtSystem/worker">医疗工作者</a>
				</li>
				<li class="disabled">
					<a class="btn  " data-toggle="modal" data-target="#healthRecord">健康记录</a>
				</li>
				<li class="disabled">
					<a href="http://localhost:8080/healhtSystem/zhiban">值班查询</a>
				</li>
				<li class="disabled">
					<a href="class="btn  " data-toggle="modal" data-target="#healthRecord"">医疗诊断</a>
				</li>
				<li class="disabled">
					<a href="http://localhost:8080/healhtSystem/zyz">志愿者风采</a>
				</li>
				<li class="disabled">
					<a class="btn  " data-toggle="modal" data-target="#admin">超级管理员入口</a>
				</li>
			<ul>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="span12">
			<div class="carousel slide" id="carousel-445336">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-445336">
					</li>
					<li data-slide-to="1" data-target="#carousel-445336">
					</li>
					<li data-slide-to="2" data-target="#carousel-445336">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="images/b.png" />
						<div class="carousel-caption">
							<h4>
								棒球
							</h4>
							<p>
								棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="images/b.png" />
						<div class="carousel-caption">
							<h4>
								冲浪
							</h4>
							<p>
								冲浪是以海浪为动力，利用自身的高超技巧和平衡能力，搏击海浪的一项运动。运动员站立在冲浪板上，或利用腹板、跪板、充气的橡皮垫、划艇、皮艇等驾驭海浪的一项水上运动。
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="images/b.png" />
						<div class="carousel-caption">
							<h4>
								自行车
							</h4>
							<p>
								以自行车为工具比赛骑行速度的体育运动。1896年第一届奥林匹克运动会上被列为正式比赛项目。环法赛为最著名的世界自行车锦标赛。
							</p>
						</div>
					</div>
				</div> <a data-slide="prev" href="#carousel-445336" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-445336" class="right carousel-control">›</a>
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="healthRecord" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    		<div class="modal-dialog">
        		<div class="modal-content">
            		<div class="modal-header">
                		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                		<h4 class="modal-title" id="myModalLabel">请使用医护人员身份登录</h4>
            		</div>
            		<div class="modal-body">使用此功能 , 我们需要验证您的身份</div>
            		<form  action="http://localhost:8080/healhtSystem/doctorLoginCheck" method="post">
            		<div class="input-group">
            			<span class="input-group-addon">用户名</span>
            			<input type="text" class="form-control" placeholder="user" name="name">
        			</div>
        			<br>
					<div class="input-group">
            			<span class="input-group-addon">密码</span>
            			<input type="password" class="form-control" placeholder="password" name="password">
        			</div>
        			<br>
            		<div class="modal-footer">
                		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                		<button type="submit" class="btn btn-primary">进入</button>
            		</div>
            		</form>
        		</div><!-- /.modal-content -->
    		</div><!-- /.modal -->
    		</div>
    		
    	<!--  管理员登录模态框  -->
		<div class="modal fade" id="admin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    		<div class="modal-dialog">
        		<div class="modal-content">
            		<div class="modal-header">
                		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                		<h4 class="modal-title" id="myModalLabel">超级管理员入口</h4>
            		</div>
            		<div class="modal-body">使用此功能 , 我们需要核实您的身份</div>
            		<form  action="http://localhost:8080/healhtSystem/admin" method="post">
            		<div class="input-group">
            			<span class="input-group-addon">用户名</span>
            			<input type="text" class="form-control" placeholder="adminName" name="name">
        			</div>
        			<br>
					<div class="input-group">
            			<span class="input-group-addon">密码</span>
            			<input type="password" class="form-control" placeholder="password" name="mm">
        			</div>
        			<br>
            		<div class="modal-footer">
                		<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                		<button type="submit" class="btn btn-primary">进入</button>
            		</div>
            		</form>
        		</div><!-- /.modal-content -->
    		</div><!-- /.modal -->
    	 </div>
</body>

</html>