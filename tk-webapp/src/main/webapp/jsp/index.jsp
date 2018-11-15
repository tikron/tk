<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="include/doctype.jspf"%>
<%@ include file="include/environment.jspf"%>
<c:set var="pageId" value="home" />
<html lang="de">
<head>
<%@ include file="include/head.jspf"%>
</head>
<body>
	<%@ include file="include/nav.jspf"%>
	<%@ include file="include/header.jspf"%>
	<!-- Content section -->
	<section class="py-5">
		<div class="container">
			<h1>Über mich</h1>
			<p class="lead">Softwareentwicklung als Leidenschaft</p>
			<p>Computertechnik und Programmierung sind schon früh meine Leidenschaft geworden. Daraufhin habe ich viele
				Abschnitte der technischen Entwicklung miterlebt: Vom 8-Bit-Microcomputer, über IBM Mainframes bis hin zur
				mehrschichtigen, hoch verfügbaren eCommerce-Plattform. Dabei stets neugierig auf Fortschritte in der
				Softwareentwicklung, welche die Implementierung und Wartung komplexer Systeme erleichtern und deren Zuverlässigkeit
				steigern. Meine langjährige Erfahrung ermöglicht es mir, stabilen und performanten Code zu schreiben sowie auch in
				kritischen Situationen den Überblick zu behalten. Softwareentwicklung ist ein kreativer Prozess, bei dem man
				jederzeit offen für Ideen sein sollte. Gleichsam hilft ein gewisser Riecher, bestimmte wiederkehrende Probleme gar
				nicht erst aufkommen zu lassen.</p>
			<p>Mein Interesse liegt vorrangig auf Design Patterns und Clean Code. Den umfangreichen Fundus an Open Source
				Software schätze ich als Quelle durchdachter und vielfach im Einsatz geprüfter Komponenten. Dazu zählen das Spring
				Framework, das ORM Hibernate, die Apache Commons Library und viele mehr. Schon zu Zeiten des Green Screen hatte ich
				den Anspruch, die - damals eher beruflichen - Anwender meiner Software sollen sich damit wohlfühlen. Durch moderne
				CSS und Javascript-Frameworks wie Bootstrap oder Angular ist es möglich, dem Benutzer Inhalte optimal zu
				präsentieren und mit ihm in Interaktion zu treten. Denn Software wird heute auch von Menschen genutzt, die eben
				nicht wie ein Programmierer denken.</p>
			<p>Wie viele Entwickler beziehe ich mein Fachwissen aus der einschlägigen Literatur. Manning Publications hat
				dazu zum Beispiel einiges im Angebot. Zu diesem eher theoretischen Ansatz kann und sollte man seinen eigenen Code
				Style aber auch durch das Studium fremden Codes immer wieder verbessern. Ich liebe es, mir Beispiele anderer
				Entwickler anzusehen, zu bewerten und gegebenenfalls in meine Arbeitsweise zu übernehmen. Javin Paul, Eugen
				Paraschiv oder Bauke Scholtz alias BalusC sind wegweisende Koryphäen. Diskussionen zu Softwarearchitektur im
				Allgemeinen verfolge ich gern und gleiche sie mit meiner Auffassungen dazu ab.</p>
			<p>Software basiert nicht nur auf einer bestimmten Plattform wie zum Beispiel die Java EE oder der Wildfly
				Application Server. Sie interagiert heute über Schnittstellen mehr denn je mit anderen Modulen und Systemen. Ich
				beschäftige mich meist intensiv mit der Dokumentation zu diesen Modulen. Die Dokumentation zu verstehen und das
				Verhalten der eigenen Software exakt darauf abzustimmen, ist Voraussetzung, um ein hohes Maß an Stabilität und
				Langlebigkeit zu gewährleisten. So freut es mich manches Mal zu erfahren, dass ein Stück Software schon so lange
				unauffällig seinen Dienst tut. Auch nach Änderungen am zu Grunde liegenden System oder der umgebenen Infrastruktur.</p>
		</div>
	</section>

	<!-- Image Section - set the background image for the header in the line below -->
	<section id="skills" class="py-5 bg-image-full"
		style="background-image: url('${staticPath}css/img/louis-reed-747404-unsplash-2-lg.jpg');">
		<!-- Put anything you want here! There is just a spacer below for demo purposes! -->
		<div style="height: 200px;"></div>
	</section>

	<!-- Content section -->
	<section class="py-5">
		<div class="container">
			<h1>Qualifikation</h1>
			<p class="lead">Eine Zusammenfassung meiner Kenntnisse und Fähigkeiten</p>
			<ul>
				<li>Konzeption, Entwicklung und Betreuung kaufmännischer Branchensoftware und Tools</li>
				<li>Programmierung mehrschichtiger, verteilter Internetapplikationen für den Versandhandel</li>
				<li>Einsatz von Open-Source-Frameworks und -Tools</li>
				<li>Konfiguration und Betrieb Linux Rootserver</li>
				<li>Programmierung Java EE unter Eclipse IDE (Frameworks JSF, Spring, Struts, JPA/Hibernate)</li>
				<li>Webdesign mit JSP, HTML, CSS und Javascript</li>
				<li>IBM Websphere Application Server, Apache HTTP Server, Apache Tomcat</li>
				<li>Datenbanken DB2, MySQL und Microsoft Access</li>
				<li>Softwareentwicklung, Datenbankdesign und Administration IBM iSeries</li>
				<li>Kundensupport und Einarbeitung von Kollegen</li>
				<li>Dokumentation in englischer Sprache</li>
			</ul>
		</div>
	</section>

	<!-- Image Section - set the background image for the header in the line below -->
	<section id="contact" class="py-5 bg-image-full"
		style="background-image: url('${staticPath}css/img/louis-reed-747404-unsplash-3-lg.jpg');">
		<!-- Put anything you want here! There is just a spacer below for demo purposes! -->
		<div style="height: 200px;"></div>
	</section>

	<!-- Content section -->
	<section class="py-5">
		<div class="container">
			<h1>Kontakt</h1>
			<p class="lead">Sie möchten mich kennenlernen</p>
			<p>Falls Sie mich gerne kennenlernen oder gar meine Dienste als Softwareentwickler in Anspruch nehmen möchten,
				schreiben Sie mir bitte eine kurze E-Mail. Ich melde mich umgehend zurück. Vielen Dank!</p>
			<a class="owner-email" href="mailto:#"></a>
		</div>
	</section>

	<%@ include file="include/footer.jspf"%>
	<%@ include file="include/foot.jspf"%>
</body>
</html>
