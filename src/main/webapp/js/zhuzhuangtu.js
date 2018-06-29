function zhuzhuangtu(){
    //定义数据
    var data = [
        {name : 'H',value : 7,color:'#a5c2d5'},
        {name : 'E',value : 5,color:'#cbab4f'},
        {name : 'L',value : 12,color:'#76a871'},
        {name : 'L',value : 12,color:'#76a871'},
        {name : 'O',value : 15,color:'#a56f8f'},
        {name : 'W',value : 13,color:'#c12c44'},
        {name : 'O',value : 15,color:'#a56f8f'},
        {name : 'R',value : 18,color:'#9f7961'},
        {name : 'L',value : 12,color:'#76a871'},
        {name : 'D',value : 4,color:'#6f83a5'}
    ];
    var chart = new iChart.Column2D({
        render : 'zhuzhuangtu',//渲染的Dom目标,canvasDiv为Dom的ID
        data: data,//绑定数据
        title : 'Hello World\'s Height In Alphabet',//设置标题
        width : 600,//设置宽度，默认单位为px
        height : 400,//设置高度，默认单位为px
        shadow:true,//激活阴影
        shadow_color:'#c7c7c7',//设置阴影颜色
        coordinate:{//配置自定义坐标轴
            scale:[{//配置自定义值轴
                position:'left',//配置左值轴
                start_scale:0,//设置开始刻度为0
                end_scale:26,//设置结束刻度为26
                scale_space:2,//设置刻度间距
                listeners:{//配置事件
                    parseText:function(t,x,y){//设置解析值轴文本
                        return {text:t+" cm"}
                    }
                }
            }]
        }
    });
    chart.draw();
}