define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.setDes = function(event){
		var des = this.comp("textarea1").val();
		this.close();
		
	};

	Model.prototype.onClose = function(event){
		var des = this.comp("textarea1").val();
		this.close();
		/*if(!des==""||!des==null){
			if(confirm("内容自动保存，请确定填写完成？")){
				this.close();
			}else{
				
			}
		}else{
			this.close();
		}*/
	};

	return Model;
});