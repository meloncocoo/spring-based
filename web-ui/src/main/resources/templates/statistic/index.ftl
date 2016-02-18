<#import "/spring.ftl" as spring>
<#import "/libs/layout.ftl" as layout>
<#assign styles=[
	'/assets/vendor/c3/c3.css'
] />
<#assign scripts=[
	'assets/vendor/d3/d3.js',
	'assets/vendor/c3/c3.js',
	'assets/statistic/js/core.js'
] />
<@layout.base title="这里是标题" scripts=scripts styles=styles>
<div class="panel">
	<div class="panel-body container-fluid">
		<div class="row" data-plugin="matchHeight" data-by-row="true">
			<div class="col-md-6">
				<h4>2015年期间汇总表</h4>
				<p>多厂多期间汇总</p>
				<div class="table-responsive">
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
						<#list sales![] as sale>
							<tr>
								<td class="text-right">${sale.quarter}</td>
								<td class="text-right">${sale.quantity}</td>
								<td class="text-right">${sale.income}</td>
								<td class="text-right">${sale.cost}</td>
								<td class="text-right"><span class="label label-table label-<#if (sale.profit > 0)>success<#else>danger</#if>">${sale.profit?string("#0.00%")}</span></td>
							</tr>
						</#list>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-md-6">
				<div id="exampleC3Donut"></div>
			</div>
		</div>
	</div>
</div>

<div class="panel">
	<div class="panel-body container-fluid">
		<div class="row" data-plugin="matchHeight" data-by-row="true">
			<div class="col-md-12">
				<div style="height: 300px;" id="chart"></div>
			</div>
		</div>
	</div>
</div>
</@layout.base>
