<#import "/libs/spring.ftl" as spring>
<#macro page_header title="">
<div class="page-header">
	<h1 class="page-title">${title}</h1>
	<div class="page-header-actions visible-md visible-lg">
		<ol class="breadcrumb">
			<li><a href="/"><@spring.message 'page.home' /></a></li>
			<li class="active">${title}</li>
		</ol>
	</div>
</div>
</#macro>
<#macro panel title="" attributes="">
<div class="panel">
	<div class="panel-heading">
		<h3 class="panel-title">${title}</h3>
		<div class="panel-actions">
			<a class="panel-action icon md-plus"></a>
			<a class="panel-action icon md-minus"></a>
			<a class="panel-action icon md-refresh-alt"></a>
		</div>
	</div>
	<div class="panel-body">
		<#nested>
	</div>
</div>
</#macro>