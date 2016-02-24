<#import "/libs/layout.ftl" as layout>
<#import "/libs/spring.ftl" as spring>
<@layout.account title="Login">
<div class="page-login-main">
	<div class="brand visible-xs">
		<img class="brand-img" src="/assets/images/logo.png" alt="...">
		<h3 class="brand-text font-size-40"><@spring.message "site.title" /></h3>
	</div>
	<h3 class="font-size-24">Sign In</h3>
	<p>Please input your email address and password to login system.</p>
	<form method="post" action="login-v2.html" autocomplete="off">
		<div class="form-group form-material floating">
			<input type="email" class="form-control empty" id="inputEmail" name="email"> <label class="floating-label" for="inputEmail">Email</label>
		</div>
		<div class="form-group form-material floating">
			<input type="password" class="form-control empty" id="inputPassword" name="password"> <label class="floating-label" for="inputPassword">Password</label>
		</div>
		<div class="form-group clearfix">
			<div class="checkbox-custom checkbox-inline checkbox-primary pull-left">
				<input type="checkbox" id="remember" name="checkbox"> <label for="inputCheckbox">Remember me</label>
			</div>
			<a class="pull-right" href="forgot-password.html">Forgot password?</a>
		</div>
		<a href="/statistic" class="btn btn-primary btn-block">Sign in</a>
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