<#import "/spring.ftl" as spring>
<#import "/libs/layout.ftl" as layout>
<#assign styles=[
	'assets/vendor/morris-js/morris.css'
] />
<#assign scripts=[
	'assets/vendor/flot/jquery.flot.js',
	'assets/vendor/flot/jquery.flot.resize.js',
	'assets/vendor/flot/jquery.flot.stack.js',
	'assets/vendor/flot/jquery.flot.pie.js',
	'assets/vendor/raphael/raphael.js',
	'assets/vendor/morris-js/morris.js',
	'assets/statistic/js/core.js'
] />
<@layout.base title="这里是标题" scripts=scripts>
<div class="panel">
	<div class="panel-title" style="padding-bottom: 0px;">
		<span>2015年期间汇总表</span>
	</div>
	<div class="panel-body container-fluid">
		<div class="row" data-plugin="matchHeight" data-by-row="true">
			<div class="col-md-6">
				<table class="table table-hover">
					<thead>
						<tr>
							<th><@spring.message "statistic.quarter" /></th>
							<th><@spring.message "statistic.quantity" /></th>
							<th><@spring.message "statistic.income" /></th>
							<th><@spring.message "statistic.cost" /></th>
							<th><@spring.message "statistic.profit" /></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>001</td>
							<td>56272153.47</td>
							<td>65181677.18</td>
							<td>24561400.42</td>
							<td>62.32%</td>
						</tr>
						<tr>
							<td>002</td>
							<td>56272153.47</td>
							<td>65181677.18</td>
							<td>24561400.42</td>
							<td>62.32%</td>
						</tr>
						<tr>
							<td>003</td>
							<td>56272153.47</td>
							<td>65181677.18</td>
							<td>24561400.42</td>
							<td>62.32%</td>
						</tr>
						<tr>
							<td>004</td>
							<td class="text-center">-</td>
							<td class="text-center">-</td>
							<td class="text-center">-</td>
							<td class="text-center">-</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<div class="panel">
	<div class="panel-body container-fluid">
		<div class="row" data-plugin="matchHeight" data-by-row="true">
			<div class="col-md-6">
				<div style="height: 300px;" id="exampleFlotMix"></div>
			</div>
			
			<div class="col-md-6">
				<div id="exampleMorrisDonut"></div>
			</div>
		</div>
	</div>
</div>
</@layout.base>