<#macro menu selectMenu="0">
<style type="text/css">
.centerImageCss{
	width: 289px;
	height: 190px;
}
.title {
	display: block;
	width: 280px;
	overflow: hidden; /*注意不要写在最后了*/
	white-space: nowrap;
	-o-text-overflow: ellipsis;
	text-overflow: ellipsis;
}
body{
	padding-top: 0px;
  	padding-bottom: 0px;
	font-size: 20px;
	font-family:Tahoma,Helvetica,"microsoft yahei","Hiragino Sans GB",Simsun,\5b8b\4f53,sans-serif
}

.top-wrapper{
	background:#fff;
	padding:48px 0 42px;
	margin:0;
	display:block;
}

.menuTitle{
	position:relative;
	height:50px;
	width:1100px;
	margin:0 auto;
	border-spacing:0;
	font-size:12px;
}
.menuTitle h1{
	position: absolute;
    left: 0;
    top: 0;
    width: 310px;
    height: 58px;
    padding: 0;
    margin: 0;
    display: block;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
	text-align:center;
}
.menuTitle nav{
	position: absolute;
    left: 314px;
    top: 8px;
    height: 46px;
    line-height: 76px;
}

.clearFix{
	    zoom: 1;
}
.menuTitle nav li{
	float: left;
    padding: 0 14px;
    list-style: none;
    display: list-item;
    text-align: -webkit-match-parent;
}

.menuTitle nav li a{
	color: #22a1dc;
    font-size: 18px;
    display: block;
    height: 100%;
    padding: 0 3px;
    vertical-align: middle;
    -webkit-transform: translateZ(0);
    transform: translateZ(0);
    box-shadow: 0 0 1px rgba(0, 0, 0, 0);
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
    -moz-osx-font-smoothing: grayscale;
    position: relative;
    overflow: hidden;
    letter-spacing: 0.5px;
}

.search{
    position: absolute;
    right: 0;
    top: 25px;
    padding: 10px 0 10px 16px;
    height: 18px;
    line-height: 18px;
    width: 400px;
}
.hotSearch{
	cursor: pointer;
}
.input-group stylish-input-group{
	line-height:66px;
}
</style>
<!-- 顶部导航条 -->
<!--登陆，注册，促销活动，积分商城-->
<div id="header" style="height:35px;font-size:15px;background-color:#f8f8f8;text-align:right;width:100%" >
			<a href="${basepath}/activity.html" >
			<!--	<span class="glyphicon glyphicon-time"></span>
				促销活动</a> |
				<a href="${basepath}/activity/score.html" >
					积分商城</a> |
					<a href="${basepath}/activity/tuan.html" >
					团购活动</a> |
					-->
					<#if currentAccount()??>
                        <span id="myshopMenuPPP" style="display: inline-block;z-index: 9999;position: relative;;">
		          			<!-- 会员中心的菜单 -->
		          			<span style="margin-top: 0px;">
							  <a data-toggle="dropdown" style="display: block;margin-top: 0px;">
                                  <span class="glyphicon glyphicon-user"></span>&nbsp;用户中心
                                  (${currentAccount().nickname})
                                  <span class="caret" style="display: inline-block;"></span>
                              </a>
							  <ul class="dropdown-menu" id="myshopMenu" role="menu" style="display: none;margin-top: 0px;">
                                  <li><a href="${basepath}/account/account"><span class="glyphicon glyphicon-user"></span>&nbsp;个人资料</a></li>
                                  <li><a href="${basepath}/account/topwd"><span class="glyphicon glyphicon-screenshot"></span>&nbsp;修改密码</a></li>
                                  <li class="divider"></li>
                                  <li><a href="${basepath}/account/orders"><span class="glyphicon glyphicon-th"></span>&nbsp;我的订单</a></li>
                                   <li><a href="${basepath}/account/score"><span class="glyphicon glyphicon-asterisk"></span>&nbsp;我的积分</a></li>
                                  <li><a href="${basepath}/account/address"><span class="glyphicon glyphicon-send"></span>&nbsp;配送地址</a></li>
                                  <li><a href="${basepath}/account/favorite"><span class="glyphicon glyphicon-tags"></span>&nbsp;收藏夹</a></li>
                                  <li class="divider"></li>
                                  <li><a href="${basepath}/account/exit"><span class="glyphicon glyphicon-pause"></span>&nbsp;退出系统</a></li>
                              </ul>
							</span>
		          		</span>
		          		<span style="display: none;">
							${currentAccount().nickname!""}
		          			(${currentAccount().loginType!""})
		          		</span>
					<#else >    
					<div style="padding-top:3px;padding-right:100px">                  
		          		<a href="${basepath}/account/login" style="color:#00aeff;">登陆</a> |
		          		<a href="${basepath}/account/register" style="color:#ff7a32">注册</a>
		          		<div>
					</#if>
	</div>	
</div>
<!-- header end -->
	<div class="top-wrapper">
	<div id="menuTitle" class="menuTitle">
		<h1>
			<a href="${systemSetting().www}/index"><img style="" src="${systemSetting().log}"/></a>
		</h1>
		<nav>
			<ul class="clearfix">
			<!-- 首页 -->
				<#if selectMenu=="0">
		            <li class="active"><a href="${systemSetting().www}/index">首页</a></li>
				<#else>
		            <li><a href="${systemSetting().www}/index">首页</a></li>
				</#if>
				<li ><a href="${basepath}/menu/data3.ftl"">解决方案</a></li>
				<li ><a href="${basepath}/menu/data4.ftl"">大数据学院</a></li>
				<li ><a href="${basepath}/menu/data5.ftl"">新闻动态</a></li>	
			</ul>
		</nav>
		<div class="search">
		<form class="form-inline" role="form" name="searchForm" id="searchForm" method="post" action="${basepath}/search.html" >
                    <input type="text" class="form-control"  placeholder="请输入关键字" style="width:200px" >
                  <button class="btn">  
       				 <span class="glyphicon glyphicon-search" style="" ></span>   
   				 </button> 
				 </form>
		</div>
</div>


<script type="javascript">
//搜索商品
function search(){
	var _key = $.trim($("#key").val());
	if(_key==''){
		return false;
	}
	$("#searchForm").submit();
}
</script>
</#macro>