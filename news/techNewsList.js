define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	//检测是否ios
	Model.prototype.modelLoad = function(event){
		var src=$("html").hasClass("iosstatusbar");
		if(src){
			$(".x-popOver-overlay").css({"top":"108px"});
		}
	};
	
	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};

	Model.prototype.techNewsDataCustomRefresh = function(event){
		var techNewsData = event.source;
        $.ajax({
            type: "POST",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/activity_list'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	techNewsData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
	};

	Model.prototype.li1Click = function(event){
		var row = event.bindingContext.$object;
		justep.Shell.showPage(require.toUrl("./activity.w?id="+row.val("id")));
	};

	return Model;
});