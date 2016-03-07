<#import "/libs/layout.ftl" as layout>
<#import "/libs/components.ftl" as components>
<@layout.base title="Permission">
	<@components.panel title="Permission">
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
	</@components.panel>
</@layout.base>