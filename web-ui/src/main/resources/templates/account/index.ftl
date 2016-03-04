<#import "/libs/layout.ftl" as layout>
<#import "/libs/spring.ftl" as spring>
<@layout.account title=springMacroRequestContext.getMessage('page.login')>
<div class="page-login-main">
	<div class="brand visible-xs">
		<img class="brand-img" src="/assets/images/logo.png" alt="...">
		<h3 class="brand-text font-size-30"><@spring.message "site.title" /></h3>
	</div>
	<h3 class="font-size-24"><@spring.message "account.login.title" /></h3>
	<p><@spring.message "account.login.tip" /></p>
	<#if error??>
	<div class="alert alert-danger margin-bottom-5 margin-top-15">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<span>${msg}</span>
	</div>
	<#elseif msg??>
	<div class="alert alert-success margin-bottom-5 margin-top-15">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<span>${msg}</span>
	</div>
	</#if>
	<form method="post" action="/login" autocomplete="off">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<div class="form-group form-material floating">
			<input type="text" class="form-control empty" id="username" name="username"> <label class="floating-label" for="username"><@spring.message "account.username.label" /></label>
		</div>
		<div class="form-group form-material floating">
			<input type="password" class="form-control empty" id="inputPassword" name="password"> <label class="floating-label" for="inputPassword"><@spring.message "account.password.label" /></label>
		</div>
		<div class="form-group clearfix">
			<div class="checkbox-custom checkbox-inline checkbox-primary pull-left">
				<input type="checkbox" id="remember" name="remember"> <label for="remember"><@spring.message "account.rememberMe.label" /></label>
			</div>
			<a class="pull-right" href="javascript:;"><@spring.message "account.forget.label" /></a>
		</div>
		<button type="submit" class="btn btn-primary btn-block"><@spring.message "button.login.label" /></button>
	</form>
	<@layout.shortFooter />
</div>
</@layout.account>