<#import "/libs/layout.ftl" as layout>
<#import "/libs/spring.ftl" as spring>
<#assign styles=[
	'assets/vendor/c3/c3.css'
] />
<#assign scripts=[
	'assets/vendor/d3/d3.js',
	'assets/vendor/c3/c3.js',
	'assets/companies/js/core.js'
] />
<@layout.base title=springMacroRequestContext.getMessage("page.companies") styles=styles scripts=scripts>
<div class="row row-lg">
	<div class="col-md-8">
		<div class="panel">
			<div class="panel-body container-fluid">
				<div class="chart-panel-header" style="position: relative;">
	                <h4>销售数量</h4>
	                <p>多公司期间汇总</p>
	                <div style="position: absolute; top: 50%; right: 0px; margin: auto; transform: translateY(-50%);">
	                	<div class="btn-group" role="group">
							<button id="quantity" type="button" class="btn btn-warning waves-effect waves-light"><i class="icon md-edit" aria-hidden="true"></i>数量</button>
							<button id="income" type="button" class="btn btn-danger waves-effect waves-light"><i class="icon md-mail-reply" aria-hidden="true"></i>收入</button>
							<button id="cost" type="button" class="btn btn-success waves-effect waves-light"><i class="icon md-share" aria-hidden="true"></i>成本</button>
						</div>
	                </div>
                </div>
				<div id="companies-bar"></div>
			</div>
		</div>
	</div>
	<div class="col-md-4">
		<div class="panel">
			<div class="panel-body container-fluid">
				<div class="table-responsive">
					<table class="table table-condensed table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th><@spring.message "company.code" /></th>
								<th><@spring.message "company.name" /></th>
							</tr>
						</thead>
						<tbody>
						<#list companies as company>
							<tr>
								<td>${company?index + 1}</td>
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