define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.resumeRefresh = function(event){
		var resumeData = event.source;
		$.ajax({
			
		});
	};
	
	Model.prototype.nextClick = function(event) {
		var row = event.bindingContext.$object;
		justep.Shell.showPage(require.toUrl("./resume3.w"));
	};

	Model.prototype.submit = function(event){
		var real_name = this.comp("real_name").val();
		var user_sex = this.comp("user_sex").val();
		var user_age = this.comp("user_age").val();
		var user_phone = this.comp("user_phone").val();
		var user_mail = this.comp("user_mail").val();
		var real_name = this.comp("real_name").val();
		var user_address = this.comp("user_address").val();
		
		var quality = this.comp("quality").val();
		var user_school = this.comp("user_school").val();
		var major = this.comp("major").val();
		var work_time = this.comp("work_time").val();
		var expected_job = this.comp("expected_job").val();
		var user_intro = this.comp("user_intro").val();
		$.ajax({
			
		});
	};

	return Model;
});