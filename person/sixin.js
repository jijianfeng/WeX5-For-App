define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	//页脚文本框宽度
	Model.prototype.modelLoad = function(event){
		var width=$(window).width()-100;
		$(".form-control", this.getRootNode()).css({"width":width});
		//$(".x-inputText", this.getRootNode()).val("写跟贴");
	};
	
	return Model;
});