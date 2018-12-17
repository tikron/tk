<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/environment.jspf"%>
<c:set var="pageId" value="${param.pageId}" />
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${baseUrl}${jspPath}">Titus Kruse</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item<%-- active--%>"><a class="nav-link" href="/index.html#about">Über mich<%-- <span class="sr-only">(current)</span>--%></a></li>
				<li class="nav-item"><a class="nav-link" href="/index.html#skills">Qualifikation</a></li>
				<li class="nav-item"><a class="nav-link" href="/index.html#contact">Kontakt</a></li>
			</ul>
		</div>
	</div>
</nav>
