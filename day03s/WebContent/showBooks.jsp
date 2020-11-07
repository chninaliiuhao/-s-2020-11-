<%@page import="cn.liuhao.homwork.pojo.UserInfo"%>
<%@page import="cn.liuhao.homwork.pojo.BookTable"%>
<%@page import="cn.liuhao.homwork.service.impl.BookServiceImpl"%>
<%@page import="cn.liuhao.homwork.pojo.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	BookTable table= (BookTable) request.getAttribute("bookTable");
	List<Book> list=table.getBooks();
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>惠惠首页</title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/header.css" />
		<link rel="stylesheet" href="css/main.css" />
		<link rel="stylesheet" href="css/footer.css" />
		<script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
	</head>
	<body>
	<script type="text/javascript">
	
		// 搜索跳转
		function searchSubmit(){
			var url='/project/showBooks?key='+$('#key').val()
			window.location.href=url
		}
		
		// 默认升序
		var sortTitle='asc'
		
		function sort(){
			var minPrice=$('input[name="minPirce"]').val()
			var maxPrice=$('input[name="maxPrice"]').val()
			var url='/project/showBooks?key='+$('#key').val()+'&sort='+sortTitle+'&minPrice='+minPrice+'&maxPrice='+maxPrice
			window.location.href=url
		}
		
		$(function(){
			// 页面加载完成后执行
			$(document).ready(function(){
				
				// 完成预加载升序降序按钮
				var url=window.location.href.toString()
				url=url.substring(url.indexOf('sort'))
				var sort=url.substring(url.indexOf('=')+1,url.indexOf('&'))
				if(sort=='asc')
					$('#up-icon').click();
				else
					$('#down-icon').click();
			})
			
			$('#up-icon').click(function(){
				sortTitle='asc'
			})
			$('#down-icon').click(function(){
				sortTitle='desc'
			})
		});
	</script>
		<!--网页头部-->
		<div class="header">
			<div class="header-main w1300">
				<!--logo-->
				<a href="index.html"  class="logo">
					<img src="img/logo.png"/>
				</a>
				<!--搜索框-->
				<div class="search">
					<form id="searchForm" action="javascript:void(0);" method="get">
						<div>
							<input type="text" class="search-txt" id="key" value="<%
							
								if(table.getKey()!=null)
									out.write(table.getKey());
							
							%>" />
						</div>
						<div class="sub-btn">
							<button onclick="searchSubmit()" class="sub-img"></button>
						</div>
					</form>
				</div>
				<!--登录按钮-->
				<div class="header-link">
					<%
						
						UserInfo user= (UserInfo) session.getAttribute("user");
						String loginTxt="";
						String loginUrl="";
						if(user==null){
							loginTxt="点击登录";
							loginUrl="/project/login.jsp";
						}else{
							loginTxt="欢迎您！用户："+user.getUser_name();
							loginUrl="javascript:void(0);";
						}
					
					%>
				
					<a href="<% out.write(loginUrl); %>"  class="login"><% out.write(loginTxt); %></a>
					<span class="down-icon"></span>
					<span class="line">|</span>
					<a href="/project/personCenter.jsp" class="account">我的账户</a>
					<span class="down-icon"></span>
				</div>
			</div>
		</div>
		<!--网页主体内容-->
		<div class="contain w1300 clearfloat">
			<!--中心内容左边-->
			<div class="contain-left">
				<!--筛选-->
				<div class="choice">
					<h3 class="choice-title">全网好货</h3>
					<!--商城-->
					<div class="store">
						<span class="store-title">商城：</span>
						<ul class="store-ul clear-float">
							<li>
								<input type="checkbox" class="chk" id="chk1" checked="checked"/>
								<label for="chk1">淘宝精选</label>
							</li>
							<li>
								<input type="checkbox" class="chk" id="chk2" checked="checked"/>
								<label for="chk2">京东精选</label>
							</li>
							<li>
								<input type="checkbox" class="chk" id="chk3" checked="checked"/>
								<label for="chk3">当当精选</label>
							</li>
						</ul>
						<!--  <input type="submit" value="提交"  class="store-btn"/> -->
					</div>
					<!--排序-->
					<div class="order">
						<span class="order-title">排序：</span>
						<ul class="order-ul clear-float">
							<li  class="order-price">
								<a href="#">价格</a>
								<span id="up-icon" ></span>
								<span id="down-icon" ></span>
							</li>
							<li>
								<a href="#">
									<input type="number" placeholder="￥" name="minPirce" value="<%
									out.write(table.getMinPrice()+""	);
							%>" /> -
									<input type="number" placeholder="￥" name="maxPrice" value="<%
									out.write(table.getMaxPrice()+""	);
							%>" />
								</a>
								<a href="#" class="price-sure store-btn" onclick="sort()">确定</a>
							</li>
						</ul>
					</div>
				</div>
				<!--商品展示-->
				<div class="goods-show">
					<ul class="clearfloat">
						<%
							for(int i=0;i<list.size();i++){
								Book item=list.get(i);
							
						%>
						<li class="goods-item">
							<a href="#">
								<img src="<% out.write(item.getBook_picture_url()); %>" alt="" width="195" height="195" class="goods-img"/>
								<p class="to-store">直达商品</p>
								<div class="goods-info">
									<p class="goods-price clearfloat">
										<span><% out.write(item.getBook_price()); %></span>
										<img src="img/icon_steady.png"/>
									</p>
									<p class="goods-des">
										<% out.write(item.getBook_name()); %>
									</p>
									<span class="goods-coupon">淘宝</span>
									<span class="goods-num">销量0</span>
								</div>
							</a>
						</li>
						<%
							}
						%>
					</ul>
				</div>
				
				<div class="more-pages">
					<a class="direction-page" href="<%
					out.write("/project/showBooks?pageIndex="+(table.getPageindex()-1)+"&pageSize="+table.getPagesize()+"&key="+table.getKey()+"&sort="+table.getSort()+"&minPrice="+table.getMinPrice()+"&maxPrice="+table.getMaxPrice());
					%>"><</a> 
					   第<% out.write(table.getPageindex()+""); %>页&nbsp;&nbsp;/&nbsp;&nbsp; 共<% out.write(table.getTotalPage()+""); %>页   
					   <a class="direction-page" href="<%
					out.write("/project/showBooks?pageIndex="+(table.getPageindex()+1)+"&pageSize="+table.getPagesize()+"&key="+table.getKey()+"&sort="+table.getSort()+"&minPrice="+table.getMinPrice()+"&maxPrice="+table.getMaxPrice());
					%>">></a>
				
				</div>
				
				
				
			</div>
			
			
			<!--中心内容右边-->
			<div class="contain-right">
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
		<script type="text/javascript" src="js/index.js" ></script>
	</body>
</html>