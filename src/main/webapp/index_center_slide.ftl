<div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li style="background-color:#888" data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li style="background-color:#888" data-target="#myCarousel" data-slide-to="1"></li>
		<li style="background-color:#888" data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">	
		<#list systemManager().indexImages as item>
		
		<#if item_index=0>
			<div class="item active">
		<#else>
			<div class="item">
		</#if>
			<#if item.link??>
				<a href="${item.link!""}" target="_blank">
				<img style="max-width: 100%;"src="${systemSetting().imageRootPath}/${item.picture!""}" >
				</a>
			</#if>
			</div>
		</#list>					
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a style="background-color:#888" class="carousel-control left" href="#myCarousel" 
	   data-slide="prev">&lsaquo;</a>
	<a style="background-color:#888" class="carousel-control right" href="#myCarousel" 
	   data-slide="next">&rsaquo;</a>
</div> 

  <script type="text/javascript">
   new Tab('.J_tab',{auto:false});
   new Slide('#slideBox',{index: 1 ,effect:'slide', firstDelay:8});
  </script>
