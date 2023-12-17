<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<script>
    window.onload = function() {
        var username = "<%= session.getAttribute("username") %>";
        <%-- alert(username); --%>
        if(username == "reset"){
            aTag[0].innerHTML = "请先登录";
            aTag[0].href = "login.jsp";
        }
        else if (username != null) {
            var aTag = document.getElementsByClassName("login");
            aTag[0].innerHTML = username;
            aTag[0].href = "reset.jsp";
            <%-- alert(aTag[0].innerHTML); --%>
        }
    }
</script>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- meta:desc -->
    <meta name="description" content="小兔鲜儿官网，致力于打造全球最大的食品、生鲜电商购物平台">
    <!-- meta:kw -->
    <meta name="keywords" content="小兔鲜儿,食品,生鲜,服装,家电,电商,购物">
    <title>小兔鲜儿-新鲜、惠民、快捷！</title>
    <!-- link:favicon -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <!-- 按顺序引入: 外链式样式表后写的生效 -->
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/index.css">
</head>

<body>
    <!-- 快捷导航 -->
    <div class="shortcut">
        <div class="wrapper">
            <ul>
                <li><a href="login.jsp" class = "login">请先登录</a></li>
                <li><a href="register.jsp">免费注册</a></li>
                <li><a href="products.jsp">我的订单</a></li>
                <li><a href="#">会员中心</a></li>
                <li><a href="#">帮助中心</a></li>
                <li><a href="#">在线客服</a></li>
                <li><a href="#"><span></span>手机版</a></li>
            </ul>
        </div>
    </div>

    <!-- 头部 -->
    <div class="header wrapper">
        <div class="logo">
            <h1><a href="#">小兔鲜儿</a></h1>
        </div>
        <div class="nav">
            <ul>
                <li><a href="#">首页</a></li>
                <li><a href="#">生鲜</a></li>
                <li><a href="#">美食</a></li>
                <li><a href="#">餐厨</a></li>
                <li><a href="#">电器</a></li>
                <li><a href="#">居家</a></li>
                <li><a href="#">洗护</a></li>
                <li><a href="#">孕婴</a></li>
                <li><a href="#">服装</a></li>
            </ul>
        </div>
        <div class="search">
            <input type="text" placeholder="搜一搜">
            <!-- 定位 放大镜 -->
            <span></span>
        </div>
        <div class="car">
            <span>2</span>
        </div>
    </div>


    <!-- banner -->
    <div class="banner">
        <div class="wrapper">
            <!-- 有多少个图,就有都少个li -->
            <ul>
                <li>
                    <a href="#"><img src="./uploads/banner_1.png" alt=""></a>
                </li>
            </ul>

            <!-- 侧导航 -->
            <div class="aside">
                <ul>
                    <li><a href="#">生鲜<span>水果 蔬菜</span></a></li>
                    <li><a href="#">生鲜<span>水果 蔬菜</span></a></li>
                    <li><a href="#">生鲜<span>水果 蔬菜</span></a></li>
                    <li><a href="#">生鲜<span>水果 蔬菜</span></a></li>
                    <li><a href="#">生鲜<span>水果 蔬菜</span></a></li>
                    <li><a href="#">生鲜<span>水果 蔬菜</span></a></li>
                    <li><a href="#">生鲜<span>水果 蔬菜</span></a></li>
                    <li><a href="#">生鲜<span>水果 蔬菜</span></a></li>
                    <li><a href="#">生鲜<span>水果 蔬菜</span></a></li>
                    <li><a href="#">生鲜<span>水果 蔬菜</span></a></li>
                </ul>
            </div>

            <!-- 箭头 -->
            <!-- prev: 上一个 -->
            <a href="#" class="prev"></a>
            <!-- next : 下一个 -->
            <a href="#" class="next"></a>

            <!-- 圆点: 当前状态: current / active -->
            <!-- js 找到用户点击的li 添加类名 li变成白色的 -->
            <ol>
                <li></li>
                <li></li>
                <li class="current"></li>
                <li></li>
                <li></li>
            </ol>
        </div>
    </div>

    <!-- 新鲜好物 -->
    <div class="goods wrapper">
        <!-- hd header 头部 -->
        <div class="hd">
            <h2>新鲜好物<span>新鲜出炉 品质靠谱</span></h2>
            <a href="#">查看全部</a>
        </div>
        <!-- body 身体, 内容 -->
        <div class="bd clearfix">
            <ul>
                <li>
                    <a href="#">
                        <img src="./uploads/new_goods_1.jpg" alt="">
                        <h3>睿米无线吸尘器F8</h3>
                        <div>￥<span>899</span></div>
                        <b>新品</b>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./uploads/new_goods_1.jpg" alt="">
                        <h3>睿米无线吸尘器F8</h3>
                        <div>￥<span>899</span></div>
                        <b>新品</b>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./uploads/new_goods_1.jpg" alt="">
                        <h3>睿米无线吸尘器F8</h3>
                        <div>￥<span>899</span></div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="./uploads/new_goods_1.jpg" alt="">
                        <h3>睿米无线吸尘器F8</h3>
                        <div>￥<span>899</span></div>
                    </a>
                </li>

            </ul>
        </div>
    </div>

    <!-- 生鲜 -->
    <div class="shengxian wrapper">
        <div class="hd">
            <h2>生鲜</h2>
            <a href="#" class="more">查看全部</a>
            <ul>
                <li><a href="#">水果</a></li>
                <li><a href="#">水果</a></li>
                <li><a href="#">水果</a></li>
                <li><a href="#">水果</a></li>
                <li><a href="#">水果</a></li>
                <li><a href="#">水果</a></li>
                <li><a href="#">水果</a></li>
            </ul>
        </div>
        <div class="bd clearfix">
            <div class="left">
                <a href="#"><img src="./uploads/fresh_goods_cover.png" alt=""></a>
            </div>
            <div class="right"></div>
        </div>
    </div>

    <!-- 版权区域 -->
    <div class="footer">
        <div class="wrapper">
            <div class="top">
                <ul>
                    <li>
                        <!-- 通过伪元素添加标签实现精灵图 -->
                        <span>价格亲民</span>
                    </li>
                    <li>
                        <span>物流快捷</span>
                    </li>
                    <li>
                        <span>品质新鲜</span>
                    </li>
                </ul>
            </div>
            <div class="bottom">
                <p>
                    <a href="#">关于我们</a> |
                    <a href="#">帮助中心</a> |
                    <a href="#">售后服务</a> |
                    <a href="#">配送与验收</a> |
                    <a href="#">商务合作</a> |
                    <a href="#">搜索推荐</a> |
                    <a href="#">友情链接</a>
                </p>
                <p>CopyRight @ 小兔鲜儿</p>
            </div>
        </div>
    </div>
</body>

</html>