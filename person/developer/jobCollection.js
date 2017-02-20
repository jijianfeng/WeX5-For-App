define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};

	Model.prototype.dataFresh = function(event){
		var colData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('./json/jobColList.json'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	colData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("请检查网络连接");
            }
        });
	};

	//todoMVC 
	// 清除完成
	Model.prototype.clearCompletedBtnClick = function(event) {
		var todoData = this.comp("jobColData");
		var rows = [];
		todoData.eachAll(function(param) {
				rows.push(param.row);
		});
		todoData.deleteData(rows,{async:true});
	};
	
	//保存
	Model.prototype.saveData = function() {
		localStorage.setItem(this.STORE_ID, JSON.stringify(this.comp("jobColData").toJson(false)));
	};
	
	// 删除
	Model.prototype.deleteBtnClick = function(event) {
		var row = event.bindingContext.$object;
		this.comp("jobColData").deleteData(row,{async:true});
	};
	
	Model.prototype.loadData = function() {
		this.comp("jobColData").loadData(JSON.parse(localStorage.getItem(this.STORE_ID)));
	};
	
	return Model;
});