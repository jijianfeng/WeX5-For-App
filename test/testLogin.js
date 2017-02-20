define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.getReady = function(event){
		var IdNumber = this.comp("input1").val();
		justep.Shell.showPage(require.toUrl("./ready.w?IdNumber="+IdNumber));
	};

	return Model;
});