<#import "/spring.ftl" as spring>
<#import "/libs/components.ftl" as component>
<#macro base title styles=[] scripts=[]>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <meta name="description" content="bootstrap admin template">
  <meta name="author" content="">
  <title>${title} | <@spring.message "site.title" /></title>
  <link rel="apple-touch-icon" href="../../assets/images/apple-touch-icon.png">
  <link rel="shortcut icon" href="../../assets/images/favicon.ico">
  <!-- Stylesheets -->
  <link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="../../assets/css/bootstrap-extend.min.css">
  <link rel="stylesheet" href="../../assets/css/site.min.css">
  <!-- Plugins -->
  <link rel="stylesheet" href="../../assets/vendor/animsition/animsition.css">
  <link rel="stylesheet" href="../../assets/vendor/asscrollable/asScrollable.css">
  <link rel="stylesheet" href="../../assets/vendor/switchery/switchery.css">
  <link rel="stylesheet" href="../../assets/vendor/intro-js/introjs.css">
  <link rel="stylesheet" href="../../assets/vendor/slidepanel/slidePanel.css">
  <link rel="stylesheet" href="../../assets/vendor/jquery-mmenu/jquery-mmenu.css">
  <link rel="stylesheet" href="../../assets/vendor/flag-icon-css/flag-icon.css">
  <link rel="stylesheet" href="../../assets/vendor/waves/waves.css">
  <#list styles as style>
  <link rel="stylesheet" href="${style}">
  </#list>
  <!-- Fonts -->
  <link rel="stylesheet" href="../../assets/fonts/material-design/material-design.min.css">
  <link rel="stylesheet" href="../../assets/fonts/brand-icons/brand-icons.min.css">
  <link rel="stylesheet" href="../../assets/fonts/web-icons/web-icons.css">
  
  <!--[if lt IE 9]>
    <script src="../../assets/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->
  <!--[if lt IE 10]>
    <script src="../../assets/vendor/media-match/media.match.min.js"></script>
    <script src="../../assets/vendor/respond/respond.min.js"></script>
    <![endif]-->
  <!-- Scripts -->
  <script src="../../assets/vendor/modernizr/modernizr.js"></script>
  <script src="../../assets/vendor/breakpoints/breakpoints.js"></script>
  <script>
  Breakpoints();
  </script>
</head>
<body class="site-navbar-small ">
	<#include "/components/header.ftl" />
	<#include "/components/menubar.ftl" />

	<div class="page animation-fade">
		<@component.page_header title=title/>
		<div class="page-content container-fluid">
			<#nested>
		</div>
	</div>
	
	<@footer />
  <!-- Core  -->
  <script src="../../assets/vendor/jquery/jquery.js"></script>
  <script src="../../assets/vendor/bootstrap/bootstrap.js"></script>
  <script src="../../assets/vendor/animsition/animsition.js"></script>
  <script src="../../assets/vendor/asscroll/jquery-asScroll.js"></script>
  <script src="../../assets/vendor/mousewheel/jquery.mousewheel.js"></script>
  <script src="../../assets/vendor/asscrollable/jquery.asScrollable.all.js"></script>
  <script src="../../assets/vendor/ashoverscroll/jquery-asHoverScroll.js"></script>
  <script src="../../assets/vendor/waves/waves.js"></script>
  <!-- Plugins -->
  <script src="../../assets/vendor/jquery-mmenu/jquery.mmenu.min.all.js"></script>
  <script src="../../assets/vendor/switchery/switchery.min.js"></script>
  <script src="../../assets/vendor/intro-js/intro.js"></script>
  <script src="../../assets/vendor/screenfull/screenfull.js"></script>
  <script src="../../assets/vendor/slidepanel/jquery-slidePanel.js"></script>
  <!-- Scripts -->
  <script src="../../assets/js/core.js"></script>
  <script src="../../assets/js/site.js"></script>
  <script src="../../assets/js/sections/menu.js"></script>
  <script src="../../assets/js/sections/menubar.js"></script>
  <script src="../../assets/js/sections/gridmenu.js"></script>
  <script src="../../assets/js/sections/sidebar.js"></script>
  <script src="../../assets/js/configs/config-colors.js"></script>
  <script src="../../assets/js/configs/config-tour.js"></script>
  <script src="../../assets/js/components/asscrollable.js"></script>
  <script src="../../assets/js/components/animsition.js"></script>
  <script src="../../assets/js/components/slidepanel.js"></script>
  <script src="../../assets/js/components/switchery.js"></script>
  <script src="../../assets/js/components/tabs.js"></script>
  <script src="../../assets/js/components/ajax.js"></script>
  <#list scripts as script>
  <script src="${script}"></script>
  </#list>
  <script>
  (function(document, window, $) {
    'use strict';
    var Site = window.Site;
    $(document).ready(function() {
      Site.run();
    });
  })(document, window, jQuery);
  </script>
