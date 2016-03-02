<#import "/libs/layout.ftl" as layout>
<#import "/libs/spring.ftl" as spring>
<@layout.base title=springMacroRequestContext.getMessage("page.barcode.track")>
<div class="row row-lg">
	<div class="col-md-6">
		<div class="panel">
			<div class="panel-body container-fluid">
				<div class="table-responsive">
					<table class="table table-bordered">
						<tbody>
							<tr>
								<td>客戶名稱</td>
								<td colspan="3">常州普利司通自行車有限公司</td>
								<td>品名</td>
								<td>鏈條</td>
							</tr>
							<tr>
								<td>訂單號碼</td>
								<td colspan="3">1601816175--4500180</td>
								<td>零件編號</td>
								<td></td>
							</tr>
							<tr>
								<td>規格</td>
								<td colspan="3">410/RB/92L/PPO</td>
								<td>結尾方式</td>
								<td>PPO</td>
							</tr>
							<tr>
								<td>配件數量</td>
								<td>50P</td>
								<td>總數量</td>
								<td>50 P</td>
								<td>總件數</td>
								<td>24 C</td>
							</tr>
							<tr>
								<td>送貨日期</td>
								<td colspan="2">2016.02.29</td>
								<td colspan="3">超匯桂盟傳動（蘇州）有限公司</td>
							</tr>
							<tr>
								<td colspan="6" class="text-center"><img src="/assets/site/images/barcode.png" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="panel">
			<div class="panel-body container-fluid">

			</div>
		</div>
	</div>
</div>
</@layout.base>