<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>用户登录</title>
    <!-- bootstrap framework -->
    <link media="screen" rel="stylesheet" href="${ctx}/static/assets/bootstrap/css/bootstrap.min.css">
    <!-- elegant icons -->
    <link media="screen" rel="stylesheet" href="${ctx}/static/assets/icons/elegant/style.css">
    <!-- main stylesheet -->
    <link media="screen" rel="stylesheet" href="${ctx}/static/assets/css/main.min.css">

    <script>
        <shiro:user>
            location.href="${ctx}/";
        </shiro:user>
    </script>
</head>

<body class="login_page">

<div class="login_header">
    <%--<img alt="site_logo" src="assets/img/logo.png">--%>
</div>
<div class="login_register_form">
    <div class="form_wrapper animated-short">
        <h3 class="sepH_c"><span>用户登录</span></h3>
        <%
            String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
            if(error != null){
        %>
        <div class="alert alert-danger" role="alert">
            <button data-dismiss="alert" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">关闭</span></button>
            <strong></strong> 登录失败，请重试.
        </div>
        <%
            }
        %>
        <form id="loginForm" action="${ctx}/login" method="post">
            <div class="input-group input-group-lg sepH_a">
                <span class="input-group-addon"><span class="icon_profile"></span></span>
                <input type="text" placeholder="名称" class="form-control required" name="username" id="username" value="${username}">
            </div>
            <div class="input-group input-group-lg">
                <span class="input-group-addon"><span class="icon_key_alt"></span></span>
                <input type="password" placeholder="密码" class="form-control required" name="password" id="password" >
            </div>
            <br/>
            <div class="form-group sepH_c">
                <input class="btn btn-lg btn-primary btn-block" type="submit" value="登录"/>
            </div>
        </form>
    </div>
</div>
<!-- jQuery -->
<script src="${ctx}/static/assets/js/jquery.min.js"></script>
<script src="${ctx}/static/assets/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>
