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
</style>

<style>

.hotSearch{
	cursor: pointer;
}
</style>
<!-- 顶部导航条 -->
<!--登陆，注册，促销活动，积分商城-->
<div style="height:30px;font-size:15px;background-color:#f8f8f8" >
<div class="container">
<div class="row" style="float:right">
<a href="${basepath}/activity.html" >
				<span class="glyphicon glyphicon-time"></span>
				促销活动</a> |
				<a href="${basepath}/activity/score.html" >
					积分商城</a> |
					<a href="${basepath}/activity/tuan.html" >
					团购活动</a> |
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
		          		<a href="${basepath}/account/login">登陆</a> |
		          		<a href="${basepath}/account/register">注册</a>
					</#if>
	
</div>	
</div>
</div>
<div class="container">
	<div class="row">
		<!--logo-->
		<div class="col-xs-3" style="height:100px;padding-top:10px">
			<a href="${systemSetting().www}/index"><img style="margin-top:10px" alt="myshop-logo" src="${systemSetting().log}"/></a>
		</div>
		<div class="col-xs-9" style="height:100px;padding-top:25px" >			
			<!-- search查询输入框 -->
				<form class="form-inline" role="form" name="searchForm" id="searchForm" method="post"
								action="${basepath}/search.html" >
					<div class="form-group btn-group">
						<div class="input-group">
							<input type="text" name="key" id="key" class="form-control input-sm" style="border: 1px solid #ececec;border-right: 0px;" 
			      		placeholder="请输入商品关键字" size="40" value="${key!""}" maxlength="20"/>
							<span class="input-group-btn">
								<button value="搜索" class="btn btn-primary btn-sm" onclick="search();">
									<span class="glyphicon glyphicon-search"></span>&nbsp;搜索
								</button>
								<a class="btn btn-success btn-sm" href="${basepath}/cart/cart.html">
									<span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;购物车
									<#if shoppingCart()?? && shoppingCart().productList?? && shoppingCart().productList?size gt 0>
	                                    <span class="badge badge-success">${shoppingCart().productList?size}</span>
									</#if>
								</a>
							</span>
						</div>
					</div>
				 </form>
				<div style="text-align: left;margin-top: 5px;font-size: 15px;">热门搜索：
					<#list systemManager().hotqueryList as item>
	                    <a class="hotSearch" href="${item.url}" target="_blank">
							${item.key1!""}
	                    </a>
					</#list>
				</div>	
		</div>				
	</div>	
	<div class="row">
		<!-- 菜单行 -->
		<div class="row" style="height:50px">
			 <ul class="nav navbar-nav  navbar-right" >
		  		<!-- 首页 -->
				<#if selectMenu=="0">
		            <li class="active"><a href="${systemSetting().www}/index"><b style="color:#00B2EE">首页</b></a></li>
				<#else>
		            <li><a href="${systemSetting().www}/index"><b>首页</b></a></li>
				</#if>
				<li class=""><a href="${basepath}/menu/data1.ftl"><b style="color:#00B2EE">数据</b></a></li>
				<li class=""><a href="${basepath}/menu/data2.ftl""><b style="color:#00B2EE">数据挖掘</b></a></li>
				<li class=""><a href="${basepath}/menu/data3.ftl""><b style="color:#00B2EE">解决方案</b></a></li>
				<li class=""><a href="${basepath}/menu/data4.ftl""><b style="color:#00B2EE">大数据学院</b></a></li>
				<li class=""><a href="${basepath}/menu/data5.ftl""><b style="color:#00B2EE">新闻动态</b></a></li>					
			</ul>			
		</div>
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