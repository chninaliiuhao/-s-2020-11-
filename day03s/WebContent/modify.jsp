<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="css/reset2.css" />
<link rel="stylesheet" href="css/footer2.css" />
<link rel="stylesheet" href="css/modify.css" />
<script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function flushCode(o){
	var url="/project/verifyCode?rand="+Math.random()*1000+1
	$(o).attr("src",url)
}
</script>
</head>
<body>
	<!--登录/注册/修改的头部-->
	<div class="lr-top w1230">
		<a href="index.html"><img src="img/logo.png" /></a>
		<div class="top-link">
			<a href="#" class="top-link1"></a> <a href="#" class="top-link2"></a>
			<a href="#" class="top-link3"></a>
		</div>
	</div>
	<!--登录/注册/修改的中部-->
	<div class="lr-main">
		<div class="w1230">
			<div></div>
			<div class="reg-div" style="position: relative">
				<div id="eee">
					<div id="account-login-div" style="display: block;">
						<h3 class="login-title">账号密码修改</h3>
						<p class="go-reg">
							注：一周仅能修改一次用户名。<a href="/project/personCenter.jsp">返回个人账户</a>
						</p>
						<form action="/project/UpdateUserInfo" method="post">
							<p>
								<span class="icon-account"></span><input type="hidden" name="user_id"
									placeholder="" value="${user.user_id}" />
							</p>
							<p>
								<span class="icon-account"></span><input type="text" name="user_name"
									placeholder="" value="${user.user_name}" disabled="disabled" />
							</p>
							<%-- <p>
									<span class="icon-pwd1"></span><input type="password"
										placeholder="" value="${user.user_password}" />
								</p> --%>
							<p>
								<span class="icon-pwd2"></span><input type="text" name="user_password"
									placeholder="空值默认为不修改" value="${user.user_password}" />
							</p>
							<p class="clear-float">
								<input type="text" placeholder="验证码" class="code" /><img
									src="verifyCode" width="110px" height="42px" class="code-img" onclick="flushCode(this)" />
							</p>
							<input type="submit" value="确定修改" class="sum-btn" />
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!--登录/注册/修改的底部-->
	<div class="lr-footer footer">
		<p class="w1230">
			<a href="#">关于爱购</a> <a href="#">合作伙伴</a> <a href="#">营销中心</a> <a
				href="#">廉正举报</a> <a href="#">联系客服</a> <a href="#">开发平台</a> <a
				href="#">诚征英才</a> <a href="#">联系我们</a> <a href="#">网站地图</a> <a
				href="#">知识产权</a><span>|</span> <span>&copy;2018-2020 igo.com
				版权所有</span>
		</p>
	</div>
</body>
</html>
