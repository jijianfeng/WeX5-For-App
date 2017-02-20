define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};
	
	//页面初始化
	Model.prototype.modelLoad = function(event){
		/*$("input[xid=keyInput]", this.getRootNode()).val("请输入关键字...");*/
		var src=$("html").hasClass("iosstatusbar");
		if(src){
			$(".x-popOver-overlay").css({"top":"108px"});
		}
	};

	Model.prototype.jobDataCustomRefresh = function(event){
		var jobData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/recru_list'),
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

	Model.prototype.detailClick = function(event){
		var row = event.bindingContext.$object;
		//alert(row.val("id"));
		justep.Shell.showPage(require.toUrl("./detail.w?id="+row.val("id")));
	};

	Model.prototype.infoRefresh = function(event){
		var infoData = event.source;
        $.ajax({
            type: "POST",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/resume_list'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	infoData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据错误");
            }
        });
	};

	Model.prototype.infoClick = function(event){
		var row = event.bindingContext.$object;
		justep.Shell.showPage(require.toUrl("./infoDetail.w?id="+row.val("id")));
	};

	Model.prototype.publish = function(event){
		var role = this.getContext().getRequestParameter("role");
		role = 1;
		if(role==1)
//			justep.Shell.showPage(require.toUrl("./recruPublish/recruPublish.w"));
			justep.Shell.showPage(require.toUrl("./infoPublish/infoPublish.w"));
//		else
//			justep.Shell.showPage(require.toUrl("./recruPublish/recruPublish.w?id="+row.val("id")));
	};

	return Model;
});