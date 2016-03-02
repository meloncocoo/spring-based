<#import "/libs/layout.ftl" as layout>
<#import "/libs/spring.ftl" as spring>
<#assign styles=[
	'/global/vendor/c3/c3.css'
] />
<#assign scripts=[
	'/global/vendor/d3/d3.js',
	'/global/vendor/c3/c3.js',
	'/assets/site/js/company.js'
] />
<@layout.base title=springMacroRequestContext.getMessage("page.companies") styles=styles scripts=scripts>
<div class="row row-lg">
	<div class="col-md-7">
		<div class="panel">
			<div class="panel-body container-fluid">
				<div class="chart-panel-header" style="position: relative;">
	                <h4>销售数量</h4>
	                <div class="text-right" style="position: absolute; top: 0; right: 0;">
	                	<div class="btn-group" role="group">
							<button id="quantity" type="button" class="btn btn-xs btn-warning waves-effect waves-light"><@spring.message "company.quantity" /></button>
							<button id="income" type="button" class="btn btn-xs btn-danger waves-effect waves-light"><@spring.message "company.income" /></button>
							<button id="cost" type="button" class="btn btn-xs btn-success waves-effect waves-light"><@spring.message "company.cost" /></button>
						</div>
	                </div>
                </div>
				<div id="companies-bar"></div>
			</div>
		</div>
	</div>
	<div class="col-md-5">
		<div class="panel">
			<div class="panel-body container-fluid">
				<div class="table-responsive">
					<table class="table table-condensed table-hover">
						<thead>
							<tr>
								<th class="visible-lg">#</th>
								<th><@spring.message "company.code" /></th>
								<th><@spring.message "company.name" /></th>
							</tr>
						</thead>
						<tbody>
						<#list companies as company>
							<tr>
								<td class="visible-lg">${company?index + 1}</td>
								<td>${company.getCode()}</td>
								<td>${company.getName()}</td>
							</tr>
						</#list>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
</@layout.base>