<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/environment.jspf"%>
<c:set var="pageId" value="${param.pageId}" />
<c:choose>
	<c:when test="${pageId eq 'home'}"></c:when>
	<c:when test="${pageId eq 'about'}">
		<c:set var="subTitle" value=" - Über mich" />
	</c:when>
	<c:when test="${pageId eq 'contact'}">
		<c:set var="subTitle" value=" - Kontakt" />
	</c:when>
	<c:when test="${pageId eq 'imprint'}">
		<c:set var="subTitle" value=" - Impressum" />
	</c:when>
</c:choose>
<title><c:out value="Titus Kruse${subTitle}" /></title>
