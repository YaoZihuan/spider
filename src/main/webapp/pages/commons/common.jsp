<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<%
    String webRoot = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<script type="text/javascript">
    var webRoot = '<%=webRoot%>';
</script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<link href="${pageContext.request.contextPath}/imgs/logos/logo_without_char_48X48.ico" type="image/x-icon"
      rel="shortcut icon"/>
<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/imgs/logos/logo_without_char_48X48.ico"/>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<!-- h+框架要素 start -->

<!-- 全局js -->
<script type="text/javascript" src="<%=webRoot%>/static/h+/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=webRoot%>/static/h+/js/bootstrap.min.js"></script>
<script type="text/javascript"
        src="<%=webRoot%>/static/h+/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script type="text/javascript"
        src="<%=webRoot%>/static/h+/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="<%=webRoot%>/static/h+/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="<%=webRoot%>/js/jquery.validate.min.js"></script>

<!-- 自定义js -->
<script src="<%=webRoot%>/static/h+/js/hplus.js"></script>
<script type="text/javascript" src="<%=webRoot%>/static/h+/js/contabs.js"></script>
<script src="<%=webRoot%>/js/my.js"></script>
<script src="${pageContext.request.contextPath}/js/messages_zh.min.js"></script>

<!-- 第三方插件 -->
<script src="<%=webRoot%>/static/h+/js/plugins/pace/pace.min.js"></script>
<!-- 全局样式 -->
<link href="<%=webRoot %>/static/h+/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=webRoot %>/static/h+/css/font-awesome.css" rel="stylesheet">
<link href="<%=webRoot %>/static/h+/css/animate.css" rel="stylesheet">
<link href="<%=webRoot %>/static/h+/css/style.css" rel="stylesheet">
<!-- h+框架要素 end -->
