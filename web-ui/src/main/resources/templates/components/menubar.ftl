<#import "/libs/spring.ftl" as spring>
<div class="site-menubar">
	<div class="site-menubar-body">
		<div>
			<div>
				<ul class="site-menu">
					<li class="site-menu-item active">
						<a class="animsition-link" href="/statistic">
							<i class="site-menu-icon wb-graph-up" aria-hidden="true"></i>
							<span class="site-menu-title"><@spring.message 'page.statistic' /></span>
						</a>
					</li>
					<li class="site-menu-item">
					    <a class="animsition-link" href="/companies">
					        <i class="site-menu-icon wb-grid-9" aria-hidden="true"></i>
					        <span class="site-menu-title"><@spring.message 'page.companies' /></span>
					    </a>
					</li>
					<li class="site-menu-item">
					    <a class="animsition-link" href="/orders">
					        <i class="site-menu-icon wb-order" aria-hidden="true"></i>
					        <span class="site-menu-title"><@spring.message 'page.orders' /></span>
					    </a>
					</li>
					<li class="site-menu-item">
					    <a class="animsition-link" href="/barcode/track">
					        <i class="site-menu-icon wb-stats-bars" aria-hidden="true"></i>
					        <span class="site-menu-title"><@spring.message 'page.barcode.track' /></span>
					    </a>
					</li>
					<li class="site-menu-item">
					    <a class="animsition-link" href="/sys/permission">
					        <i class="site-menu-icon wb-stats-bars" aria-hidden="true"></i>
					        <span class="site-menu-title">权限</span>
					    </a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