</body>
</html>
</#macro>
<#macro account title>
<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="description" content="bootstrap admin template">
<meta name="author" content="">
<title>${title} | <@spring.message "site.title" /></title>
<link rel="apple-touch-icon" href="../../assets/images/apple-touch-icon.png">
<link rel="shortcut icon" href="../../assets/images/favicon.ico">
<!-- Stylesheets -->
<link rel="stylesheet" href="../../assets/css/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/css/bootstrap-extend.min.css">
<link rel="stylesheet" href="../../assets/css/site.min.css">
<!-- Plugins -->
<link rel="stylesheet" href="../../assets/vendor/animsition/animsition.css">
<link rel="stylesheet" href="../../assets/vendor/asscrollable/asScrollable.css">
<link rel="stylesheet" href="../../assets/vendor/switchery/switchery.css">
<link rel="stylesheet" href="../../assets/vendor/intro-js/introjs.css">
<link rel="stylesheet" href="../../assets/vendor/slidepanel/slidePanel.css">
<link rel="stylesheet" href="../../assets/vendor/flag-icon-css/flag-icon.css">
<link rel="stylesheet" href="../../assets/vendor/waves/waves.css">
<link rel="stylesheet" href="../../assets/examples/css/pages/login-v2.css">
<!-- Fonts -->
<link rel="stylesheet" href="../../assets/fonts/material-design/material-design.min.css">
<link rel="stylesheet" href="../../assets/fonts/brand-icons/brand-icons.min.css">
<!-- <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,300italic'> -->
<!--[if lt IE 9]>
    <script src="../../assets/vendor/html5shiv/html5shiv.min.js"></script>
    <![endif]-->
<!--[if lt IE 10]>
    <script src="../../assets/vendor/media-match/media.match.min.js"></script>
    <script src="../../assets/vendor/respond/respond.min.js"></script>
    <![endif]-->
<!-- Scripts -->
<script src="../../assets/vendor/modernizr/modernizr.js"></script>
<script src="../../assets/vendor/breakpoints/breakpoints.js"></script>
<script>
	Breakpoints();
</script>
</head>
<body class="page-login-v2 layout-full page-dark">
	<div class="page animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
		<div class="page-content">
			<div class="page-brand-info">
				<div class="brand">
					<img class="brand-img" src="../../assets/images/logo@2x.png" alt="...">
					<h2 class="brand-text font-size-40">Remark</h2>
				</div>
				<p class="font-size-20">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
			<#nested>
		</div>
	</div>
	<!-- Core  -->
	<script src="../../assets/vendor/jquery/jquery.js"></script>
	<script src="../../assets/vendor/bootstrap/bootstrap.js"></script>
	<script src="../../assets/vendor/animsition/animsition.js"></script>
	<script src="../../assets/vendor/asscroll/jquery-asScroll.js"></script>
	<script src="../../assets/vendor/mousewheel/jquery.mousewheel.js"></script>
	<script src="../../assets/vendor/asscrollable/jquery.asScrollable.all.js"></script>
	<script src="../../assets/vendor/ashoverscroll/jquery-asHoverScroll.js"></script>
	<script src="../../assets/vendor/waves/waves.js"></script>
	<!-- Plugins -->
	<script src="../../assets/vendor/switchery/switchery.min.js"></script>
	<script src="../../assets/vendor/intro-js/intro.js"></script>
	<script src="../../assets/vendor/screenfull/screenfull.js"></script>
	<script src="../../assets/vendor/slidepanel/jquery-slidePanel.js"></script>
	<script src="../../assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>
	<!-- Scripts -->
	<script src="../../assets/js/core.js"></script>
	<script src="../../assets/js/site.js"></script>
	<script src="../../assets/js/sections/menu.js"></script>
	<script src="../../assets/js/sections/menubar.js"></script>
	<script src="../../assets/js/sections/gridmenu.js"></script>
	<script src="../../assets/js/sections/sidebar.js"></script>
	<script src="../../assets/js/configs/config-colors.js"></script>
	<script src="../../assets/js/configs/config-tour.js"></script>
	<script src="../../assets/js/components/asscrollable.js"></script>
	<script src="../../assets/js/components/animsition.js"></script>
	<script src="../../assets/js/components/slidepanel.js"></script>
	<script src="../../assets/js/components/switchery.js"></script>
	<script src="../../assets/js/components/tabs.js"></script>
	<script src="../../assets/js/components/jquery-placeholder.js"></script>
	<script src="../../assets/js/components/material.js"></script>
	<script>
		(function(document, window, $) {
			'use strict';
			var Site = window.Site;
			$(document).ready(function() {
				Site.run();
			});
		})(document, window, jQuery);
	</script>
</body>
</html>
</#macro>
<#macro footer>
<!-- Footer -->
<footer class="site-footer">
	<div class="site-footer-legal">
		© 2016 <a href="javascript:;"><@spring.message "site.title" /></a>
	</div>
	<div class="site-footer-right">
		Crafted with <i class="red-600 icon md-favorite"></i> by <a href="javascript:;">Melon Cocoo</a>
	</div>
</footer>
<!-- Footer End -->
</#macro>
