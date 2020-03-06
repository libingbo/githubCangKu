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
				<li class="dropdown pull-right">
					 <a href="#" data-toggle="dropdown" class="dropdown-toggle">个人设置<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
						<li>
							<a class="btn" data-toggle="modal" data-target="#login">登录</a>
						</li>
						<li>
							<a class="btn" data-toggle="modal" data-target="#register">注册</a>
						</li>
						<li>
							<a class="btn" data-toggle="modal" href="http://localhost:8080/healhtSystem/sq">了解社区</a>
						</li>
						<li class="divider">
						</li>
						<li>
							<a class="btn" data-toggle="modal" href="http://localhost:8080/healhtSystem/loginOut">登出</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<div class="row">
		<div class="col-md-9">
					 <table class="table">
					 
  						<caption>${tableMap["tableInfo"]}</caption>
  						<thead>
    						<tr>
      							<th>${tableMap["tableName"]}</th>
      							<th>${tableMap["tableSex"]}</th>
								<th>${tableMap["tableBirthday"]}</th>
								<th>${tableMap["tableTelephone"]}</th>
								<th>${tableMap["tableMessage"]}</th>
    						</tr>
 						</thead>
						<tbody>
							<c:forEach items="${page.list}" var="user" varStatus="index">
                				<tr>
                    				<td>${user.name}</td>
                    				<td>${user.sex}</td>
                    				<td>${user.birthday}</td>
                    				<td>${user.telephone}</td>
                    				<td>${user.id}</td>
                				</tr>
            				</c:forEach>
							
				</tbody>
				</table>
				<nav style="text-align: center;">
			    <ul class="pagination col-center-block">
    					<li><a href="#">&laquo;</a></li>
    					<li><a href="#">1</a></li>
    					<li><a href="#">2</a></li>
    					<li><a href="#">3</a></li>
    					<li><a href="#">4</a></li>
    					<li><a href="#">5</a></li>
    					<li><a href="#">&raquo;</a></li>
				</ul>
						 当前${page.pageNum}页/共${page.pages}页/共${page.total}条记录
				</nav>
					   
		</div>
		<div class="col-md-3">
			<form   action="http://localhost:8080/healhtSystem/find" method="post">
				<fieldset>
					 <legend>${selectInfo}</legend>
					  <label>用户名:</label><input type="text" name="name" /> </br>
					  <label>姓名:</label><input type="text" /> </br>
					  <label>电话号码:</label><input type="text" /> 
					  <label>出生日期：</label>

            			<!--指定 date标记-->

            			<div class='input-group date' id='datetimepicker2'>

                		<input type='text' class="form-control" />

                			<span class="input-group-addon">

                    			<span class="glyphicon glyphicon-calendar"></span>

                			</span>

            			</div>
					  <span class="help-block">美好生活每一天</span> 
					  <label class="checkbox"><input type="checkbox" /> 我已了解使用条款</label>
					  <button type="submit" class="btn">查找</button>
				</fieldset>
			</form>
		</div>
	</div>
</div>

			<!-- 进入doctor.jsp时的模态框 -->
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
    	</div><!-- 进入doctor.jsp时的模态框 -->
    		
<!-- 登录的模态框 -->
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">欢迎登录</h4>
            </div>
            <div class="modal-body">请输入您的信息</div>
            <form class="bs-example bs-example-form" role="form" action="http://localhost:8080/healhtSystem/login">
            <div class="input-group">
            	<span class="input-group-addon">用户名:</span>
            	<input type="text" class="form-control" placeholder="此处输入用户名" name="name">
        	</div>
        	<div class="input-group">
            	<span class="input-group-addon">密码:</span>
            	<input type="password" class="form-control" placeholder="此处输入密码" name="mm">
        	</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary">登录</button>
            </div>
            </form>
        </div>
    </div>
</div><!-- 登录的模态框 -->
 
 
 <!--登录后返回一个模态框, 提示用户是否登录成功 -->
<div class="modal fade" id="returnLoginInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">来自服务器的反馈</h4>
            </div>
            <div class="modal-body">${info}</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div> <!-- 登录反馈 -->  		



<!-- 注册的模态框 -->
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">欢迎注册</h4>
            </div>
            <div class="modal-body">请输入您的信息</div>
            <form class="bs-example bs-example-form" role="form" action="http://localhost:8080/healhtSystem/register">
            <div class="input-group">
            	<span class="input-group-addon">用户名:</span>
            	<input type="text" class="form-control" placeholder="此处输入用户名" name="name">
        	</div>
        	<div class="input-group">
            	<span class="input-group-addon">密码:</span>
            	<input type="password" class="form-control" placeholder="此处输入密码" name="mm">
        	</div>
        	<div class="form-group">
    			<label >性别:</label>
    			<input type="radio" name="sex" value="男">男
    			<input type="radio"  name="sex" value="女">女
  			</div>
        	<div class="input-group">
            	<span class="input-group-addon">电话:</span>
            	<input type="password" class="form-control" placeholder="此处输入电话" name="telephone">
        	</div>
        	<div class="input-group">
            	<span class="input-group-addon">电子邮箱:</span>
            	<input type="password" class="form-control" placeholder="此处输入电子邮箱" name="email">
        	</div>
        	<div class="input-group">
            	<span class="input-group-addon">住址:</span>
            	<input type="password" class="form-control" placeholder="此处输入住址" name="address">
        	</div>
        	<div class="input-group">
            	<span class="input-group-addon">兴趣爱好:</span>
            	<input type="password" class="form-control" placeholder="此处输入兴趣爱好" name="hobby">
        	</div>
        	<div class="form-group">
    			<label>生日:</label>
    				<!--指定 date标记-->
            			<div class='input-group date' id='datetimepicker2'>
                		<input type='text' class="form-control" name="birthday" placeholder="2020-03-12 23:52:50.0" />
                			<span class="input-group-addon">
                    			<span class="glyphicon glyphicon-calendar"></span>
                			</span>
            			</div>
  			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary">注册</button>
            </div>
            </form>
        </div>
    </div>
</div><!-- 注册的模态框 -->
 
</body>

<script type="text/javascript">
$(function () {
    $('#datetimepicker2').datetimepicker({

        format: 'YYYY-MM-DD hh:mm',

        locale: moment.locale('zh-cn')

    });

});
</script>

<!-- 这个作用是弹出登录后的提示模态框 , 给用户反馈登录成功与否 -->
<script type="text/javascript">
	var a = <%=request.getAttribute("state")%>;
	if(a == null){}
	else
	{
		$('#returnLoginInfo').modal('show')
	}
</script>

<!-- 这个作用是弹出---登处---后的提示模态框 , 给用户反馈登出成功与否 -->
<script type="text/javascript">
	var a = <%=request.getAttribute("outState")%>;
	if(a == null){}
	else
	{
		$('#returnLoginInfo').modal('show')
	}
</script>


<!-- 用户注册后, 弹出模态框, 给用户一个反馈 -->
<script type="text/javascript">
	var a = <%=request.getAttribute("register")%>;
	if(a == null){}
	else
	{
		$('#returnLoginInfo').modal('show')
	}
</script>

</html>