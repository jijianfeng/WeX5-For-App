define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	var jpushInstance = require("./jpush");
	require("cordova!cn.jpush.phonegap.JPushPlugin");
	var Model = function() {
		//debugger;
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"newsActivity" : {
					url : require.toUrl('./news/newsActivity.w')
				},
				"detail" : {
					url : require.toUrl('./news/detail.w')
				},
				"post" : {
					url : require.toUrl('./news/post.w')
				},
				"person" : {
					url : require.toUrl('./person/person.w')
				},
				"registered" : {
					url : require.toUrl('./login/registered.w')
				},
				"registeMobile" : {
					url : require.toUrl('./login/registeMobile.w')
				},
				"goout" : {
					url : require.toUrl('./person/goout.w')
				},
				"login" : {
					url : require.toUrl('./login/login.w')
				}
			}
		});

	};
	
	Model.prototype.modelLoad = function(event) {
		justep.Shell.userId = justep.Bind.observable();
		justep.Shell.pushId = justep.Bind.observable();
		justep.Shell.userType = justep.Bind.observable();
		justep.Shell.userName = justep.Bind.observable();
		justep.Shell.userImage = justep.Bind.observable();
		var userLocal = (localStorage.getItem("userUUID") && JSON.parse(localStorage.getItem("userUUID"))) || null;
		if (userLocal) {
			//alert(userLocal.accountType);
			justep.Shell.userId.set(userLocal.userid || "UNKNOWN");
			justep.Shell.userName.set(userLocal.name || "UNKNOWN");
			justep.Shell.userType.set(localStorage.getItem("userType") || "UNKNOWN");
			justep.Shell.userImage.set(localStorage.getItem("imageUrl") || "UNKNOWN");
			//alert(localStorage.getItem("userType"));
//			alert(justep.Shell.userId.get());
//			alert(userLocal.userid);
		} else {
		}
		
		//判断通知栏信息
		jpushInstance.getRegistrationID().done(function(id) {
			//alert(id);
			localStorage.setItem("pushId", id);
			//alert(localStorage.getItem("pushId"));
		});
	};

	return Model;
});