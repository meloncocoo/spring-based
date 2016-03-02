<#import "/spring.ftl" as spring>
<nav class="site-navbar navbar navbar-default navbar-fixed-top navbar-mega" role="navigation">
	<div class="navbar-header">
	      <button type="button" class="navbar-toggle hamburger hamburger-close navbar-toggle-left hided"
      data-toggle="menubar">
        <span class="sr-only">Toggle navigation</span>
        <span class="hamburger-bar"></span>
      </button>
      <button type="button" class="navbar-toggle collapsed" data-target="#site-navbar-collapse"
      data-toggle="collapse">
        <i class="icon md-more" aria-hidden="true"></i>
      </button>
		<div class="navbar-brand navbar-brand-center site-gridmenu-toggle" data-toggle="gridmenu">
			<img class="navbar-brand-logo" src="/assets/images/logo.png" title="<@spring.message "site.title" />">
			<span class="navbar-brand-text"> <@spring.message "site.title" /> </span>
		</div>
	</div>
	<div class="navbar-container container-fluid">
		<div class="collapse navbar-collapse navbar-collapse-toolbar" id="site-navbar-collapse">
			<ul class="nav navbar-toolbar">
				<li class="hidden-float" id="toggleMenubar">
					<a data-toggle="menubar" href="#" role="button">
						<i class="icon hamburger hamburger-arrow-left">
							<span class="sr-only">Toggle menubar</span>
							<span class="hamburger-bar"></span>
						</i>
					</a>
				</li>
				<li class="hidden-xs" id="toggleFullscreen">
					<a class="icon icon-fullscreen" data-toggle="fullscreen" href="#" role="button">
						<span class="sr-only">Toggle fullscreen</span>
					</a>
				</li>
			</ul>
			<ul class="nav navbar-toolbar navbar-right navbar-toolbar-right">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)" data-animation="scale-up" aria-expanded="false" role="button">
						<span class="flag-icon <#if (springMacroRequestContext.getLocale() == 'en')>flag-icon-us<#else>flag-icon-cn</#if>"></span>
					</a>
					<ul class="dropdown-menu" role="menu">
						<li role="presentation">
							<a href="/api/language?lang=en" data-plugin="ajax" class="change-language" role="menuitem"><span class="flag-icon flag-icon-us"></span> English</a>
						</li>
						<li role="presentation">
							<a href="/api/language?lang=zh_CN" data-plugin="ajax" class="change-language" role="menuitem"><span class="flag-icon flag-icon-cn"></span> Chinese</a>
						</li>
					</ul>
				</li>
				<li class="dropdown">
					<a class="navbar-avatar dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" data-animation="scale-up" role="button">
						<span class="avatar avatar-online">
							<img src="/assets/images/portraits/5.jpg" alt="...">
							<i></i>
						</span>
					</a>
					<ul class="dropdown-menu" role="menu">
						<li role="presentation">
							<a href="javascript:void(0)" role="menuitem"><i class="icon md-account" aria-hidden="true"></i> 个人信息</a>
						</li>
						<li role="presentation">
							<a href="javascript:void(0)" role="menuitem"><i class="icon md-settings" aria-hidden="true"></i> 系统设置</a>
						</li>
						<li class="divider" role="presentation"></li>
						<li role="presentation">
							<a href="/account/login" role="menuitem"><i class="icon md-power" aria-hidden="true"></i> 注销</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</nav>
