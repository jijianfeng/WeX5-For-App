define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};
	
	Model.prototype.resume_dataCustomRefresh = function(event){
		var resume_data = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('./json/resume_browse.json'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	resume_data.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
	};
	
	return Model;
});