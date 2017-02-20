define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.beginTest = function(event){
		var IdNumber = this.getContext().getRequestParameter("IdNumber");
		justep.Shell.showPage(require.toUrl("./test.w?IdNumber="+IdNumber));
	};
	
	return Model;
});