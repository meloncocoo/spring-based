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
	<form method="post" action="/statistic" autocomplete="off">
		<div class="form-group form-material floating">
			<input type="email" class="form-control empty" id="inputEmail" name="email"> <label class="floating-label" for="inputEmail"><@spring.message "account.email.label" /></label>
		</div>
		<div class="form-group form-material floating">
			<input type="password" class="form-control empty" id="inputPassword" name="password"> <label class="floating-label" for="inputPassword"><@spring.message "account.password.label" /></label>
		</div>
		<div class="form-group clearfix">
			<div class="checkbox-custom checkbox-inline checkbox-primary pull-left">
				<input type="checkbox" id="remember" name="checkbox"> <label for="inputCheckbox"><@spring.message "account.rememberMe.label" /></label>
			</div>
			<a class="pull-right" href="javascript:;"><@spring.message "account.forget.label" /></a>
		</div>
		<button type="submit" class="btn btn-primary btn-block"><@spring.message "button.login.label" /></button>
	</form>
	<footer class="page-copyright">
		<p>WEBSITE BY ichangeman</p>
		<p>© 2016. All RIGHT RESERVED.</p>
		<div class="social hide">
			<a class="btn btn-icon btn-round social-twitter" href="javascript:void(0)"> <i class="icon bd-twitter" aria-hidden="true"></i>
			</a> <a class="btn btn-icon btn-round social-facebook" href="javascript:void(0)"> <i class="icon bd-facebook" aria-hidden="true"></i>
			</a> <a class="btn btn-icon btn-round social-google-plus" href="javascript:void(0)"> <i class="icon bd-google-plus" aria-hidden="true"></i>
			</a>
		</div>
	</footer>
</div>
</@layout.account>