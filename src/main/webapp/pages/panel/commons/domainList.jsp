<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>网站列表</title>
    <%@include file="../../commons/common.jsp" %>
</head>
<body class="fixed-sidebar full-height-layout gray-bg  pace-done __web-inspector-hide-shortcut__" >
<%@include file="../../commons/leftnav.jsp" %>

<div id="page-wrapper" class="gray-bg dashbard-1">
    <div class="row J_mainContent" >
        <table class="table table-hover">
            <thead>
            <tr>
                <th>#</th>
                <th>网站域名</th>
                <th>资讯数</th>
                <th>查看列表</th>
                <th>删除</th>
                <th>导出数据</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${domainList}" var="domain" varStatus="index">
                <tr>
                    <th scope="row">${index.count}</th>
                    <td>${domain.key}</td>
                    <td>${domain.value}</td>
                    <td><a class="btn btn-info"
                           href="${pageContext.request.contextPath}/panel/commons/list?domain=${domain.key}">查看资讯列表</a>
                    </td>
                    <td><a class="btn btn-danger"
                           onclick="rpcAndShowData('${pageContext.request.contextPath}/commons/webpage/deleteByDomain', {domain: '${domain.key}'});">删除网站数据</a>
                    </td>
                    <td><a class="btn btn-info"
                           href="${pageContext.request.contextPath}/commons/webpage/exportWebpageJSONByDomain?domain=${domain.key}">导出该网站数据JSON</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="container" id="wordCloudBody" style="height:400px"></div>
</div>
</body>
</html>
