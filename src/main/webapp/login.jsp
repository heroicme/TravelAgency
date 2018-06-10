<%@ page language="java" import="java.util.*"
         contentType="text/html; charset=utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <%-- <base href="<%=basePath%>">

        <title>My JSP 'login.jsp' starting page</title>

        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        --> --%>
    <title>用户登录，注册</title>
    <%-- <script src="${basePath}layui/jquery/jquery-1.7.2.min.js"></script> --%>

    <link rel="stylesheet" href="${basePath}layui/css/layui.css">
    <link rel="stylesheet" href="${basePath}layui/mycss/mycss.css">

    <script type="text/javascript"
            src="${basePath}static/js/jquery-1.12.4.min.js"></script>
    <link
            href="${basePath}static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${basePath}static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<body>


<!-- <div class="heard"></div> -->
<div class="loginwrap">
    <img class="adapt index"
         src="${basePath}layui/images/homePageMain.jpg"/>
    <div class="loginbox">

        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">

            <div id="tapbox">
                <ul class="layui-tab-title ">
                    <li class="layui-this adapt">用户登录</li>
                    <li class="layui-icon adapt">管理员登录</li>
                </ul>
            </div>


            <div class="layui-tab-content ">
                <div class="layui-tab-item layui-show">
                    <div class="formbox">


                        <form class="layui-form" id="loginForm" method="post">


                            <div class="layui-form-item">

                                <label class="layui-form-label layui-icon"> &#xe612;</label>
                                <div class="layui-input-inline">
                                    <input type="text" name="userName" placeholder="请输入用户名"
                                           autocomplete="off" class="layui-input">
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <label class="layui-form-label layui-icon">&#xe629;</label>
                                <div class="layui-input-inline">
                                    <input type="password" name="userPassword" placeholder="请输入密码"
                                           autocomplete="off" class="layui-input">
                                </div>

                            </div>

                            <div class="layui-form-item">
                                <!-- 					<label class="layui-form-label layui-icon">&#xe618;</label>-->
                                <div class="layui-input-block">
                                    <!-- <input type="checkbox" name="switch" lay-skin="switch"> -->
                                </div>
                                <div class="loginTip layui-icon"></div>
                            </div>

                            <div class="layui-form-item">
                                <div class="layui-input-block">

                                    <button id="loginbutton" type="button"
                                            class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal">登录
                                    </button>
                                    <button id="registerbutton" type="button"
                                            class="layui-btn layui-btn-lg layui-btn-radius  layui-btn-danger">注册
                                    </button>
                                    <br/>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                                        href="javaScript:;" id="forgetPass">忘记密码</a>
                                </div>


                            </div>


                        </form>


                    </div>

                </div>
                <div class="layui-tab-item formbox2">
                    <form class="layui-form" id="adminForm">
                        <div class="layui-form-item">
                            <label class="layui-form-label layui-icon"> &#xe612;</label>
                            <div class="layui-input-inline">
                                <input type="text" name="adminName" placeholder="请输入用户名"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label layui-icon">&#xe629;</label>
                            <div class="layui-input-inline">
                                <input type="password" name="adminPassword" placeholder="请输入密码"
                                       autocomplete="off" class="layui-input">
                            </div>

                        </div>

                        <div class="layui-form-item">
                            <!--<label class="layui-form-label layui-icon">&#xe618;</label>-->
                            <div class="layui-input-block">
                                <!-- 	<input type="checkbox" name="switch" lay-skin="switch"> -->
                            </div>
                            <div class="adminloginTip layui-icon"></div>
                        </div>

                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button id="adminLogin" type="button"
                                        class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal">登录
                                </button>
                                <!-- <a href="javaScript:;">忘记密码</a> -->
                            </div>
                        </div>
                    </form>


                </div>
            </div>
        </div>


    </div>

</div>

<!-- 注册模态框 -->


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">新用户注册</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="register">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label layui-icon">&#xe612;</label>
                        <div class="col-sm-10">
                            <input name="userName" type="text" class="form-control " id="userInput"
                                   placeholder="userName">
                            <span class="help-block" id="mssg"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label layui-icon ">&#xe629;</label>
                        <div class="col-sm-10">
                            <input name="userPassword" type="password" class="form-control" id="inputPassword"
                                   placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label layui-icon ">&#xe629;</label>
                        <div class="col-sm-10">
                            <input name="email" class="form-control" id="inputemail" placeholder="211727713@qq.com">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="radio" name="gender" value="男" checked="checked"/>男
                            <input type="radio" name="gender" value="女"/>女
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="saveUser">确定</button>
            </div>
        </div>
    </div>
</div>


<!-- 注册模态框 -->

<!-- 修改密码模态框 -->


<!-- Modal -->
<div class="modal fade" id="modifyPass" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">重置密码</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="modify">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label layui-icon">&#xe612;</label>
                        <div class="col-sm-10">
                            <input name="userName" type="text" class="form-control " id="modifyuser"
                                   placeholder="userName">
                            <span class="help-block" id="modifymssg"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label layui-icon ">&#xe629;</label>
                        <div class="col-sm-10">
                            <input name="userPassword" type="password" class="form-control" id="modifyPassword"
                                   placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <!-- <div class="checkbox">
                              <label>
                                <input type="checkbox"> Remember me
                              </label>
                            </div> -->
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <!--  <button type="submit" class="btn btn-default">确定</button> -->
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="modifyUser">确定</button>
            </div>
        </div>
    </div>
</div>


<!-- 注册模态框 -->


<div class="footer">
    <img src="${basePath}layui/images/footer.png"/>
</div>
<!-- 必须等Html全部加载后进行渲染 -->

<script src="${basePath}layui/layui.all.js"></script>
<!-- 必须等Html全部加载后进行渲染 -->


<script src="${basePath}layui/myjs/login.js"></script>


</body>
</html>
