<#import "/libs/spring.ftl" as spring>
<#macro page_header title="" actions=[]>
<div class="page-header">
	<ol class="breadcrumb">
		<li><a href="/"><@spring.message 'page.home' /></a></li>
		<li class="active">${title}</li>
	</ol>
	<h1 class="page-title">${title}</h1>
	<div class="page-header-actions">
	<#list actions as action>
		<a href="${action['href']!'javascript:;'}" class="btn btn-sm btn-icon btn-primary btn-round" data-toggle="tooltip" data-original-title="${action['label']!''}">
			<i class="icon ${action['icon']!''}" aria-hidden="true"></i>
		</a>
	</#list>
	</div>
</div>
</#macro>
<#macro panel title="" attributes="">
<div class="panel">
	<div class="panel-heading">
		<h3 class="panel-title">${title}</h3>
		<div class="panel-actions hide">
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