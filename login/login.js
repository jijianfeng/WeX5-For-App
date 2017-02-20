define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!plugin.http.request");
	require("cordova!com.justep.cordova.plugin.qq");
	require("cordova!com.justep.cordova.plugin.weibo");
	require("cordova!com.justep.cordova.plugin.weixin.v3");

	// 仅作为示例用，如果正式开发，更好的方案参见takeout,从云服务器去请求微信
	var weixinApp = "wxc08fa78b0a117595";
	var weixinSecrt = "648dc0f1d889525095ed0cb2bea05720";

	var qqAppId = "1105342766";// demo QQ app id.

	var Model = function() {
		this.callParent();
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	// 进入注册页
	Model.prototype.registeredClick = function(event) {
		justep.Shell.showPage("registered");
	};

	Model.prototype.loginQQClick = function(event) {
		if (!navigator.QQ) {
			justep.Util.hint("请安装最新版本(含插件)体验！");
			return;
		}
		;
		var self = this;
		function success(info) {
			var user = {};
			user.userid = info.userid;
			user.accountType = "QQ";
			if (info.userid && info.access_token) {
				self.oathQQInfo(qqAppId, info.access_token, info.userid, function(name,imageurl,gender) {
					user.name = name || "NONAME";
					//justep.Shell.userType.set(user.accountType);
					justep.Shell.userId.set(info.userid);
					justep.Shell.userType.set(1);
					justep.Shell.userName.set(user.name);
					justep.Shell.userImage.set(imageurl);
					localStorage.setItem("userUUID", JSON.stringify(user));
					localStorage.setItem("imageUrl", imageurl);
					localStorage.setItem("userType", 1);
					//添加服务器信息。
					$.ajax({
			            type: "POST",
			            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/add_new_three?threeId='+info.userid+"&threeType="+1+"&nickName="+user.name+"&gender="+gender+"&imageUrl="+imageurl+"&registrationId="+localStorage.getItem("pushId")),
			            dataType: 'json',
			            async: false,
			            cache: false,
			            success: function(data){
			            	if(data.status==1){
			            		
			            	}
			            	else{
			            		throw justep.Error.create("账号异常");
			            	}
			            },
			            error: function(){
			              throw justep.Error.create("链接失败，请检查网络或稍后重试");
			            }
			        });
					
					justep.Util.hint("登录成功");
					setTimeout(function() {
						justep.Shell.showPage("main");
					}, 3000);
				});

			}
		}
		;
		navigator.QQ.ssoLogin(success, function(info) {
			alert("登录失败");
		});

	};

	Model.prototype.loginWeiboClick = function(event) {
		if (!navigator.Weibo) {
			justep.Util.hint("请安装最新版本(含插件)体验！");
			return;
		}
		;

		var self = this;
		var onSuccess = function(info) {
			if (!info) {
				justep.Util.hint("登录失败 ", {
					"type" : "danger"
				});
				return;
			}
			var user = {};
			user.userid = info.id;
			user.accountType = "Weibo";
			user.name = info.name || "NONAME";

//			justep.Shell.userType.set(user.accountType);
			justep.Shell.userName.set(user.name);
			localStorage.setItem("userUUID", JSON.stringify(user));
			justep.Util.hint("登录成功");

			setTimeout(function() {
				justep.Shell.showPage("main");
			}, 3000);

		}

		navigator.Weibo.ssoLogin(function(info) {
			self.oathWeiboInfo(info.access_token, info.userid, onSuccess);
		}, function(info) {
			alert("登录失败");
		});

	};

	Model.prototype.oathQQInfo = function(appid, token, openid, success, error) {
		var qqUrl = "https://graph.qq.com/user/get_user_info?" + "access_token=" + token + "&" + "oauth_consumer_key=" + appid + "&" + "openid=" + openid + "&format=json";
		var httpReq = new plugin.HttpRequest();
		httpReq.getJSON(qqUrl, function(status, data) {
			// 这里返回用户的信息
			//success(data.figureurl_qq_1);//头像
			success(data.nickname,data.figureurl_qq_1,data.gender);
		});

	}

	Model.prototype.oathWeiboInfo = function(access_token, uid, onSuccess) {
		var url = "https://api.weibo.com/2/users/show.json?access_token=" + access_token + "&uid=" + uid;
		var httpReq = new plugin.HttpRequest();
		httpReq.getJSON(url, function(status, data) {
			onSuccess(data);
		});

	}

	Model.prototype.saveAccount = function(event) {

	}

	Model.prototype.weiboLoginBtn = function(event) {
		navigator.Weibo.ssoLogin(function(mess) {
			alert(JSON.stringify(mess));
		}, function(mess) {
			alert(JSON.stringify(mess));
		});

	};

	// x5 app
	Model.prototype.loginWeixinClicked = function(event) {
		var self = this;
		if (!navigator.weixin) {
			justep.Util.hint("请安装最新版本(含插件)体验！");
			return;
		}
		;

		var weixin = navigator.weixin;

		weixin.auth(function(info) {
			self.weixinCode2Token(info, self.authSuccess)
		},

		function(reason) {

			justep.Util.hint("登录失败: " + JSON.stringify(reason), {
				"type" : "danger"
			});
		});

	};

	Model.prototype.authSuccess = function(access_token, openid) {
		// https://api.weixin.qq.com/sns/userinfo?access_token=ACCESS_TOKEN&openid=OPENID
		if (!(access_token && openid)) {
			justep.Util.hint("登录失败:", {
				"type" : "danger"
			});
			return;
		}

		var url = "https://api.weixin.qq.com/sns/userinfo?access_token=" + access_token + "&openid=" + openid;
		var httpReq = new plugin.HttpRequest();

		httpReq.getJSON(url, function(status, data) {

			if (status) {
				justep.Util.hint("登录失败:", {
					"type" : "danger"
				});
			}
			var user = {};
			user.userid = data.openid;
			user.accountType = "WX";
			user.name = data.nickname || "NONAME";

			justep.Shell.userType.set(user.accountType);
			justep.Shell.userName.set(user.name);
			localStorage.setItem("userUUID", JSON.stringify(user));
			justep.Util.hint("登录成功");
			setTimeout(function() {
				justep.Shell.showPage("main");
			}, 3000);
			// 微信的返回内容
			// "openid":"OPENID",
			// "nickname":"NICKNAME",
			// "sex":1,
			// "province":"PROVINCE",
			// "city":"CITY",
			// "country":"COUNTRY",
			// "headimgurl":
			// "http://wx.qlogo.cn/mmopen/g3MonUZtNHkdmzicIlibx6iaFqAc56vxLSUfpb6n5WKSYVY0ChQKkiaJSgQ1dZuTOgvLLrhJbERQQ4eMsv84eavHiaiceqxibJxCfHe/0",
			// "privilege":[
			// "PRIVILEGE1",
			// "PRIVILEGE2"
			// ],
			// "unionid": " o6_bmasdasdsad6_2sgVt7hMZOPfL"

		});
	};

	Model.prototype.weixinCode2Token = function(info, authSuccess) {
		var code = info.code;
		var url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + weixinApp + "&secret=" + weixinSecrt + "&code=" + code + "&grant_type=authorization_code";

		var httpReq = new plugin.HttpRequest();
		httpReq.getJSON(url, function(status, data) {

			if (status) {
				justep.Util.hint("登录失败:", {
					"type" : "danger"
				});
				return;
			}
			var unionid = data.unionid || "none";
			var openid = data.openid || "none";
			var access_token = data.access_token;
			authSuccess(access_token, openid);

		});

	};

	Model.prototype.loginIsmBtn = function(event) {
		var phoneInput = this.comp("nameInput").val();
		var passwordInput = this.comp("passwordInput").val();
		var reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;
		if (!reg.test(phoneInput)) {
			throw justep.Error.create("请输入正确的手机号！");
			return;
		}
		;
		//alert('http://42.96.159.122:8080/WeX5/mobile/check_login?userPhone='+phoneInput+"&password="+passwordInput);
		$.ajax({
            type: "POST",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/check_login?userPhone='+phoneInput+"&password="+passwordInput+"&registrationId="+localStorage.getItem("pushId")),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	if(data.status==1){
//            		justep.Shell.userType.set("0"); //0:No  1:qq  2:微信  3：微博
            		justep.Shell.userName.set(data.nickName);
            		justep.Shell.userImage.set(data.imageUrl);
            		justep.Shell.userId.set(data.threeId);
					justep.Shell.userType.set(0);
            		localStorage.removeItem("userUUID"); //重置本地用户
            		var user = {};
            		user.userid = data.threeId;
            		//user.accountType = data.threeType;  //0:No  1:qq  2:微信  3：微博
            		user.name = data.nickName;
            		localStorage.setItem("userType", 0);
            		localStorage.setItem("imageUrl", data.imageUrl);
            		//alert(JSON.stringify(user));
            		localStorage.setItem("userUUID", JSON.stringify(user));
            		justep.Util.hint("登录成功！");
            		setTimeout(function() {
						justep.Shell.showPage("main");
					}, 2500);
            	}
            	else{
            		throw justep.Error.create("密码错误或账号被禁用！");
            	}
            },
            error: function(){
              throw justep.Error.create("链接失败，请检查网络或稍后重试");
            }
        });

	};
	

	return Model;
});