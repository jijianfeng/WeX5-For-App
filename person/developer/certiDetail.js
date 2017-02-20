define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};

	Model.prototype.certiDataCustomRefresh = function(event){
		var certiData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('./json/singleCertisify.json'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	certiData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("请检查网络连接");
            }
        });
	};

	return Model;
});