<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/environment.jspf"%>
<c:set var="pageId" value="${param.pageId}"/>
<nav id="top">
	<ul>
		<c:choose>
		<c:when test="${pageId eq 'home'}"><li>Über mich</li></c:when>
		<c:otherwise><li><a href="${jspPath}index${jspSuffix}">Über mich</a></li></c:otherwise>
		</c:choose>
		<c:choose>
		<c:when test="${pageId eq 'skills'}"><li>Qualifikation</li></c:when>
		<c:otherwise><li><a href="${jspPath}skills${jspSuffix}">Qualifikation</a></li></c:otherwise>
		</c:choose>
		<c:choose>
		<c:when test="${pageId eq 'contact'}"><li>Kontakt</li></c:when>
		<c:otherwise><li><a href="${jspPath}contact${jspSuffix}">Kontakt</a></li></c:otherwise>
		</c:choose>
		<c:choose>
		<c:when test="${pageId eq 'imprint'}"><li>Impressum</li></c:when>
		<c:otherwise><li><a href="${jspPath}imprint${jspSuffix}">Impressum</a></li></c:otherwise>
		</c:choose>
	</ul>
</nav>
