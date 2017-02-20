define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.modelParamsReceive = function(event){
		/*var salary = this.getContext().getRequestParameter("salary");
		if(salary!=""&&salary!=null){
			alert(salary);
		}
		var description = this.getContext().getRequestParameter("description");
		if(description==""){
		}*/
	};
	
	Model.prototype.nianxinClick = function(event){
//		var row = event.bindingContext.$object;
		/*justep.Shell.showPage(require.toUrl("./salary.w"));*/
		this.comp("salaryDialog").open();
		
	};
	
	Model.prototype.zhiweimiaoshuClick = function(event){
//		var row = event.bindingContext.$object;
		justep.Shell.showPage(require.toUrl("./description.w"));
	};
	
	Model.prototype.desClick = function(event){
		this.comp("desDialog").open();
	};
	
	Model.prototype.expClick = function(event){
		this.comp("expDialog").open();
	};
	
	Model.prototype.salaryDialogReceive = function(event){
		event.sender.getModel().setSalary();
	};
	
	return Model;
});