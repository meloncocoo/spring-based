<#import "/libs/layout.ftl" as layout>
<#import "/libs/components.ftl" as components>
<#assign scripts=[
	'/global/js/components/panel.js',
	'/global/js/components/loader.js',
	'/assets/site/js/permission.js'
] />
<#assign actions=[
	{ "label": "Add", "icon": "md-plus", "attrs": 'data-plugin="ajax" data-target=""' },
	{ "label": "Edit", "icon": "md-edit" },
	{ "label": "Refresh", "icon": "md-refresh" }
] />
<@layout.base title="Permission" actions=actions scripts=scripts>
	<@components.panel title="Permission" actions=[
		{ "icon": "md-plus", "attrs": 'data-toggle="panel-refresh" data-load-callback="addPermission"' },
		{ "icon": "md-minus", "attrs": ' data-toggle="panel-collapse" aria-hidden="true"' },
		{ "icon": "md-refresh-alt", "attrs": 'data-toggle="panel-refresh" data-load-callback="customRefreshCallback"' }
	]>
		<div class="">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>类别</th>
						<th>标签</th>
						<th>描述</th>
						<th>行为</th>
					</tr>
				</thead>
				<tbody>
				<#list permissions as permission>
					<tr>
						<td>1</td>
						<td><span class="label table-label label-success">${permission.getType()}</span></td>
						<td>${permission.getLabel()}</td>
						<td>${permission.getDescription()!}</td>
						<td>${permission.getAction()}</td>
					</tr>
				</#list>
				</tbody>
			</table>
		</div>
		<a href="/sys/permission/add" data-plugin="loader" data-load-holder=".page-content.container-fluid">Add</a>
	</@components.panel>
</@layout.base>