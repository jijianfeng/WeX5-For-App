define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	// 进入列表页
	Model.prototype.listClick = function(event) {
		justep.Shell.showPage("registered");
	};

	Model.prototype.div16Click = function(event){
		justep.Shell.showPage("registeMobile");
	};


	return Model;
});