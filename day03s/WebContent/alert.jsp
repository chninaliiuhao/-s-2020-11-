<%@page import="cn.liuhao.homwork.pojo.Message"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<title>系统信息</title>
<% 
	
	Message message= (Message) session.getAttribute("message");
	
%>
<link rel="stylesheet" href="css/Tz.css" />
<script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
</head>
<body class="no-skin">
<div class="error-container"> 
    <h1><% out.write(message.getTitle()); %>-信息提示 </h1>   
    <div class="errorcon">     
        <i class="icon-smile-o"></i><% out.write(message.getMessage()); %>       
        <span style="display:none;"><i class="icon-frown-o"></i>操作失败!</span>
  
   </div>
    <h4 class="smaller">页面自动调回上一个页面 <a id="href" href="<% out.write(message.getNext_url()); %> ">跳转</a> 等待时间： <b id="wait">4秒 </b></h4> 
   
</div>

<script type="text/javascript">
(function(){
var wait = 3
var interval = setInterval(function(){
	$('#wait').text(wait+'秒')
	var time = --wait
	if(time <= 0) {
		location.href = '<% out.write(message.getNext_url()); %>';
		clearInterval(interval);
	};
}, 1000);
})();
</script>
</body>
</html>
