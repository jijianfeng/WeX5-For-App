define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.detailClick = function(event){
		justep.Shell.showPage(require.toUrl("../../video/videodetail.w?id=4"));
	};

	return Model;
});