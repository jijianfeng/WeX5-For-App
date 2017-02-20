define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	

	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.singleCustomRefresh = function(event){
		var context = this.getContext();
		var id = context.getRequestParameter("id");
		var jobData = event.source;
        $.ajax({
            type: "POST",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/resume_detail?id='+id),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	jobData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("请检查网络连接");
            }
        });
	};
	
	Model.prototype.toCollection = function(event){
		var id = this.getContext().getRequestParameter("id");
		debugger;
		justep.Shell.showPage(require.toUrl("../user/jobCollection.w"));
	}; 
	
	//关注操作
	Model.prototype.switchText = function(event){
		var data = this.comp("singleinfoData");
		if(data.getValue("isConnected")==1){
			return "已关注";
		}else{
			return "关注";
		}
	}; 
	
	Model.prototype.setConnection = function(event){
		var data = this.comp("singleinfoData");
		if(data.getValue("isConnected")==1){
			if (confirm("确定取消关注吗？")) {
				data.setValue("isConnected",0);
			}
		}else{
			data.setValue("isConnected",1);
		}
	}; 
	
	//招纳操作
	/*Model.prototype.switchStatus = function(event){
		var data = this.comp("singleinfoData");
		if(data.getValue("isGotten")==1){
			return "已招纳";
		}else{
			return "招纳";
		}
	}; */
	
	/*Model.prototype.getPerson = function(event){
		var data = this.comp("singleinfoData");
		if(data.getValue("isGotten")==1){
			alert("不能重复招纳！");
		}else{
			if (confirm("招纳操作无法取消，确定继续吗？")) {
				data.setValue("isGotten",1);
			}
		}
		
	}; */
	
	Model.prototype.getResume = function(event){
//		var row = event.bindingContext.$object;
		var id = this.getContext().getRequestParameter("id");
		justep.Shell.showPage(require.toUrl("../developer/resume.w?id="+id));
	}; 
	
	Model.prototype.getOrNot = function(event){
		if (confirm("确定取消招纳？")) {
				
			}
	}; 
	
	return Model;
});