<#import "/libs/spring.ftl" as spring>
<div class="site-menubar">
	<div class="site-menubar-body">
		<div>
			<div>
				<ul class="site-menu">
					<li class="site-menu-item active">
						<a class="animsition-link" href="statistic">
							<i class="site-menu-icon wb-stats-bars" aria-hidden="true"></i>
							<span class="site-menu-title"><@spring.message 'page.statistic' /></span>
						</a>
					</li>
					<li class="site-menu-item">
					    <a class="animsition-link" href="companies">
					        <i class="site-menu-icon wb-home" aria-hidden="true"></i>
					        <span class="site-menu-title">公司</span>
					    </a>
					</li>
					<li class="site-menu-item">
					    <a class="animsition-link" href="orders">
					        <i class="site-menu-icon wb-order" aria-hidden="true"></i>
					        <span class="site-menu-title">销售订单</span>
					    </a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
