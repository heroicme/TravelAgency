<%@ page language="java" import="java.util.*"
         contentType="text/html; charset=utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${basePath}index.jsp" flush="true"></jsp:include>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <%--  <base href="<%=basePath%>">

        <title>My JSP 'homepage.jsp' starting page</title>

        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        --> --%>

    <script src="${basePath}layui/jquery/jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".imgtext").hide();
            $(".imgbox").hover(function () {
                $(".imgtext", this).slideToggle(200);
            });
        });
    </script>
</head>
<body class="main">
<!-- 侧栏 主题图片 提示 -->
<div class="wrap">
    <div class="left">

        <div class="box"></div>
    </div>


    <div class=" left box">
        <ul>

            <li class="menu "><h1 class="layui-icon">&#xe62e;热门城市&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#xe602;</h1>


                <a href="product?cityNum=0571">杭州</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="product?cityNum=0573">嘉兴</a><br/>
                <a href="product?cityNum=0576">台州</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="product?cityNum=0574">宁波</a><br/>
                <a href="product?cityNum=0580">舟山</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="product?cityNum=0575">绍兴</a>


                <!--    热门景点  周边游玩  魅力风情 -->
                <div class="location">
                    <div class="leftbox1 leftboxbgi">


                        <span class="rtitle layui-icon">&#xe62e;热门城市</span><br/>

                        <a class="aLocation" href="product?cityNum=0570">衢州</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                            href="product?cityNum=0578">丽水</a><br/>
                        <a class="aLocation" href="product?cityNum=0572">湖州</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                            href="product?cityNum=0579">金华</a><br/>
                        <a class="aLocation" href="product?cityNum=0577">温州</a>


                    </div>

                </div>


                <!--    热门景点  周边游玩  魅力风情 -->

            </li>

            <li class="menu "><h1 class="layui-icon">&#xe62e;人气推荐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#xe602;</h1>
                <a href="product?productName=西湖">杭州:西湖</a>&nbsp;&nbsp;<a href="product?productName=宋城">宋城</a><br/>
                <a href="product?productName=西塘">嘉兴:西塘</a>&nbsp;&nbsp;<a href="product?productName=乌镇">乌镇</a><br/>
                <a href="product?productName=神仙居">台州:神仙居</a>&nbsp;&nbsp;<a href="product?productName=临海长城">临海长城</a><br/>
                <div class="location1">
                    <div class="leftbox1 leftboxbgi">


                        <span class="rtitle layui-icon">&#xe6fc;人气推荐</span><br/>


                        <a class="aLocation" href="product?productName=西湖">杭州:西湖</a>&nbsp;&nbsp;<a class="aLocation"
                                                                                                   href="product?productName=宋城">宋城</a><br/>
                        <a class="aLocation" href="product?productName=西塘">嘉兴:西塘</a>&nbsp;&nbsp;<a class="aLocation"
                                                                                                   href="product?productName=乌镇">乌镇</a><br/>
                        <a class="aLocation" href="product?productName=神仙居">台州:神仙居</a><a class="aLocation"
                                                                                         href="product?productName=临海长城">临海长城</a><br/>


                    </div>

                </div>
            </li>

            <li class="menu "><h1 class="layui-icon">&#xe62e;精品线路&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#xe602;</h1>
                <a href="product?type=杭州一日游">杭州一日游</a>&nbsp;&nbsp;<a href="product?type=杭州二日游">二日游</a><br>
                <a href="product?type=嘉兴一日游">嘉兴一日游</a>&nbsp;&nbsp;<a href="product?type=嘉兴二日游">二日游</a><br>
                <a href="product?type=台州一日游">台州一日游</a>&nbsp;&nbsp;<a href="product?type=台州二日游">二日游</a><br>

                <div class="location2">
                    <div class="leftbox1 leftboxbgi">


                        <span class="rtitle layui-icon">&#xe636;精品路线</span><br/>

                        <a class="aLocation" href="product?type=杭州一日游">杭州一日游</a>&nbsp;&nbsp;<a class="aLocation"
                                                                                               href="product?type=杭州二日游">二日游</a><br>
                        <a class="aLocation" href="product?type=嘉兴一日游">嘉兴一日游</a>&nbsp;&nbsp;<a class="aLocation"
                                                                                               href="product?type=嘉兴二日游">二日游</a><br>
                        <a class="aLocation" href="product?type=台州一日游">台州一日游</a>&nbsp;&nbsp;<a class="aLocation"
                                                                                               href="product?type=台州二日游">二日游</a><br>


                    </div>

                </div>
            </li>

            <li class="menu "><h1 class="layui-icon">&#xe62e;魅力之乡&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#xe602;</h1>

                <a href="getCityInfo?cityTn=0571">杭州</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="getCityInfo?cityTn=0573">嘉兴</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="getCityInfo?cityTn=0576">台州</a><br/>
                <a href="getCityInfo?cityTn=0580">舟山</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="getCityInfo?cityTn=0575">绍兴</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="getCityInfo?cityTn=0574">宁波</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="getCityInfo?cityTn=0579">金华</a><br/>
                <a href="getCityInfo?cityTn=0577">温州</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="getCityInfo?cityTn=0572">湖州</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="getCityInfo?cityTn=0570">衢州</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="getCityInfo?cityTn=0578">丽水</a>


                <div class="location3">
                    <div class="leftbox1 leftboxbgi">

                        <!-- 	 <span class="rtitle layui-icon" >&#xe62e;热门景点</span>
                                <span class="rtitle layui-icon" >&#xe6fc;周边游玩</span>
                                <span class="rtitle layui-icon" >&#xe636;特色美食</span>
                                 -->

                    </div>

                </div>
            </li>


        </ul>
    </div>

    <!--上面左侧二级表单  -->
    <div class="center">
        <div class="layui-carousel" id="test1">
            <div carousel-item>
                <div class="">
                    <a href="javascript:;"> <img class="adapt"
                                                 src="${basePath}layui/images/place/homeMain1.png "/></a>
                </div>
                <div class="">
                    <a href="javascript:;"> <img class="adapt"
                                                 src="${basePath}layui/images/place/homeMain2.png "/></a>
                </div>

            </div>
        </div>
    </div>
    <div class="right">
        <div class="box1">
            <!-- <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title ">
                    <li class="layui-this layui-icon "
                        style="font-size: 20px; color: black;">&#xe6af;HI浙助手</li>
                    <li class="layui-icon " style="font-size: 20px; color: black;">&#xe63c;公告信息</li>
                </ul>
                <div class="layui-tab-content ">
                    <div class="layui-tab-item layui-show">1.旅游常识</div>
                    <div class="layui-tab-item">2.通知公告</div>
                </div>
            </div> -->
        </div>
    </div>
