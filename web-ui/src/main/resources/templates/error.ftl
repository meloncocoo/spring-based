<#import "/libs/spring.ftl" as spring>
<#import "/libs/layout.ftl" as layout>
<@layout.error title="Error">
<div class="page-content vertical-align-middle">
	<header>
		<h1 class="animation-slide-top">${status}</h1>
		<p>${error}</p>
	</header>
	<p>
		<a href="#detail-error" role="button" data-toggle="collapse" aria-expanded="false" aria-controls="detail-error">Detail</a>
	</p>
	<p id="detail-error" class="error-advise collapse">${path} - ${message}</p>
	<a class="btn btn-primary btn-round" href="/">GO TO HOME PAGE</a>
	<footer class="page-copyright">
		<p>WEBSITE BY <@spring.message "site.createdBy" /></p>
		<p>© 2016. All RIGHT RESERVED.</p>
	</footer>
</div>
</@layout.error>
