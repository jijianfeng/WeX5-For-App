define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.backToPerson = function(event){
		justep.Shell.showPage(require.toUrl("../person/person_developer.w"));
	};

	return Model;
});