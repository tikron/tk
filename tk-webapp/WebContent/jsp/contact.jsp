<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="include/doctype.jspf"%>
<%@ include file="include/environment.jspf"%>
<c:set var="pageId" value="contact" />
<html lang="de">
	<head>
		<%@ include file="include/head.jspf"%>
	</head>
	<body>
		<div id="container">
			<div id="wrap">
				<%@ include file="include/header.jspf"%>
				<%@ include file="include/top-nav.jspf"%>
				<section id="main" class="${pageId}">
					<h1>Kontakt</h1>
					<p>Falls Sie per E-Mail Kontakt zu mir aufnehmen möchten, können Sie folgende E-Mail-Adresse verwenden:</p>
					<a id="email_link" href="#"></a>
					<%--
					<form id="contactMessage" action="/webapp/sendContactMessage.html" method="post">
						<dl>
							<dt><label for="name" id="nameLabel">Name *:</label></dt>
							<dd><input id="name" name="name" type="text" value=""/></dd>
						</dl>
						<div class="clear"></div>
						<dl>
							<dt><label for="email" id="emailLabel">E-Mail-Adresse *:</label></dt>
							<dd><input id="email" name="email" type="text" value=""/></dd>
						</dl>
						<div class="clear"></div>
						<dl class="message">
							<dt><label for="message" id="messageLabel">Nachricht an Tikron *:</label></dt>
							<dd><textarea id="message" name="message" rows="10" cols="60"></textarea></dd>
						</dl>
						<div class="clear"></div>
						<dl>
							<dt><a href="#" onclick="reloadCaptchaImage('captchaImage', '/webapp/generateCaptchaImage.html');">Zeichen nicht lesbar?</a></dt>
							<dd><img id="captchaImage" src="/webapp/generateCaptchaImage.html" alt="Verifizierungs-Code" title="Verifizierungs-Code" /></dd>
						</dl>
						<div class="clear"></div>
						<dl class="captchaCode">
							<dt><label for="captchaCode" id="captchaCodeLabel">Bitte gebe die abgebildeten Zeichen hier ein *:</label></dt>
							<dd><input id="captchaCode" name="captchaCode" type="text" value=""/></dd>
						</dl>
						<div class="clear"></div>
						<div class="buttonBox">
							<button type="submit">Nachricht senden</button>
						</div>
					</form>
					 --%>
				</section>
				<%@ include file="include/sub-nav.jspf"%>
				<%@ include file="include/footer.jspf"%>
			</div>
		</div>
		<div id="goup"></div>
	</body>
	<script type="text/javascript">
		$(document).ready(function() {
			var contactEmailElement = $('#email_link');
			contactEmailElement.attr('href', tk.getContactEmailLink());
			contactEmailElement.html(tk.getContactEmailText());
		});
	</script>
</html>
