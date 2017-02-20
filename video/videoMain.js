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

//	Model.prototype.videoData1CustomRefresh = function(event){
//		var videoData1 = event.source;
//        $.ajax({
//            type: "GET",
//            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/video_list'),
//            dataType: 'json',
//            async: false,
//            cache: false,
//            success: function(data){
//            	videoData1.loadData(data);//将返回的数据加载到data组件
//            },
//            error: function(){
//              throw justep.Error.create("加载数据失败");
//            }
//        });
//	};
	Model.prototype.videoDataRefresh = function(event){
		var videoData1 = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/video_main_list'),
            dataType: 'json',//'http://42.96.159.122:8080/WeX5/mobile/video_main_list'
            async: false,
            cache: false,
            success: function(data){
            	videoData1.loadData(data);//将返回的数据加载到data组件
//            	alert("1");
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
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
              throw justep.Error.create("加载数据失败2");
            }
        });	
	};
	
	Model.prototype.detailClick = function(event){
		var row = event.bindingContext.$object;
		justep.Shell.showPage(require.toUrl("./videodetail.w?id="+row.val("fVideoId")));
	};
	
	Model.prototype.docDetail = function(event){
		var row = event.bindingContext.$object;
		if(row.val("isChapter")==1){
			return;
		}
		justep.Shell.showPage(require.toUrl("./docDetail.w?id="+row.val("id")));
	};
	
	return Model;
});