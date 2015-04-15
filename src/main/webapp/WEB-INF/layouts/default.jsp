<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title>QuickStart示例:<sitemesh:title/></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<%--<link type="image/x-icon" href="${ctx}/static/images/favicon.ico" rel="shortcut icon">--%>

    <!-- bootstrap framework -->
    <link media="screen" rel="stylesheet" href="${ctx}/static/assets/bootstrap/css/bootstrap.min.css">
    <!-- elegant icons -->
    <link media="screen" rel="stylesheet" href="${ctx}/static/assets/icons/elegant/style.css">
    <!-- main stylesheet -->
    <link media="screen" rel="stylesheet" href="${ctx}/static/assets/css/main.min.css">

<sitemesh:head/>
</head>

<body>
	<div class="container">
		<%@ include file="/WEB-INF/layouts/header.jsp"%>
		<div id="content">
			<sitemesh:body/>
		</div>
		<%@ include file="/WEB-INF/layouts/footer.jsp"%>
	</div>
	<script src="${ctx}/static/bootstrap/2.3.2/js/bootstrap.min.js" type="text/javascript"></script>

    <!-- jQuery -->
    <script src="${ctx}/static/assets/js/jquery.min.js"></script>
</body>
</html>