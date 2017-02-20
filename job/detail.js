define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.singleJobCustomRefresh = function(event){
		var context = this.getContext();
		var id = context.getRequestParameter("id");
		var jobData = event.source;
        $.ajax({
            type: "POST",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/recru_detail?id='+id),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	//debugger;
            	jobData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("请检查网络连接");
            }
        });
	};
	
	//图片路径转换
	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};
	
	Model.prototype.toCollection = function(event){
		var id = this.getContext().getRequestParameter("id");
		justep.Shell.showPage(require.toUrl("../person/developer/jobCollection.w"));
	}; 
	
	Model.prototype.setCollection = function(event){
		var data = this.comp("singleJob");
		if(data.getValue("isCollected")==1){
			if (confirm("确定取消收藏吗？")) {
				data.setValue("isCollected",0);
			}
		}else{
			data.setValue("isCollected",1);
		}
	}; 
	
	Model.prototype.switchText = function(event){
		var data = this.comp("singleJob");
		if(data.getValue("isCollected")==1){
			return "已收藏";
		}else{
			return "收藏";
		}
	}; 
	
	Model.prototype.getJob = function(event){
		alert("应聘时校验简历是否完善，完善则应聘成功，否则跳到简历页~");
		var data = this.comp("singleJob");
		if(data.getValue("isSent")==1){
			alert("无法取消应聘操作！");
		}else{
			if (confirm("应聘操作无法取消，确定继续吗？")) {
				data.setValue("isSent", 1);
			}
		}
	}; 
	
	Model.prototype.switchStatus = function(event){
		var data = this.comp("singleJob");
		if(data.getValue("isSent")==1){
			return "已应聘";
		}else{
			return "应聘";
		}
	};
	
	/*Model.prototype.getResume = function(event){
		var row = event.bindingContext.$object;
		var id = this.getContext().getRequestParameter("id");
		justep.Shell.showPage(require.toUrl("../user/jobCollection.w?id="+id));
	}; */
	
	return Model;
});