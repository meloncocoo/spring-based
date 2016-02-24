<#import "/libs/layout.ftl" as layout>
<#import "/libs/spring.ftl" as spring>
<@layout.base title=springMacroRequestContext.getMessage('page.orders')>
<div class="panel">
	<div class="panel-body container-fluid">
		<div class="row row-lg">
			<div class="col-md-12">
				<div class="table-responsive">
					<table class="table table-condensed table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th><@spring.message "order.yearQuarter" /></th>
								<th><@spring.message "order.sOrg" /></th>
								<th><@spring.message "order.code" /></th>
								<th><@spring.message "order.refCode" /></th>
								<th><@spring.message "order.amountType" /></th>
								<th><@spring.message "order.product" /></th>
								<th><@spring.message "order.productLevel" /></th>
								<th><@spring.message "order.quantity" /></th>
								<th><@spring.message "order.unit" /></th>
								<th><@spring.message "order.scope" /></th>
								<th><@spring.message "order.customer" /></th>
								<th><@spring.message "order.currency" /></th>
								<th><@spring.message "order.price" /></th>
								<th><@spring.message "order.income" /></th>
								<th><@spring.message "order.cost" /></th>
							</tr>
						</thead>
						<tbody>
						<#list orders as order>
							<tr>
								<td>1</td>
								<td>${order.getYear()?string("0000")}.${order.getQuarter()?string("000")}</td>
								<td>${order.getOrganize()}</td>
								<td>${order.getCode()}</td>
								<td>${order.getRefCode()}</td>
								<td>${order.getAmountType()}</td>
								<td>${order.getProduct()}</td>
								<td>${order.getProductLevel()}</td>
								<td>${order.getQuantity()}</td>
								<td>${order.getUnit()}</td>
								<td>${order.getScope()}</td>
								<td>${order.getCustomer()}</td>
								<td>${order.getCurrency()}</td>
								<td class="text-right"><span class="label table-label label-${(order.getPrice() > 0)?then('info', 'danger')}">${order.getPrice()?string("#,###,##0.00")}</lable></td>
								<td class="text-right"><span class="label table-label label-${(order.getIncome() > 0)?then('info', 'danger')}">${order.getIncome()?string("#,###,##0.00")}</lable></td>
								<td class="text-right"><span class="label table-label label-${(order.getCost() > 0)?then('info', 'danger')}">${order.getCost()?string("#,###,##0.00")}</lable></td>
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