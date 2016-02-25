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