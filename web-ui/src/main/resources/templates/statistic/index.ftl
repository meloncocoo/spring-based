<#import "/spring.ftl" as spring>
<#import "/libs/layout.ftl" as layout>
<#assign styles=[
	'/global/vendor/c3/c3.css'
] />
<#assign scripts=[
	'/global/vendor/d3/d3.js',
	'/global/vendor/c3/c3.js',
	'/assets/site/js/statistic.js'
] />
<@layout.base title=springMacroRequestContext.getMessage('page.statistic') scripts=scripts styles=styles>

<div class="row">
	<div class="col-md-3">
          <!-- Widget -->
          <div class="widget">
            <div class="widget-content padding-30 bg-orange-600">
              <div class="widget-watermark darker font-size-60 margin-15"><i class="icon md-assignment" aria-hidden="true"></i></div>
              <div class="counter counter-md counter-inverse text-left">
                <div class="counter-number-group">
                  <span class="counter-number">137,343,160.83</span>
                  <span class="counter-number-related text-capitalize"></span>
                </div>
                <div class="counter-label text-capitalize"><@spring.message "statistic.quantity" /></div>
              </div>
            </div>
          </div>
          <!-- End Widget -->	
	</div>
	<div class="col-md-3">
          <!-- Widget -->
          <div class="widget">
            <div class="widget-content padding-30 bg-green-400">
              <div class="widget-watermark darker font-size-60 margin-15"><i class="icon md-assignment" aria-hidden="true"></i></div>
              <div class="counter counter-md counter-inverse text-left">
                <div class="counter-number-group">
                  <span class="counter-number">154,793,658.37</span>
                  <span class="counter-number-related text-capitalize"></span>
                </div>
                <div class="counter-label text-capitalize"><@spring.message "statistic.income" /></div>
              </div>
            </div>
          </div>
          <!-- End Widget -->	
	</div>
	<div class="col-md-3">
          <!-- Widget -->
          <div class="widget">
            <div class="widget-content padding-30 bg-blue-400">
              <div class="widget-watermark darker font-size-60 margin-15"><i class="icon md-assignment" aria-hidden="true"></i></div>
              <div class="counter counter-md counter-inverse text-left">
                <div class="counter-number-group">
                  <span class="counter-number"> 57,786,210.18</span>
                  <span class="counter-number-related text-capitalize"></span>
                </div>
                <div class="counter-label text-capitalize"><@spring.message "statistic.cost" /></div>
              </div>
            </div>
          </div>
          <!-- End Widget -->	
	</div>
	<div class="col-md-3">
          <!-- Widget -->
          <div class="widget">
            <div class="widget-content padding-30 bg-red-300">
              <div class="widget-watermark darker font-size-60 margin-15"><i class="icon wb-stats-bars" aria-hidden="true"></i></div>
              <div class="counter counter-md counter-inverse text-left">
                <div class="counter-number-group">
                  <span class="counter-number">62.67%</span>
                  <span class="counter-number-related text-capitalize"></span>
                </div>
                <div class="counter-label text-capitalize"><@spring.message "statistic.profit" /></div>
              </div>
            </div>
          </div>
          <!-- End Widget -->	
	</div>
</div>

<div class="panel">
	<div class="panel-body container-fluid">
		<div class="row" data-plugin="matchHeight" data-by-row="true">
			<div class="col-md-6">
				<h4>2015年期间汇总表</h4>
				<p>多期间汇总</p>
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
				<h4 class="text-center">2015年期间毛利率表</h4>
				<p class="text-center">多厂多期间毛利率</p>
				<div class="row">
					<div class="col-md-4">
						<h6 class="text-center" style="margin: 10px 0 0;">2010-2015.001</h6>
						<div id="profit01"></div>
					</div>
					<div class="col-md-4">
						<h6 class="text-center" style="margin: 10px 0 0;">2010-2015.002</h6>
						<div id="profit02"></div>
					</div>
					<div class="col-md-4">
						<h6 class="text-center" style="margin: 10px 0 0;">2010-2015.003</h6>
						<div id="profit03"></div>
					</div>
					<div class="col-md-4">
						<h6 class="text-center" style="margin: 10px 0 0;">2320-2015.001</h6>
						<div id="profit04"></div>
					</div>
					<div class="col-md-4">
						<h6 class="text-center" style="margin: 10px 0 0;">2320-2015.002</h6>
						<div id="profit05"></div>
					</div>
					<div class="col-md-4">
						<h6 class="text-center" style="margin: 10px 0 0;">2320-2015.003</h6>
						<div id="profit06"></div>
					</div>
				</div>
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

<div class="panel">
	<div class="panel-body container-fluid">
		<div class="row" data-plugin="matchHeight" data-by-row="true">
			<div class="col-md-4">
				<div style="height: 300px;" id="donut01"></div>
			</div>
			<div class="col-md-4">
				<div style="height: 300px;" id="donut02"></div>
			</div>
			<div class="col-md-4">
				<div style="height: 300px;" id="donut03"></div>
			</div>
		</div>
	</div>
</div>

</@layout.base>
