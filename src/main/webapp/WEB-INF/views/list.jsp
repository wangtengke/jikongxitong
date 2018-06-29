<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2018/2/1
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<!-- web路径：
不以/开始的相对路径，找资源，以当前资源的路径为基准，经常容易出问题。
以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:3306)；需要加上项目名
http://localhost:3306/crud
-->
<script type="text/javascript"
        src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
<link
        href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
        rel="stylesheet">
<script
        src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<html>
<head>
    <title>学生列表</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <!-- web路径：
    不以/开始的相对路径，找资源，以当前资源的路径为基准，经常容易出问题。
    以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:3306)；需要加上项目名
    http://localhost:3306/crud
    -->
    <script type="text/javascript" src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
    <link   href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<%--搭建显示界面--%>
         <div class="container">
                <%--标题--%>
            <div class="row">
                <div class="col-md-12">
                    <h1>SSM-CRUD</h1>
                </div>
            </div>
                <%--按钮--%>
            <div class="row">
                <div class="col-md-4 col-md-offset-8">
                    <button class="btn btn-success"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增</button>
                    <button class="btn btn-danger"> <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除</button>
                </div>
            </div>
                <%--表格--%>
            <div class="row">
                <table class="table table-hover">
                    <tr>
                        <th>ID</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>城市</th>
                        <th>大学</th>
                        <th>操作</th>
                    </tr>
                    <c:forEach items="${pageInfo.list}" var="stu">
                        <tr>
                            <th>${stu.id}</th>
                            <th>${stu.name}</th>
                            <th>${stu.sex}</th>
                            <th>上海</th>
                            <th>同济大学</th>
                            <th>
                                <button class="btn btn-success btn-sm"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</button>
                                <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除</button>
                            </th>
                        </tr>
                    </c:forEach>
                </table>
            </div>
                <%--分页--%>
            <div class="row">
                    <%--分页信息--%>
                <div class="col-md-6">
                    当前${pageInfo.pageNum}页，总共${pageInfo.pages}页。
                </div>
                    <%--分页条--%>
                <div class="col-md-6">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li><a href="${APP_PATH}/stu?pn=1">首页</a></li>
                            <c:if test="${pageInfo.hasPreviousPage}">
                                <li>
                                    <a href="${APP_PATH}/stu?pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                            </c:if>

                            <c:forEach items="${pageInfo.navigatepageNums}" var="page_Num">
                                <c:if test="${page_Num==pageInfo.pageNum}">
                                    <li class="active"><a href="#">${page_Num}</a></li>
                                </c:if>
                                <c:if test="${page_Num!=pageInfo.pageNum}">
                                    <li><a href="${APP_PATH}/stu?pn=${page_Num}">${page_Num}</a></li>
                                </c:if>
                            </c:forEach>

                            <c:if test="${pageInfo.hasNextPage}">
                                <li>
                                    <a href="${APP_PATH}/stu?pn=${pageInfo.pageNum+1}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </c:if>
                            <li><a href="${APP_PATH}/stu?pn=${pageInfo.pages}">尾页</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
</body>
</html>
