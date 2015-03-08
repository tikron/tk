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
		<div id="container">
			<div id="wrap">
				<%@ include file="include/header.jspf"%>
				<%@ include file="include/top-nav.jspf"%>
				<section id="main" class="${pageId}">
					<h1>Über mich</h1>
					<h2>Schulzeit</h2>
					<p>
						Als 10-jähriger Schüler habe ich meine ersten logischen Schaltungen mit Fischer technik realisiert. 
						In der Bücherhalle im benachbarten Stadtteil lagen Zeitschriften aus, in denen über ICs und Mikroprozessoren berichtet wurde.
						Weitere Schaltungen habe ich dann auf selbst geätzten Platingen mit einfachen Logik-ICs hergestellt.
						Langfristig mehr Freude sah ich allerdings in der Möglichkeit, Schaltungen immer wieder neu programmieren zu können.
						Weil ich noch keinen eigenen Computer besaß, habe ich also kleine Programme in 6502-Maschinencode auf Papier geschrieben.
					</p>
					<p>
						Im Elektronikfachmarkt standen die ersten Heimcomputer aus.
						Auf einem Sinclair ZX 81 oder dem Commodore VC&nbsp;20 habe ich dort kleine Programme in Basic geschrieben.
						Das machte Spaß.
						Am nächsten Tag waren diese aber natürlich wieder gelöscht worden.
						Meinen ersten eigenen Computer hatte ich dann 1981:	Eben den Commodore VC&nbsp;20 mit 8 Bit Prozessor und 5 KByte RAM.
						Später folgten der Commodore 64 und ein Amiga 2000.
						Größere Projekte waren die Erweiterung des Basic-Interpreters in 6510-Assembler oder eine Fakturierung, die im Betrieb meines Vaters eingesetzt wurde.
						1985 habe ich schließlich ein Schülerpraktikum in einem Rechenzentrum mit digital VAX Systemen absolviert.   
					</p>
					<h2>Berufsausbildung</h2>
					<p>
						Zum Ende der Schulzeit 1986 war klar, dass ich beruflich etwas mit Computern machen möchte.
						In der darauf folgenden Berufsausbildung zum Datenverarbeitungskaufmann (Fachinformatiker) konnte ich dann meine Begeisterung für die Programmierung auch beruflich erfolgreich umsetzen.
						Gemeinsam im Team haben wir Software für das Verkehrswesen entwickelt, die auf einem IBM System/36 Mainframe lief.
						Die Programmiersprachen RPG, DDS und CL empfand ich anfangs etwas kryptisch. 
						Die Ausgabe von Informationen erfolgte damals auf dem sogenannten Green Screen und auf Kettendruckern.
						Der Vorteil dieser Systeme lag allerdings in der für damalige Verhältnisse hohen Verarbeitungsgeschwindigkeit großer Datenmengen.
						Meine Ausbildung war praxisorientiert: 
						Ich hatte direkten Kundenkontakt und konnte bereits alle Bereichen der Datenverarbeitung kennenlernen.
					</p>
					<h2>Anwendungsentwickler</h2>
					<p> 
						Seit dem Abschluss meiner Berufsausbildung 1989 bin ich in Hamburger Softwareunternehmen als Anwendungsentwickler tätig.
						Mein Verständnis für kaufmännische Abläufe helfen mir stets bei der Umsetzung der individuellen Kundenanforderungen.
						Seit jeher ist es mir wichtig, Benutzerschnittstellen optimal auf die Bedürfnisse des Anwenders zuzuschneiden.
						Diese auch einheitlich zu gestalten, damit der Anwender schnell zum gewünschten Ziel kommt.
						Da ich schon von Beginn an nah am System programmiert habe, schreibe ich auch heute den Code so, dass er immer den Vorgaben der jeweiligen Umgebung entspricht.
						Dabei ist der Aufwand zunächst zwar größer.
						Durch maximale Kompatibilität und gute Wartbarkeit rentiert sich dies jedoch im Laufe der Zeit.
						Der beste Code ist der, der nie wieder auffällt.
					</p>
					<p>
						In den folgenden Jahren habe ich an der Weiterentwicklung und Wartung großer Warenwirtschaftsysteme mitgearbeitet.
						Mit einem solchen System haben unsere Kunden fast alle Bereiche des Betriebs verwaltet. Vom Kundenstamm und der Lagerhaltung über die Auftragsabwicklung bis hin zum Versand und der Debitorenbuchhaltung.
						Eine typische Datenbank hielt eine Milliarde Datensätze.
						Überwiegend wurde unsere Software auf einer IBM AS/400 (später iSeries) eingesetzt.
						Weil mir die Programmierung in RPG auf der Datenbank DB2 nicht genug war, habe ich mich in C++, Visual Basic und Microsoft Access eingearbeitet.
						Hier war es endlich möglich, grafische Oberflächen zu gestalten und weitere Komponenten wie Microsoft Word anzubinden.
						Ich habe dann mittels VBA .NET eigenständig eine Client-Software zur Verwaltung und Verfolgung von Bug Reports und Feature-Requests sowie die Auslieferung von Software Updates und Dokumentation derer konzipiert und implementiert. 
						Dieses Tool wurde für diesen Zweck in unserem Unternehmen eingesetzt. 
					</p>
					<h2>Web Development</h2>
					<p>
						In der Vergangenheit wurde ein nicht unerheblicher Teil der Arbeitszeit mit der Analyse und Anpassungen von vielfach redundantem Code aufgewendet.
						Mit dem Aufkommen von Java 1998 sind mir deshalb schnell die Vorteile einer plattformunabhängigen, objektorientierten Programmiersprache bewusst geworden. 
						Neben meiner beruflichen Tätigkeit habe ich deshalb mit Java einige Desktopanwendungen realisiert. 
						Um die dabei erworbenen Kenntnisse zu erweitern, nahm ich 2007 an einer	Fortbildung zum Softwareentwickler Java/J2EE teil, bei der ich auch das Zertifikat "Sun Certified Programmer" erwarb.
					</p>
					<p>
						Bald darauf folgte eine Anstellung als Java-Anwendungsentwickler in einem namhaften Hamburger Softwareunternehmen.
						Dort bin ich als Entwickler an der Programmierung komplexer eCommerce-Systeme auf Basis des IBM Websphere Commerce Frameworks beteiligt.
						Dabei handelt es sich um hochperformante, mehrschichtige, verteilte Internetapplikationen.
						Meine dabei erworbenen Kenntnisse sind sehr vielfältig:
						Von der detailgetreuen Umsetzung grafischer Anforderungen des Kunden, über individuelle Anpassungen der Geschäftslogik und der Datenbank des Frameworks bis hin zur ständigen Optimierung der Systemperformance.
						Weitere Kenntnisse sind Search Engine Optimization, Datenanalyse, Konfiguration der Application Server auf Linux und IBM iSeries sowie der Kundensupport.     
					</p>
					<p>
						Lesen Sie auf der folgenden Seite eine <a href="/skills.html">Zusammenfassung meiner Kenntnisse und Fähigkeiten</a>.
					</p>
				</section>
				<%@ include file="include/sub-nav.jspf"%>
				<%@ include file="include/footer.jspf"%>
			</div>
		</div>
		<div id="goup"></div>
	</body>
</html>
