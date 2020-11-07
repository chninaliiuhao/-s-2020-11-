<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>我的账户</title>
		<link rel="stylesheet" href="css/header.css" />
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/main.css" />
		<link rel="stylesheet" href="css/PersonalCenter.css" />
		
	</head>
	<body>
		<!--网页头部-->
		<center>
		<div class="header">
			<div class="header-main w1300">
				<!--logo-->
				<a href="index.html"  class="logo">
					<img src="img/logo.png"/>
				</a>
				<!--退出登录按钮-->
				<div class="header-link">
					<a href="/project/showBooks" class="index">返回首页</a>
					<!-- <span class="down-icon"></span> -->
					<span class="line">|</span>
					<a href="/project/exitSystem" class="login">退出账户</a>
					<!-- <span class="down-icon"></span> -->
					<span class="line">|</span>
					<a href="#" class="service">联系客服</a>
				</div>
			</div>
		</div>
		<!--菜单栏 -->
		<div id="nav">
				<ul class="nav-ul">
					<li><a href="#">慧慧首页</a></li>
					<li>
						<a href="#">安全设置</a>
						<ul>
							<li class="eff-1"><a href="#">修改登录密码</a></li>
							<li class="eff-2"><a href="#">手机绑定</a></li>
							<li class="eff-3"><a href="#">密保问题设置</a></li>
							<li class="eff-4"><a href="#">其他</a></li>
						</ul>
					</li>
					<li>
						<a href="#">个人资料</a>
						<ul>
							<li class="eff-1"><a href="#">收货地址</a></li>
							<li class="eff-2"><a href="/project/modify.jsp">修改个人信息</a></li>
							<li class="eff-3"><a href="#">消息提醒设置</a></li>
							<li class="eff-4"><a href="#">更多设置</a></li>
						</ul>
					</li><li>
						<a href="#">账号绑定</a>
						<ul>
							<li class="eff-1"><a href="#">支付宝绑定</a></li>
							<li class="eff-2"><a href="#">微信绑定</a></li>
							<li class="eff-3"><a href="#">京东绑定</a></li>
						</ul>
					</li><li>
						<a href="#">收藏夹</a>
						<ul>
							<li class="eff-1"><a href="#">收藏的宝贝</a></li>
							<li class="eff-2"><a href="#">收藏的店铺</a></li>
						</ul>
					</li><li>
						<a href="#">我的慧慧</a>
						<ul>
							<li class="eff-1"><a href="#">已买到的宝贝</a></li>
							<li class="eff-2"><a href="#">我的足迹</a></li>
						</ul>
					</li>
				</ul>
		</div>
		
		<!--我的账户中间模块-->
		<div class="wrap">
			
			
		<!--页面左边栏-->
			<div class="left">
				<span>全部功能</span>
				<ul class="z-gn">
					<li><a href="#">我的购物车</a></li>
					<li>
						<a href="#">已买到的宝贝</a>
						<ul style="display: none;">
							<li class="zbl-1"><a href="#">我的拍卖</a></li>
							<li class="zbl-2"><a href="#">机票酒店保险</a></li>
							<li class="zbl-3"><a href="#">我的彩票</a></li>
							<li class="zbl-4"><a href="#">官方集运</a></li>
						</ul>
					</li>
					<li><a href="#">购买过的店铺</a></li>
					<li>
						<a href="#">我的发票</a>
						<ul style="display: none;">
							<li class="zbl-1"><a href="#">开票信息</a></li>
							<li class="zbl-2"><a href="#">发票管理</a></li>
						</ul>
					</li>
					<li><a href="#">我的收藏</a></li>
					<li><a href="#">我的积分</a></li>
					<li><a href="#">我的优惠信息</a></li>
					<li><a href="#">评价管理</a></li>
					<li>
						<a href="#">退款维权</a>
						<ul style="display: none;">
							<li class="zbl-1"><a href="#">退款管理</a></li>
							<li class="zbl-2"><a href="#">投诉管理</a></li>
							<li class="zbl-3"><a href="#">举报管理</a></li>
						</ul>
					</li>
					<li><a href="#">我的足迹</a></li>
					<li><a href="#">流量钱包</a></li>
				</ul>
			</div>
			
			
		<!--页面中部内容-->
			<div class="main">
					<img class="img-1" src="img/123.PNG" />
				<!--页面右边栏-->
					<div class="right">
							<a href="#" class="right-link">
								<img src="img/image.jpg" />
							</a>
							<!--热门折扣-->
							<div class="discount">
								<div class="hd clearfloat">
									<h1>4小时热门折扣</h1>
									<a href="#" class="more">更多</a>
								</div>
								<ul>
									<li><a href="#">
										<img src="img/image1.png" alt="" class="discount-img"/>
										<div class="title">
											<p class="discount-des">Skechers 斯凯奇 幼童运动鞋  </p>
											<span class="user">浏览112次</span>
										</div>
									</a></li>
									<li><a href="#">
										<img src="img/image2.png" alt="" class="discount-img"/>
										<div class="title">
											<p class="discount-des">Yijan 易简 G820 女宝电动理发器 +凑单品  </p>
											<span class="user">浏览109次</span>
										</div>
									</a></li>
									<li><a href="#">
										<img src="img/image3.png" alt="" class="discount-img"/>
										<div class="title">
											<p class="discount-des">Aprica 阿普丽佳 魔捷轻风 高景观婴儿推车蓝色 </p>
											<span class="user">浏览100次</span>
										</div>
									</a></li>
									<li><a href="#">
										<img src="img/image4.png" alt="" class="discount-img"/>
										<div class="title">
											<p class="discount-des">Skechers 斯凯奇 儿童网布运动鞋 </p>
											<span class="user">浏览89次</span>
										</div>
									</a></li>
								</ul>
							</div>
							<a href="#" class="right-link">
								<img src="img/image2.jpg" />
							</a>
							<a href="#" class="right-link">
								<img src="img/image1.jpg" />
							</a>
						</div>
				
			</div>
				</div>
		</div>
		
		
		<!--网页脚注-->
		<div class="footer">
			<div class="footer-main w1300">
				<div class="foot-link">
					<a href="#">关于我们</a>
					<span>|</span>
					<a href="#">官方博客</a>
					<span>|</span>
					<a href="#">商务合作</a>
					<span>|</span>
					<a href="#">友情链接</a>
					<span>|</span>
					<a href="#">加入我们</a>
					<span>|</span>
					<a href="#">帮助</a>
				</div>
				<p class="copy">&copy; 2019 网易公司 京ICP证080268号 京ICP备12032105号-1 京公网安备11010802020093号</p>
			</div>
		</div>
	</center>	
	</body>
</html>
