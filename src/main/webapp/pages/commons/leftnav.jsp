<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">--%>
<script>
    $(function () {
        var str = location.href;
        var index = str.lastIndexOf("\/");
//        console.log("index:" + index);
        var paramIndex = str.indexOf("?");
//        console.log("paramIndex:" + paramIndex);
        var dif = paramIndex - index;
        if (paramIndex == -1) {
            dif = str.length - index;
        }
//        console.log("dif:" + (paramIndex - index)); //NaN
//        console.log("length:" + str.length);
//        str = str.substr(index + 1, dif-1);
        str = str.substr(index + 1, dif - 1);
//        str = str.replace(".html", "");
        console.log(str);
        $("#menu_" + str).addClass("active");
//        $("#side-menu li").removeClass("active");
//        $(this).addClass("active");
//        $("#side-menu li").eq(3).addClass("active");


//        $("#side-menu li").click(function () {
//            $("#side-menu li").removeClass("active");
//            $(this).addClass("active");
//        });
    })
</script>
<style>
    #side-menu li.active {
        background-color: #000000;
        font-weight: bold
    }

    /*#side-menu li.active a strong {*/
    /*color: #000*/
    /*}*/
</style>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" style="overflow:scroll">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="modalTitle"></h4>
            </div>
            <div class="modal-body" id="modalBody">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" style="overflow:scroll">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="confirmModalTitle"></h4>
            </div>
            <div class="modal-body" id="confirmModalBody">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cancelButton">取消</button>
                <button type="button" class="btn btn-primary" id="confirmButton">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<div class="modal fade" id="inputModal" tabindex="-1" role="dialog" style="overflow:scroll">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="inputModalTitle"></h4>
            </div>
            <div class="modal-body" id="inputModalBody">
                <div class="form-group">
                    <label for="data"></label>
                    <input type="text" class="form-control" id="data" name="data" placeholder="data">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal" id="cancelInputButton">取消</button>
                <button type="button" class="btn btn-primary" id="confirmInputButton">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" id="tableModal" tabindex="-1" role="dialog" style="overflow:scroll">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="tableModalTitle"></h4>
            </div>
            <div class="modal-body">
                <table class="table table-hover">
                    <tbody id="tableModalBody">
                    <thead>
                    <tr>
                        <th>字段名称</th>
                        <th>字段值</th>
                    </tr>
                    </thead>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>


    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <%--<div class="nav-close">--%>
        <%--<i class="fa fa-times-circle">阿贾克斯的房间里卡时间段付款啦吉林省快递费</i>--%>
        <%--</div>--%>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <%--<span>--%>
                        <%--<img alt="image" class="img-circle" src="img/profile_small.jpg"/>--%>
                        <%--</span>--%>
                        <a href="<%=webRoot%>">
                            <span class="clear">
                                <span class="block m-t-xs">
                                    <strong class="font-bold">数据采集平台</strong>
                                </span>
                            </span>
                        </a>
                    </div>
                    <div class="logo-element">H+
                    </div>
                </li>
                <li id="menu_list">
                    <a href="<%=webRoot%>/panel/commons/list">
                        <i class="fa fa-home"></i>
                        <span class="nav-label">搜索</span>
                    </a>
                </li>
                <li id="menu_domainList">
                    <a href="<%=webRoot%>/panel/commons/domainList">
                        <i class="fa fa-columns"></i>
                        <span class="nav-label">网站列表</span>
                    </a>
                </li>
                <li id="menu_tasks">
                    <a href="<%=webRoot%>/panel/commons/tasks">
                        <i class="fa fa fa-bar-chart-o"></i>
                        <span class="nav-label">查看进度</span>
                    </a>
                </li>

                <li id="menu_editSpiderInfo">
                    <a href="<%=webRoot%>/panel/commons/editSpiderInfo">
                        <i class="fa fa-envelope"></i>
                        <span class="nav-label">编辑模板</span>
                    </a>
                </li>
                <li id="menu_listSpiderInfo">
                    <a href="<%=webRoot%>/panel/commons/listSpiderInfo">
                        <i class="fa fa-edit"></i>
                        <span class="nav-label">模板列表</span>
                    </a>
                </li>
                <li id="menu_updateBySpiderInfoID">
                    <a href="<%=webRoot%>/panel/commons/updateBySpiderInfoID"
                    ><i class="fa fa-desktop"></i>
                        <span class="nav-label">更新数据</span>
                    </a>
                </li>
            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->

<%--</body>--%>

