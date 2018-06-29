<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <link
            href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <%--<script type="text/javascript"--%>
    <%--src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>--%>

    <%--<script--%>
    <%--src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>--%>
    <!-- Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/js/theme/default/laydate.css" media="all">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts-all-3.js"></script>
    <script type="text/javascript" src="/js/ichart.1.2.min.js"></script>
    <script type="text/javascript" src="/js/zhuzhuangtu.js"></script>
    <script type="text/javascript" src="/js/bingzhuangtu.js"></script>
    <script type="text/javascript" src="/js/laydate.js"></script>


</head>
<body>
<!-- Modal 学生添加模态框-->
<div class="modal fade" id="stuAddModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">学生添加</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Id</label>
                        <div class="col-sm-10">
                            <input type="text" name="id" class="form-control" id="id_add_input" placeholder="Id">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-10">
                            <input type="text" name="name" class="form-control" id="name_add_input" placeholder="name">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex1_add_input" value="男" checked="checked"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex2_add_input" value="女"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">City</label>
                        <div class="col-sm-4">
                            <%--城市查询--%>
                            <select class="form-control" name="cityId" id="city_add_select">
                            </select>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="stu_save_btn">保存</button>
            </div>
        </div>
    </div>
</div>

<%--学生修改模态框--%>
<div class="modal fade" id="stuUpdateModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">学生修改</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Id</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="id_update_static"></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-10">
                            <input type="text" name="name" class="form-control" id="name_update_input" placeholder="name">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex1_update_input" value="男" checked="checked"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex2_update_input" value="女"> 女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">City</label>
                        <div class="col-sm-4">
                            <%--城市查询--%>
                            <select class="form-control" name="cityId" id="city_update_select">
                            </select>
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="stu_update_btn">更新</button>
            </div>
        </div>
    </div>
</div>
<%--搭建显示界面--%>
<div class="container">
    <%--标题--%>
    <div class="row">
        <div class="col-md-12">
            <h1>同济大学集控中心</h1>
        </div>
    </div>
    <%--按钮--%>
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <button class="btn btn-success" id="stu_Add_Btn"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>登录</button>
            <button class="btn btn-danger" id="stu_Delete_all_Btn"> <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除</button>
        </div>
    </div>
    <%--<导航栏>--%>
    <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" onclick="to_test(1)" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#" >首页</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active" onclick="to_page(1)"><a href="#">数据1 <span class="sr-only">(current)</span></a></li>
                        <li  onclick="to_test(1)"><a href="#">数据2</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">历史数据 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li onclick="to_chart(1)" ><a href="#">历史1</a></li>
                                <li><a href="#">历史2</a></li>
                                <li><a href="#">历史3</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">历史4</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">历史5</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    <%--</div>--%>

    <%--表格--%>
    <div class="row">
        <table class="table table-hover" id="stu_table">
            <thead>
            <tr>
                <th>
                    <input type="checkbox" id="check_all"/>
                </th>
                <th>ID</th>
                <th>姓名</th>
                <th>性别</th>
                <th>城市</th>
                <th>操作时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
    <%--分页--%>
    <div class="row">
        <%--分页信息--%>
        <div class="col-md-6" id="pageinfo_area">

        </div>
        <%--分页条--%>
        <div class="col-md-6" id="pagenav_area">

        </div>
    </div>
    <div>
        <label>起始时间 </label>
        <input type="text" id="test1" oninput="to_history()" onpropertychange="to_history()">
    </div>

    <div id='canvasDiv'></div>
    <div style="width:1200px">
        <div style="float:left;width:600px" id="zhuzhuangtu">左</div>
        <div style="float:left;width:600px" id="bingzhuangtu">右</div>
    </div>

    <%--<div>--%>
        <%--<div id='zhuzhuangtu'></div>--%>
        <%--<div id='bingzhuangtu'></div>--%>
    <%--</div>--%>

</div>


