<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="include/doctype.jspf"%>
<%@ include file="include/environment.jspf"%>
<c:set var="pageId" value="imprint" />
<html lang="de">
<head>
<%@ include file="include/head.jspf"%>
</head>
<body>
	<div id="container">
		<div id="wrap">
			<%@ include file="include/header.jspf"%>
			<section id="main" class="${pageId}">
				<h1>Impressum</h1>
				<div class="address"></div>
				<p>
					Diese Adresse ist jedoch nur für Schriftverkehr vorgesehen, der nicht anders als auf postalischem Weg abgewickelt
					werden kann. Für alle anderen Fälle steht unter <a href="${jspPath}contact${jspSuffix}">Kontakt</a> eine
					E-Mail-Adresse zur Verfügung.
				</p>
				<p>Trotz sorgfältiger inhaltlicher Kontrolle übernehme ich keine Haftung für die Inhalte externer Links. Für den
					Inhalt der verlinkten Seiten sind ausschließlich deren Betreiber verantwortlich. Alle Inhalte meiner Seiten
					unterliegen - soweit nicht anders gekennzeichnet - meinem Urheberrecht. Es ist nicht gestattet, Texte oder Grafiken
					meiner Seite ohne meine schriftliche Einwilligung ganz oder in Teilen zu verwenden. Ebenfalls ist es nicht
					gestattet, eine Verlinkung von Bild-, Ton- oder Videodateien auf andereren Websites vorzunehmen.</p>
				<p>Um eine korrekte Darstellung der Website zu ermöglichen, sollte einer der unten aufgeführten Web-Browser mit
					der angegebenen Version oder einer aktuelleren Version verwendet werden.</p>
				<ul>
					<li>Apple Safari 5</li>
					<li>Google Chrome 7.0</li>
					<li>Microsoft Internet Explorer 9</li>
					<li>Mozilla Firefox 4</li>
				</ul>
			</section>
			<%@ include file="include/footer.jspf"%>
		</div>
	</div>
	<div id="goup"></div>
</body>
</html>
