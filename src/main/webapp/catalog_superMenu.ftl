<#--左侧导航栏、热卖商品、文章、事项-->
<link rel="stylesheet"
	href="${basepath}/resource/js/superMenu/css/css.css"
	type="text/css">
<style>
#alldata{
background-image: url("/jshop/resource/images/tyoe.png");
}</style>
<div id="sidebar">

<h3 style="padding-top:15px;padding-left:30px;padding-bottom:15px;margin:0px;color:#00B2EE">所有数据分类</h3>
<#list systemManager().catalogs as item>	
       <div class="sidelist">    
			<span>
				<h3>
					<a href="${basepath}/catalog/${item.code}.html"><b style="color:#00B2EE">${item.name}</b></a>
				</h3>
			</span>
			<div class="i-list">
				<ul>
					<#if item.children??>
						<#list item.children as sItem>
						<li>
		          			<a href="${basepath}/catalog/${sItem.code}.html"><b>${sItem.name}</b></a>
						</li>
						</#list>
					</#if>
				</ul>
				<div style="clear: both;"></div>
				
				<#if item.superMenuProducts??>
					<div style="border-top: 1px solid #f40;clear: both;" class="hotText">
						<div style="font-weight: bold;padding-top: 5px;padding-bottom: 5px;">推荐热卖：</div>
						<#list item.superMenuProducts as pItem>
							<div style="margin-top: 5px;">
								&gt;<a title="${pItem.name}" target="_blank" href="${basepath}/product/${pItem.id}.html">
									${pItem.name}
								</a>
							</div>
						</#list>
					</div>
				</#if>
			</div>
		</div>
	</#list>
</div>