</div>
<!-- 侧栏 主题图片 提示 -->


<!--热门景点 hotspot -->
<div class="hotspotwrap">
    <div class="hotspot">
        <div class="fontbox">
            <h1>热门景点</h1>
            <div class="hot">
                <img class="adapt" src="${basePath}layui/images/hot.gif"/>
            </div>
        </div>

    </div>


    <div class="place1">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="product?productName=西湖"><img class="adapt"
                                                  src="${basePath}layui/images/place/xihu.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>西湖</h1>
                    位于浙江省杭州市西面，它以其秀丽的湖光山色和众多的名胜古迹而闻名中外，被誉为“人间天堂”
                </div>
            </div>
        </div>


    </div>
    <div class="place2">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="product?productName=西塘"><img class="adapt"
                                                  src="${basePath}layui/images/place/xitan.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>西塘</h1>
                    古镇位于浙江省嘉善县，江浙沪三省交界处,有“吴根越角”和“越角人家”之称
                </div>
            </div>
        </div>
    </div>
    <div class="place3">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="product?productName=桃花岛"><img class="adapt"
                                                   src="${basePath}layui/images/place/taohuadao.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>桃花岛</h1>
                    射雕英雄传旅游城坐落在金庸笔下桃花岛风光迷人的散花峰下，景区具有山青、水曲、石趣、峰奇、境幽、气爽的特点
                </div>
            </div>
        </div>
    </div>
    <div class="place4">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="product?productName=浙东大峡谷"><img class="adapt"
                                                     src="${basePath}layui/images/place/daxiagu.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>浙东大峡谷</h1>
                    浙东大峡谷位于浙江省宁海县境内，是一处以自然山水风光为依托，以道家和台岳文化精粹为内涵，以青山绿水、奇峰怪石、溪流飞瀑、原始森林和现代游乐为特色的生态风景区
                </div>
            </div>
        </div>
    </div>
    <div class="place5">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="product?productName=三味书屋"><img class="adapt"
                                                    src="${basePath}layui/images/place/shuwu.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>三味书屋</h1>
                    所谓“三味”，是取“读经味如稻粱，读史味如肴馔，读诸子百家味如醯醢”之义,桌面右边有一个鲁迅亲手刻下的“早”字
                </div>
            </div>
        </div>
    </div>
    <div class="place6">
        <div class="imgbox">
            <a href="product?productName=临海长城"><img class="adapt"
                                                    src="${basePath}layui/images/place/changchen.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>临海长城</h1>
                    临海城墙，位于浙江省临海市,与北京八达岭相较，可称双绝 ，称之为“江南八达岭”，，城墙掩映在青绿丛中，更增添了一分灵秀。
                </div>
            </div>
        </div>
    </div>

