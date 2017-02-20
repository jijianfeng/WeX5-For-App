define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.setSalary = function(event){
		var row = event.bindingContext.$object;
		alert(row.val("salary"));
		this.close();
	};

	Model.prototype.salaryDataCustomRefresh = function(event){
		var videoData1 = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('../json/salaryJson.json'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	videoData1.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
	};

	return Model;
});