function bingzhuangtu() {
    var data1 = [
        {name : 'IE',value : 35.75,color:'#9d4a4a'},
        {name : 'Chrome',value : 29.84,color:'#5d7f97'},
        {name : 'Firefox',value : 24.88,color:'#97b3bc'},
        {name : 'Safari',value : 6.77,color:'#a5aaaa'},
        {name : 'Opera',value : 2.02,color:'#778088'},
        {name : 'Other',value : 0.73,color:'#6f83a5'}
    ];

    var chart =new iChart.Pie2D({
        render : 'bingzhuangtu',
        data: data1,
        title : 'Top 5 Browsers from 1 to 29 Feb 2012',
        legend : {
            enable : true
        },
        showpercent:true,
        decimalsnum:2,
        width : 600,
        height : 400,
        radius:140
    });
    //调用绘图方法开始绘图
    chart.draw();
}