<script type="text/javascript">
    var TotalRecord,currentPage,res;
    //页面加载后直接发送ajax请求
    $(function(){
        //去首页
        to_page(1);
    });
    $(function(){
        laydate.render({
            elem: '#test1' //指定元素
            ,done: function (value, date, endDate) {
//                console.log(value); //得到日期生成的值，如：2017-08-18
//                console.log(date); //得到日期时间对象：{year: 2017, month: 8, date: 18, hours: 0, minutes: 0, seconds: 0}
//                console.log(endDate); //得结束的日期时间对象，开启范围选择（range: true）才会返回。对象成员同上。
                console.log("222");
                var pn=value;
                console.log(pn);
                $.ajax({
                    type :"POST",
                    url :"${APP_PATH }/history",
                    data :"pn="+pn,
                    success :function(result){
                        //其他成功时的处理
                        //  console.log(result);
                        console.log("yes");
                        clearInterval(res);
                        draw_chart(result);
                        zhuzhuangtu();
                        bingzhuangtu();
//                res=setInterval('to_test(1)',5000);
                    },
                });
            }
        });
         res=setInterval('to_page(1)',5000);
        //alert('=====');
    });
    //图表
//    $(function(){
//        draw_chart();
//       });
//    laydate.render({
//        elem: '#test1' //指定元素
//        ,value: '2018-08-18' //必须遵循format参数设定的格式
//    });
    //    var dingshi=Math.round(5000);

    function to_page(pn){
        var chart= document.getElementById("canvasDiv");
        chart.style.display="none";
        var tab= document.getElementById("stu_table");
        tab.style.display="";
        $.ajax({
            type :"POST",
            url :"${APP_PATH }/stu",
            data :"pn="+pn,
            success :function(result){
                //其他成功时的处理
                //  console.log(result);
                build_stu_table(result);
                build_stu_pageifo(result);
                build_page_nav(result);
                clearInterval(res);
                res=setInterval('to_page(1)',5000);
            },
        });
    }
    function to_test(pn){
        var chart= document.getElementById("canvasDiv");
        chart.style.display="none";
        var tab= document.getElementById("stu_table");
        tab.style.display="";
        $.ajax({
            type :"POST",
            url :"${APP_PATH }/stu",
            data :"pn="+pn,
            success :function(result){
                //其他成功时的处理
                //  console.log(result);
                build_test_table(result);
                build_stu_pageifo(result);
                build_page_nav(result);
                clearInterval(res);
                res=setInterval('to_test(1)',5000);
            },
        });
    }
    //画图
    function to_chart(pn){
        var chart= document.getElementById("canvasDiv");
        chart.style.display="";
        var tab= document.getElementById("stu_table");
        tab.style.display="none";
        $.ajax({
            type :"POST",
            url :"${APP_PATH }/stu",
            data :"pn="+pn,
            success :function(result){
                //其他成功时的处理
                //  console.log(result);
                clearInterval(res);
                draw_chart(result);
                zhuzhuangtu();
                bingzhuangtu();
//                res=setInterval('to_test(1)',5000);
            },
        });
    }
    function to_history(){
        console.log("222");
        var pn=$(" #test1 ").val();
        console.log(pn);
        $.ajax({
            type :"POST",
            url :"${APP_PATH }/history",
            data :"pn="+pn,
            success :function(result){
                //其他成功时的处理
                //  console.log(result);
                console.log("yes");
                clearInterval(res);
                draw_chart(result);
                zhuzhuangtu();
                bingzhuangtu();
//                res=setInterval('to_test(1)',5000);
            },
        });
    }
    //画图
    function draw_chart(result) {
        var stus = result.extend.PageInfo.list;
        var flow=[];
        for (var i=0;i<20;i++){
            flow.push(stus[i].cityId);
            console.log(stus[i].cityId);
        }
//        alert(stus[0].cityId);
//        alert(flow.toString());
//        for(var i=0;i<25;i++){
//            flow.push(Math.floor(Math.random()*(10+((i%16)*5)))+10);
//        }

        var data = [
            {
                name : 'PV',
                value:flow,
                color:'#ec4646',
                line_width:2
            }
        ];

        var labels = ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"];

        var chart = new iChart.LineBasic2D({
            render : 'canvasDiv',
            data: data,
            align:'center',
            title : {
                text:'过去24小时数据',
                font : '微软雅黑',
                fontsize:24,
                color:'#b4b4b4'
            },
            subtitle : {
                text:'',
                font : '微软雅黑',
                color:'#b4b4b4'
            },
            footnote : {
                text:'同济大学',
                font : '微软雅黑',
                fontsize:11,
                fontweight:600,
                padding:'0 28',
                color:'#b4b4b4'
            },
            width : 1200,
            height : 600,
            shadow:true,
            shadow_color : '#202020',
            shadow_blur : 8,
            shadow_offsetx : 0,
            shadow_offsety : 0,
            background_color:'#2e2e2e',
            tip:{
                enable:true,
                shadow:true,
                listeners:{
                    //tip:提示框对象、name:数据名称、value:数据值、text:当前文本、i:数据点的索引
                    parseText:function(tip,name,value,text,i){
                        return "<span style='color:#005268;font-size:12px;'>"+labels[i]+":00数据为:<br/>"+
                            "</span><span style='color:#005268;font-size:20px;'>"+value+"</span>";
                    }
                }
            },
            crosshair:{
                enable:true,
                line_color:'#ec4646'
            },
            sub_option : {
                smooth : true,
                label:false,
                hollow:false,
                hollow_inside:false,
                point_size:8
            },
            coordinate:{
                width:960,
                height:390,
                striped_factor : 0.18,
                grid_color:'#4e4e4e',
                axis:{
                    color:'#252525',
                    width:[0,0,4,4]
                },
                scale:[{
                    position:'left',
                    start_scale:0,
                    end_scale:10,
                    scale_space:1,
                    scale_size:2,
                    scale_enable : false,
                    label : {color:'#9d987a',font : '微软雅黑',fontsize:11,fontweight:600},
                    scale_color:'#9f9f9f'
                },{
                    position:'bottom',
                    label : {color:'#9d987a',font : '微软雅黑',fontsize:11,fontweight:600},
                    scale_enable : false,
                    labels:labels
                }]
            }
        });
        //利用自定义组件构造左侧说明文本
        chart.plugin(new iChart.Custom({
            drawFn:function(){
                //计算位置
                var coo = chart.getCoordinate(),
                    x = coo.get('originx'),
                    y = coo.get('originy'),
                    w = coo.width,
                    h = coo.height;
                //在左上侧的位置，渲染一个单位的文字
                chart.target.textAlign('start')
                    .textBaseline('bottom')
                    .textFont('600 11px 微软雅黑')
                    .fillText('数据',x-40,y-12,false,'#9d987a')
                    .textBaseline('top')
                    .fillText('(时间)',x+w+12,y+h+10,false,'#9d987a');

            }
        }));
        //开始画图
        chart.draw();

    }
        //隐藏表单
    function hide_stu_table(){
        clearInterval(res);
        var tab= document.getElementById("stu_table");
        tab.style.display="none";
        var chart= document.getElementById("canvasDiv");
        chart.style.display="";
    }
    //        显示表单数据
    function build_stu_table(result) {
        $("#stu_table tbody").empty();
        var stus = result.extend.PageInfo.list;
        $.each(stus,function(index,item) {
            var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
            var IdTd=$("<td></td>").append(item.id);
            var NameTd=$("<td></td>").append(item.name);
            var SexTd=$("<td></td>").append(item.sex);
            var CityTd=$("<td></td>").append(item.cityId);
            var UniversityTd=$("<td></td>").append("同济大学");
//            <button class="btn btn-success btn-sm"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</button>
//                <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除</button>
            var EdtBtn=$("<button></button>").addClass("btn btn-success btn-sm edit_btn").append($("<span></span>")).addClass("glyphicon glyphicon-pencil").append("修改");
            EdtBtn.attr("edit-id",item.id);
            var DelBtn=$("<button></button>").addClass("btn btn-danger btn-sm delete_btn").append($("<span></span>")).addClass("glyphicon glyphicon-trash").append("删除");
            DelBtn.attr("del-id",item.id);
            var Btn=$("<td></td>").append(EdtBtn).append(" ").append(DelBtn);
            $("<tr></tr>").append(checkBoxTd)
                .append(IdTd)
                .append(NameTd)
                .append(SexTd)
                .append(CityTd)
                .append(UniversityTd)
                .append(Btn)
                .appendTo("#stu_table tbody");
        });
    }
    function build_test_table(result) {
        $("#stu_table tbody").empty();
        var stus = result.extend.PageInfo.list;
        $.each(stus,function(index,item) {
            var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
            var IdTd=$("<td></td>").append(item.id);
            var NameTd=$("<td></td>").append(item.name);
            var SexTd=$("<td></td>").append(item.sex);
            var CityTd=$("<td></td>").append(item.cityId);
            var UniversityTd=$("<td></td>").append("中南大学");
//            <button class="btn btn-success btn-sm"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改</button>
//                <button class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除</button>
            var EdtBtn=$("<button></button>").addClass("btn btn-success btn-sm edit_btn").append($("<span></span>")).addClass("glyphicon glyphicon-pencil").append("修改");
            EdtBtn.attr("edit-id",item.id);
            var DelBtn=$("<button></button>").addClass("btn btn-danger btn-sm delete_btn").append($("<span></span>")).addClass("glyphicon glyphicon-trash").append("删除");
            DelBtn.attr("del-id",item.id);
            var Btn=$("<td></td>").append(EdtBtn).append(" ").append(DelBtn);
            $("<tr></tr>").append(checkBoxTd)
                .append(IdTd)
                .append(NameTd)
                .append(SexTd)
                .append(CityTd)
                .append(UniversityTd)
                .append(Btn)
                .appendTo("#stu_table tbody");
        });
    }
    //        显示分页数据
    function build_stu_pageifo(result){
        $("#pageinfo_area").empty();
        $("#pageinfo_area").append("当前"+result.extend.PageInfo.pageNum+"页，").append("总共"+result.extend.PageInfo.pages+"页。");
        TotalRecord = result.extend.PageInfo.pages;
        currentPage = result.extend.PageInfo.pageNum;
    }
    //        显示分页条信息
    //        <nav aria-label="Page navigation">
    //            <ul class="pagination">
    //            <li>
    //            <a href="#" aria-label="Previous">
    //            <span aria-hidden="true">&laquo;</span>
    //        </a>
    //        </li>
    //        <li><a href="#">1</a></li>
    //        <li><a href="#">2</a></li>
    //        <li><a href="#">3</a></li>
    //        <li><a href="#">4</a></li>
    //        <li><a href="#">5</a></li>
    //        <li>
    //        <a href="#" aria-label="Next">
    //            <span aria-hidden="true">&raquo;</span>
    //        </a>
    //        </li>
    //        </ul>
    //        </nav>
    function build_page_nav(result) {
        $("#pagenav_area").empty();
        var ul = $("<ul></ul>").addClass("pagination");
        //首页和上一页
        var firstPageLi =$("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
        var prePageLi =$("<li></li>").append($("<a></a>").append("&laquo;"));
        if(result.extend.PageInfo.hasPreviousPage == false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else{
            //为元素添加点击翻页的事件
            firstPageLi.click(function(){
                to_page(1);
            });
            prePageLi.click(function(){
                to_page(result.extend.PageInfo.pageNum -1);
            });
        }


        //下一页和末页
        var nextPageLi =$("<li></li>").append($("<a></a>").append("&raquo;"));
        var lastPageLi =$("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        if(result.extend.PageInfo.hasNextPage == false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else{
            nextPageLi.click(function(){
                to_page(result.extend.PageInfo.pageNum +1);
            });
            lastPageLi.click(function(){
                to_page(result.extend.PageInfo.pages);
            });
        }


        ul.append(firstPageLi).append(prePageLi);
        $.each(result.extend.PageInfo.navigatepageNums,function (index,item) {
            var numLi =$("<li></li>").append($("<a></a>").append(item));
            if(result.extend.PageInfo.pageNum == item){
                numLi.addClass("active");
            }
            numLi.click(function(){
                to_page(item);
            });
            ul.append(numLi);
        });
        ul.append(nextPageLi).append(lastPageLi);

        var nav =$("<nav></nav>").append(ul);
        nav.appendTo("#pagenav_area");
    }
    //清空表单
    function reset_form(ele){
        $(ele)[0].reset();
        //清空表单样式
        $(ele).find("*").removeClass("has-error has-success");
        $(ele).find(".help-block").text("");
    }
    //点击新增按钮弹出模态框
    $("#stu_Add_Btn").click(function(){
        //重置表单
        reset_form("#stuAddModel form");
        //发送ajax请求
        getCity("#city_add_select");
        // /弹出框
        $("#stuAddModel").modal({
            backdrop:"static"
        });
    });

    //查询所有城市
    function getCity(ele) {
        $(ele).empty();
        $.ajax({
            url:"${APP_PATH}/city",
            type:"GET",
            success:function(result){
                $.each(result.extend.city,function () {
                    var optionEle=$("<option></option>").append(this.city).attr("value",this.cId);
                    optionEle.appendTo(ele);
                });
            }
        });
    }
    //校验表单数据
    function validate_add_form() {
        //先拿到数据，使用正则表达式
        var stuName=$("#name_add_input").val();
        var regName= /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
        if(!regName.test(stuName)){
            show_validate_msg("#name_add_input","error","用户名可以使2-5位汉字或者6-16个字母或数字");
            //alert("用户名可以使2-5位汉字或者6-16个字母或数字");
            return false;
        }else{
            show_validate_msg("#name_add_input","success","");
        }
        return true;
    }

    //        专门的校验调用函数
    function show_validate_msg(ele,status,msg){
        //清除当前元素的校验状态
        $(ele).parent().removeClass("has-success has-error");
        $(ele).next("span").text("");
        if("success"==status){
            $(ele).parent().addClass("has-success");
            $(ele).next("span").text(msg);
        }else if("error" == status){
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(msg);
        }
    }
    $("#name_add_input").change(function(){
        //
        var name = this.value;
        $.ajax({
            url:"${APP_PATH}/checkuser",
            data:"name="+name,
            type:"POST",
            success:function (result) {
                if(result.code==100){
                    show_validate_msg("#name_add_input","success","用户名可用");
                    $("#stu_save_btn").attr("ajax-va","success");
                }else{
                    show_validate_msg("#name_add_input","error",result.extend.va_msg);
                    $("#stu_save_btn").attr("ajax-va","error");
                }
            }
            //发送ajax请求检验用户名是否可用
        });
    });
    $("#stu_save_btn").click(function(){
        //1.保存表单数据提交给服务器
        //先对数据进行校验
        if(!validate_add_form()){
            return false;
        }
        if($(this).attr("ajax-va")=="error"){
            return false;
        }
        //2.发送ajax请求
        $.ajax({
            url:"${APP_PATH}/student",
            type:"POST",
            data:$("#stuAddModel form").serialize(),
            success:function (result) {
                if(result.code == 100) {
                    $("#stuAddModel").modal('hide');
                    to_page(TotalRecord);
                }else {
                    //显示失败信息
                    //console.log(result);
                    //有哪个字段的错误信息就显示哪个字段的；
                    if (undefined != result.extend.errorFields.name) {
                        //显示员工名字的错误信息
                        show_validate_msg("#name_add_input", "error", result.extend.errorFields.name);
                    }
                }
            }
        });
    });
    //        员工修改事件绑定
    //1、我们是按钮创建之前就绑定了click，所以绑定不上。
    //1）、可以在创建按钮的时候绑定。    2）、绑定点击.live()
    //jquery新版没有live，使用on进行替代
    $(document).on("click",".edit_btn",function(){
        //alert("edit");

        //1、查出部门信息，并显示部门列表
        getCity("#city_update_select");
        //2、查出员工信息，显示员工信息
        getStu($(this).attr("edit-id"));

        //3、把员工的id传递给模态框的更新按钮
        $("#stu_update_btn").attr("edit-id",$(this).attr("edit-id"));
        $("#stuUpdateModel").modal({
            backdrop:"static"
        });
    });

    function getStu(id) {
        $.ajax({
            url:"${APP_PATH}/student/"+id,
            type:"GET",
            success:function(result){
                var stu = result.extend.stu;
                $("#id_update_static").text(stu.id);
                $("#name_update_input").val(stu.name);
                $("#stuUpdateModel input[name=sex]").val([stu.sex]);
                $("#stuUpdateModel select").val([stu.cityId]);
            }
        });
    }

    //点击更新，更新员工信息
    $("#stu_update_btn").click(function(){
        //验证邮箱是否合法
        //1、校验邮箱信息
        var name = $("#name_update_input").val();
        var regName = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
        if(!regName.test(name)){
            show_validate_msg("#name_update_input", "error", "用户名可以使2-5位汉字或者6-16个字母或数字");
            return false;
        }else{
            show_validate_msg("#name_update_input", "success", "");
        }

        //2、发送ajax请求保存更新的学生数据
        $.ajax({
            url:"${APP_PATH}/student/"+$(this).attr("edit-id"),
            type:"PUT",
            data:$("#stuUpdateModel form").serialize(),
            success:function(result){
                // alert(result.msg);
                // 1、关闭对话框
                $("#stuUpdateModel").modal('hide');
                //2、回到本页面
                to_page(currentPage);
            }
        });
    });
    //删除学生
    $(document).on("click",".delete_btn",function(){
        var StuName=$(this).parents("tr").find("td:eq(2)").text();
        var StuId  =$(this).attr("del-id");
        if(confirm("确认删除【"+StuName+"】吗？")){
            $.ajax({
                url:"${APP_PATH}/student/"+StuId,
                type:"DELETE",
                success:function(result){
                    //alert(result.msg);
                    to_page(currentPage);
                }
            })
        }
    });

    //完成全选/全不选功能
    $("#check_all").click(function(){
        //attr获取checked是undefined;
        //我们这些dom原生的属性；attr获取自定义属性的值；
        //prop修改和读取dom原生属性的值
        $(".check_item").prop("checked",$(this).prop("checked"));
    });

    //check_item
    $(document).on("click",".check_item",function(){
        //判断当前选择中的元素是否5个
        var flag = $(".check_item:checked").length==$(".check_item").length;
        $("#check_all").prop("checked",flag);
    });

    //点击全部删除，就批量删除
    $("#stu_Delete_all_Btn").click(function(){
        //
        var stuNames = "";
        var del_idstr = "";
        $.each($(".check_item:checked"),function(){
            //this
            stuNames += $(this).parents("tr").find("td:eq(2)").text()+",";
            //组装员工id字符串
            del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
        });
        //去除stuNames多余的,
        stuNames = stuNames.substring(0, stuNames.length-1);
        //去除删除的id多余的-
        del_idstr = del_idstr.substring(0, del_idstr.length-1);
        if(confirm("确认删除【"+stuNames+"】吗？")){
            //发送ajax请求删除
            $.ajax({
                url:"${APP_PATH}/student/"+del_idstr,
                type:"DELETE",
                success:function(result){
                    //alert(result.msg);
                    //回到当前页面
                    to_page(currentPage);
                }
            });
        }
    });
</script>
</body>
</html>