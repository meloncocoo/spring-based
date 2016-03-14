<#import "/libs/spring.ftl" as spring>
<#macro page_header title="">
<div class="page-header">
	<ol class="breadcrumb">
		<li><a href="/"><@spring.message 'page.home' /></a></li>
		<li class="active">${title}</li>
	</ol>
	<h1 class="page-title">${title}</h1>
	<div class="page-header-actions">
		<button type="button" class="btn btn-sm btn-icon btn-primary btn-round" data-toggle="tooltip" data-original-title="Edit">
			<i class="icon md-edit" aria-hidden="true"></i>
		</button>
		<button type="button" class="btn btn-sm btn-icon btn-primary btn-round" data-toggle="tooltip" data-original-title="Refresh">
			<i class="icon md-refresh-alt" aria-hidden="true"></i>
		</button>
		<button type="button" class="btn btn-sm btn-icon btn-primary btn-round" data-toggle="tooltip" data-original-title="Setting">
			<i class="icon md-settings" aria-hidden="true"></i>
		</button>
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