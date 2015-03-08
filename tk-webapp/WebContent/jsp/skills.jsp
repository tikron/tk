<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="include/doctype.jspf"%>
<%@ include file="include/environment.jspf"%>
<c:set var="pageId" value="skills" />
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
					<h1>Qualifikation</h1>
					<p>
						Im folgenden eine kurze Zusammenfassung meiner Kenntnisse und Fähigkeiten in der Softwareentwicklung:
					</p>
					<ul>
						<li>Konzeption, Entwicklung und Betreuung kaufmännischer Branchensoftware und Tools</li>
						<li>Programmierung mehrschichtiger, verteilter Internetapplikationen für den Versandhandel</li>
						<li>Einsatz von OpenSource-Frameworks und -Tools</li>
						<li>Konfiguration und Betrieb Linux Rootserver</li>
						<li>Programmierung Java EE unter Eclipse IDE (Frameworks JSF, Spring, Struts, Hibernate)</li>
						<li>Webdesign mit JSP, HTML und CSS</li>
						<li>IBM Websphere Application Server, Apache HTTP Server, Apache Tomcat</li>
						<li>Datenbanken DB2, MySQL und Microsoft Access</li>
						<li>Softwareentwicklung, Datenbankdesign und Administration IBM iSeries</li>
					</ul>
				</section>
				<%@ include file="include/sub-nav.jspf"%>
				<%@ include file="include/footer.jspf"%>
			</div>
		</div>
		<div id="goup"></div>
	</body>
</html>
