define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};

	Model.prototype.recruRecordCustomRefresh = function(event){
		var recordData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/recru_list'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	//debugger;
            	recordData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("请检查网络连接");
            }
        });
	};

	Model.prototype.detailClick = function(event){
		var row = event.bindingContext.$object;
		justep.Shell.showPage(require.toUrl("./recordDetail.w?id="+row.val("id")));
	};

	return Model;
});