<%--
  Created by IntelliJ IDEA.
  User: 李庆
  Date: 2020/9/28
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>登录</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/zhus.css">

  <!---图标库--->
  <link rel='stylesheet' href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sstyle.css">

</head>
<body>


<div class="section">
  <div class="container">
    <div class="row full-height justify-content-center">
      <div class="col-12 text-center align-self-center py-5">
        <div class="section pb-5 pt-5 pt-sm-2 text-center">
          <center><p>${msg}</p></center>
          <h6 class="mb-0 pb-3"><span>登录</span><span>注册</span></h6>
          <input class="checkbox" type="checkbox" id="reg-log" name="reg-log">
          <label for="reg-log"></label>
          <div class="card-3d-wrap mx-auto">
            <div class="card-3d-wrapper">
              <div class="card-front">
                <form method="post" action="${pageContext.request.contextPath}/login">
                <div class="center-wrap">
                  <div class="section text-center">
                    <h4 class="mb-4 pb-3">登录</h4>
                    <div class="form-group">
                      <input type="text" name="username" class="form-style" placeholder="用户名" id="logemail" autocomplete="off">
                      <i class="input-icon uil uil-at"></i>
                    </div>
                    <div class="form-group mt-2">
                      <input type="password" name="password" class="form-style" placeholder="密码" id="logpass" autocomplete="off">
                      <i class="input-icon uil uil-lock-alt"></i>
                    </div>
                    <input  type="submit" class="btn mt-4"></input>
                    <p class="mb-0 mt-4 text-center"><a href="#0" class="link">忘记密码?</a></p>
                  </div>
                </div>
                </form>
              </div>
              <script src="${pageContext.request.contextPath}/js/jquer.js"></script>
              <div class="card-back">
                <div class="center-wrap">
                  <form action="${pageContext.request.contextPath}/saveUser" method="post">
                  <div class="section text-center">
                    <h4 class="mb-4 pb-3">注册</h4>
                    <div class="form-group">
                      <input type="text" id="username" name="username" class="form-style" placeholder="名称" id="logname" autocomplete="off">
                      <i class="input-icon uil uil-user"></i>

                    </div>
                    <div class="form-group mt-2">
                      <input type="password"  name="password" class="form-style" placeholder="密码"  autocomplete="off">
                      <i class="input-icon uil uil-lock-alt"></i>
                    </div>
                    <input type="button" id="susb" class="btn mt-4" value="注册"  />
                    <input id="subisd" type="hidden"   class="btn mt-4" value="注册" />
                  </div>
               <script>
                 var sp=false;
                 $("#username").bind("input propertychange",function () {
                   var username=this.value;
                 $.post("/findByUsername",{username:username},function (p) {
                    if(p==1){
                    sp=true;
                      document.getElementById("username").style.border="1px  solid green ";
                    }else{
                      document.getElementById("username").style.border="1px  solid red ";
                      sp=false;
                    }

                 });

               });
                 $("#username").blur(function(){
                  if(sp){
                         document.getElementById("susb").type="hidden";
                         document.getElementById("subisd").type="submit";
                  }else {
                    document.getElementById("susb").type="button";
                    document.getElementById("subisd").type="hidden";
                  }
                 });
                 document.getElementById("susb").click=function tis() {
                   alert("用户名不可用!");
               }
               </script>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>

