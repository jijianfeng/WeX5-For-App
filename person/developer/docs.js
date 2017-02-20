define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.docDataCustomRefresh = function(event){
		var docData = event.source;
        $.ajax({
            type: "GET",
//            url: require.toUrl('./json/docData.json'),
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/chapter_text_list'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	docData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("文档数据加载");
            }
        });
	};

	Model.prototype.docDetailClick = function(event){
		var row = event.bindingContext.$object;
		/*if(raw.val("isChapter")==1)
			return;*/
		justep.Shell.showPage(require.toUrl("../../video/docDetail.w?id="+row.val("id")));
	};

	return Model;
});