</div>


<!--热门景点  -->

<!--舌尖美食  -->
<div class="hotspotwrap">
    <div class="hotspot">
        <div class="fontbox">
            <h1>舌尖美食</h1>
            <div class="eat">
                <img class="adapt" src="${basePath}layui/images/eat.gif"/>
            </div>
        </div>
    </div>


    <div class="place1">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="javascript:;"><img class="adapt"
                                        src="${basePath}layui/images/food/hzeat.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>龙井虾仁</h1>
                    新鲜大河虾，龙井新茶烹制而成。既有龙井茶的香郁甘甜，又有虾仁的鲜嫩多肉。营养丰富，味极鲜美，还有滋补和解毒功效。
                </div>
            </div>
        </div>
    </div>
    <div class="place2">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="javascript:;"><img class="adapt"
                                        src="${basePath}layui/images/food/hzeat1.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>西湖醋鱼</h1>
                    西湖醋鱼为杭州西湖最负盛名之菜肴,醋香浓郁、鱼肉细嫩、口感酸甜，老少皆宜。
                </div>
            </div>
        </div>
    </div>
    <div class="place3">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="javascript:;"><img class="adapt"
                                        src="${basePath}layui/images/food/hzeat2.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>知味小笼</h1>
                    知味小笼是杭州的风味小吃，主要选用鲜肉、虾仁、鸡肉、火腿末等作馅儿，加入特肉皮冻，包好后放入特制小蒸笼用急火蒸制而成
                </div>
            </div>
        </div>
    </div>
    <div class="place4">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="javascript:;"><img class="adapt"
                                        src="${basePath}layui/images/food/pangxie.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>锯缘青蟹</h1>
                    三门养殖青蟹已有200年历史，而三门青蟹也以个大、体壮、色泽鲜艳、肉味鲜美驰名闽浙沪，引得无数文人墨客为之折腰，清诗人鲍谦曾作诗：“家家种秫酿春醪，十月红先缸面掏。何物可供郎下酒，糖颓青蟹砺江蚝
                </div>
            </div>
        </div>
    </div>
    <div class="place5">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="javascript:;"><img class="adapt"
                                        src="${basePath}layui/images/food/jxeat.png"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>京粉</h1>
                    浙江海宁最为传统也最为出名的汉族小吃,小吃味道鲜美，风格独特。在海宁当地，人们也称京粉为“京粉头"
                </div>
            </div>
        </div>
    </div>
    <div class="place6">
        <div class="shadow"></div>
        <div class="imgbox">
            <a href="javascript:;"><img class="adapt"
                                        src="${basePath}layui/images/food/hyeat.jpg"/></a>
            <div class="text">
                <div class="imgtext">
                    <h1>姜汤面</h1>
                    是台州的代表性面食之一。主要材料有虾干、猪肉丝、笋丝（或茭白丝）、香菇、金针。具有解寒、发汗功能，可刺激胃肠蠕动，帮助食物消化等功效。
                </div>
            </div>
        </div>
    </div>

</div>


<!--舌尖美食  -->


<div class="footer">
    <img src="${basePath}layui/images/footer.png"/>
</div>

<script type="text/javascript">

    layui.carousel.render({
        elem: '#test1',
        height: '100%', //设置高度
        width: '100%', //设置容器宽度
        arrow: 'always', //始终显示箭头
        anim: 'default', //切换动画方式
        interval: '2000' //播放间隔
    });
</script>
<!-- 必须等Html全部加载后进行渲染 -->
<script src="${basePath}layui/layui.all.js"></script>
<!-- 必须等Html全部加载后进行渲染 -->
</body>
</html>