define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("cordova!com.justep.cordova.plugin.qq");
	require("cordova!com.justep.cordova.plugin.weibo");
	require("cordova!com.justep.cordova.plugin.weixin.v3");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.logoutBtnClick = function(event) {
		var type = justep.Shell.userType.get();
		var name = justep.Shell.userName.get();
		if (!confirm("确定要注销用户：" + name + "吗？")) {
			return;
		}
		if (navigator.QQ) {
			navigator.QQ.logout();
		}
		;
		if (navigator.Weibo) {
			navigator.Weibo.logout();
		}
		;
		if ("WX" == type) {

		}
		//alert('http://42.96.159.122:8080/WeX5/mobile/go_out?id='+localStorage.getItem("pushId"));
		$.ajax({
            type: "POST",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/go_out?id='+localStorage.getItem("pushId")),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	if(data.status==1){
            		//alert("成功");
            		justep.Shell.userType.set("");
					justep.Shell.userName.set("");
					justep.Shell.userImage.set("");
					justep.Shell.userId.set("");
					localStorage.removeItem("userUUID");
					localStorage.removeItem("imageUrl");
					localStorage.removeItem("userType");
					justep.Util.hint("注销成功");
            	}
            	else{
            		throw justep.Error.create("环境异常异常");
            	}
            },
            error: function(){
              throw justep.Error.create("初始化失败，请检查网络或稍后重试");
            }
        });
//		justep.Shell.userType.set("");
//		justep.Shell.userName.set("");
//		justep.Shell.userImage.set("");
//		justep.Shell.userId.set("");
//		localStorage.removeItem("userUUID");
//		localStorage.removeItem("imageUrl");
//		localStorage.removeItem("userType");
//		justep.Util.hint("注销成功");
		setTimeout(function() {
			justep.Shell.showPage("main");
		}, 2500);
	};

	Model.prototype.modelLoad = function(event) {
	};
	return Model;
});
