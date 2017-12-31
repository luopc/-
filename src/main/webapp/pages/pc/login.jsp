<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/commons/taglibs.jsp" %>
<%
	String webApp=request.getContextPath();
 %> 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>登陆页面</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 
  <link rel="stylesheet" href="${ctx}/pages/pc/static/layui/layui/css/layui.css">
  <link rel="stylesheet" href="${ctx}/pages/pc/static/layui/css/global.css">
</head>
<body>
<div class="layui-container fly-marginTop">
  <div class="fly-panel fly-panel-user" pad20>
    <div class="layui-tab layui-tab-brief" lay-filter="user">
      <ul class="layui-tab-title">
        <li class="layui-this">登陆</li>        
      </ul>
      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
        <div class="layui-tab-item layui-show">
          <div class="layui-form layui-form-pane">
            <form  name="loginForm" method="post" action="${ctx}/pages/Login/login.do">
              <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">账号</label>
                <div class="layui-input-inline">
                  <input type="text" name="username" id="loginName" type="text" onfocus="if(this.value=='请输入用户名'){this.value='';this.style.color='#000'}"
			   			onblur="if(this.value==''){this.value='请输入用户名';this.style.color='#aaa'}" value="请输入用户名"  
			   			required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                  <input type="password" name="password"  id="loginPass" type="password"  onfocus="if(this.value=='请输入密码'){this.value='';this.style.color='#000'}"
			   			onblur="if(this.value==''){this.value='请输入密码';this.style.color='#aaa'}" value="请输入密码" 
			   			required lay-verify="required" autocomplete="off" class="layui-input">
                </div>
              </div>
              <div class="layui-form-item">
                <label for="L_vercode" class="layui-form-label">验证码</label>
                <div class="layui-input-inline">
                  <input type="text" id="L_vercode" name="vercode" required lay-verify="required" placeholder="输入验证码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid">
                  <span style="color: #c00;">
				  
				  </span>
                </div>
              </div>
              <div class="layui-form-item">
                <button class="layui-btn" lay-filter="*" lay-submit onclick="login();return false;">立即登录</button>                
              </div>              
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="fly-footer">
  <p><a href="http://fly.layui.com/" target="_blank">行政服务中心 联系电话：22833097</a> 2017 &copy; <a href="" target="_blank">承建单位 上海中信信息发展股份有限公司</a></p>
</div>
<script src="${ctx}/pages/pc/static/jquery/jquery-1.6.2.min.js" type="text/javascript"></script>
<script src="${ctx}/pages/pc/static/jquery/jquery.cookie.js" type="text/javascript" ></script>
<script src="${ctx}/pages/pc/static/CryptoJS/md5.js" type="text/javascript" ></script>
<script src="${ctx}/pages/pc/static/layui/layui/layui.js"></script>
<script type="text/javascript">
	function login(){
		var username = $("#loginName").val();
		var password = $("#loginPass").val();
		var remembName = $("#remembName").attr("checked");
		if(!username||!password){
			return alert("帐号或密码不能为空！");
		}
		if(remembName){
			$.cookie("username", username);
		}
		//console.log(CryptoJS.MD5($('#loginPass').val()));
		//$('#loginPass').val(CryptoJS.MD5($('#loginPass').val()));
		document.loginForm.submit();
	}

	var msg = '${msg}'
	$(document).ready(function(){
		var username = $.cookie("username");
		if(username){
			$("#loginName").val(username);
			$("#remembName").attr("checked",true);
		}
		var _body = document.getElementById('loginbody');
		try{
			// _body.addEventListener('keyup', enterHandler, true);
		} catch(ex) {
			//_body.attachEvent('onkeyup', enterHandler);
		}
	});

	function enterHandler(event){
		var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
		if (keyCode == 13) {
			login();
		}
	}
</script>
</body>
</html> 