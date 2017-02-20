define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.expDataCustomRefresh = function(event){
		var expData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('../json/exp.json'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	expData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
	};

	Model.prototype.setExp = function(event){
		var row = event.bindingContext.$object;
		alert(row.val("year"));
		this.close();
	};

	return Model;
});