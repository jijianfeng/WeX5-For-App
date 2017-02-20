define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = justep.Baas;
	require("cordova!com.justep.cordova.plugin.security.mob");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.sendsmsButton = function(event) {
		if (!navigator.mobsms) {
			justep.Util.hint("请安装最新版本(含插件)体验！");
			return;
		}
		;
		var phoneInput = this.comp("phonenumber").val();
		var reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;
		if (reg.test(phoneInput)) {
			this.comp("sendsmsbutton").mytimer();
			navigator.mobsms.send({
				"zone" : "86",
				"phoneNumber" : phoneInput
			}, function(info) {
			}, function(err) {
				justep.Util.hint(err);
			});
		} else {
			justep.Util.hint("手机号码不正确！")
		}
	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		var comp = this.comp("sendsmsbutton");
		Timmer.apply(comp, [ 60, "免费获取验证码", "重新发送" ]);

		document.addEventListener("deviceready", function() {
			self._userDefaultName = "App用户";
		}, false);

		if (justep.Browser.isX5App) {
			this._deviceType = "app";
		} else {
			this._deviceType = "web";
			window.navigator = window.navigator || {};
			window.navigator.mobsms = {
				init : function(appinfo) {
					alert("发送失败，只支持x5app");
				},
				send : function(appinfo) {
					alert("发送失败，只支持x5app");
				},
				verify : function(appinfo) {
					alert("无法验证，只支持x5app");
				}

			};
		}
		;
//		this.comp('userData').filters.setVar("usera", this._userID);
		this.loadUserData();
		//alert("新增用户？？？");
	};

	// 依据 verify 返回值决定向Baas 保存用户。
	// 使用的是第一种方式。更安全的要求参见第二种方式
	// 第二种方式: http://wiki.mob.com/smssdk-service-verify/
	Model.prototype.verifyButton = function(event) {
		var self = this;

		var phoneInput = this.comp("phonenumber").val();
		var verifyCode = this.comp("verifyCode").val();
		var password = this.comp("password").val();
		var nickName = this.comp("nickName").val();
		var userSex = this.comp("userSex").value;
		var userType = this.comp("userType").value;
		//alert(password+":"+nickName+":"+userSex+":"+userType);
		var reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;
		var verifyCodeReg = /^\d{4}$/;

		if (verifyCodeReg.test(verifyCode) && reg.test(phoneInput)) {
			function success(info) {
				if (info.result == -1) {
					$.ajax({
			            type: "POST",
			            url: require.toUrl("http://42.96.159.122:8080/WeX5/mobile/register?phone="+phoneInput+"&password="+password+"&nickName="+nickName+"&usersex=1&userAge=20&userType=1&registrationId="+localStorage.getItem("pushId")),
			            dataType: 'json',
			            async: false,
			            cache: false,
			            success: function(data){
			            	//newsData.loadData(data);//将返回的数据加载到data组件
			            	if(data.status==1){
			            		//添加信息
			            		var user = {};
			            		user.userid = data.data;
			            		user.name = nickName;
			            		justep.Shell.userId.set(data.data);
								justep.Shell.userType.set(0);
								justep.Shell.userName.set(nickName);
								justep.Shell.userImage.set("http://42.96.159.122:8080/WeX5_data/default.jpg");
								alert(JSON.stringify(user));
								localStorage.setItem("userUUID", JSON.stringify(user));
								localStorage.setItem("imageUrl", "http://42.96.159.122:8080/WeX5_data/default.jpg");
								localStorage.setItem("userType", 0);
			            		justep.Util.hint("注册成功！");
			            		setTimeout(function() {
									justep.Shell.showPage("main");
								}, 2500);
			            	}
			            	else{
			            		justep.Util.hint("改手机号码已经被注册！")
			            	}
			            },
			            error: function(){
			              throw justep.Error.create("加载数据失败");
			            }
			        });
					setTimeout(function() {
						justep.Shell.closePage();
					}, 3000);
				} else
					justep.Util.hint("验证失败：" + JSON.stringify(info), {
						"type" : "danger"
					});
			}
			;

			function fail(info) {
				alert("失败：" + JSON.stringify(info));
			}
			;

			this.verify({
				"zone" : "86",
				"phoneNumber" : phoneInput,
				"verificationCode" : verifyCode
			}, success, fail);
		} else {
			justep.Util.hint("验证码有误！")
		}
		;
	};

	Model.prototype.loadUserData = function() {
//		var userData = this.comp("userData");
//		if (!userData.loaded) {
//			userData.refreshData();
//			// 如果客户信息为空，新增客户信息
//			if (userData.getCount() === 0) {
//				this.comp("userData").newData({
//					index : 0,
//					defaultValues : [ {
//						"fID" : this._userID,
//						"passwd" : "",
//						"fName" : this._userDefaultName,
//						"fPhoneNumber" : this._fPhoneNumber,
//						"fAddress" : this._userDefaultAddress
//					} ]
//				});
//			}
//		}
	};

	Model.prototype.verify = function(args, success, error) {
		navigator.mobsms.verify(args, success, error);
	};

	function Timmer(loopSecond, titile1, title2, lisentner) { // todo
		// 还要检查一个结果返回变量。
		this.loopSecond = loopSecond;
		this.waittime = loopSecond;
		var self = this;
		this.mytimer = function() {
			if (self.waittime <= 0) {
				self.set({
					"disabled" : false,
					"label" : titile1
				});
				this.waittime = loopSecond; // 可设 60秒
			} else {
				self.set({
					"disabled" : true,
					"label" : title2 + "(" + self.waittime + ")"
				});
				self.waittime--;
				setTimeout(function() {
					self.mytimer();
				}, 1000);
			}
		}

	};

	return Model;
});