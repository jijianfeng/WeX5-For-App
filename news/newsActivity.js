define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("./js/loadData");
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	var Model = function() {
		this.callParent();
		this.lastContentXid = "newsContent";
	};
	
	//图片路径转换
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
	
	
	Model.prototype.imgDataCustomRefresh = function(event) {
		/*
		 * 1、加载轮换图片数据
		 * 2、根据data数据动态添加carouse组件中的content页面 
		 * 3、如果img已经创建了，只修改属性
		 * 4、第一张图片信息存入localStorage
		 */
		var url = require.toUrl("http://42.96.159.122:8080/WeX5/mobile/image_list");
		allData.loadDataFromFile(url, event.source, true);
		var me = this;
		var carousel = this.comp("carousel1");
		event.source.each(function(obj) {
			var fImgUrl = require.toUrl(obj.row.val("fImgUrl"));
			var fUrl = require.toUrl(obj.row.val("fUrl"));
			if (me.comp('contentsImg').getLength() > obj.index) {
				$(carousel.domNode).find("img").eq(obj.index).attr({
					"src" : fImgUrl,
					"pagename" : fUrl
				});
//				if (obj.index == 0) {
//					localStorage.setItem("index_BannerImg_src", fImgUrl);
//					localStorage.setItem("index_BannerImg_url", fUrl);
//				}
			} else {
				carousel.add('<img src="' + fImgUrl + '" class="tb-img1" bind-click="openPageClick" pagename="' + fUrl + '"/>');
			}
		});
	};
	
	// 打开页面
	Model.prototype.openPageClick = function(event) {
		/*
		 * 1、点击组件增加算定义属性：pagename 2、获取自定义属性，打开 对应页面
		 */
		var pageName = event.currentTarget.getAttribute('pagename');
		if (pageName)
			justep.Shell.showPage(require.toUrl(pageName));
	};
		
	//加载最热资讯数据
	Model.prototype.productDataCustomRefresh = function(event){
		//debugger;
		var newsData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/hot_list'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	newsData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
	};
	
	//活动数据
	Model.prototype.data3CustomRefresh = function(event){
		var techData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/activity_list'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	techData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
	};	
	/*Model.prototype.navDataCustomRefresh = function(event){
		var navData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('./main/json/navData.json'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	navData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });	
	};*/
	
	//进入列表页
	Model.prototype.listClick = function(event){
		/*
		代码如下：
		justep.Shell.showPage("searchList");
		*/
	};
		
	
	//24小时要闻
	Model.prototype.importantBtnClick = function(event){
		/*
		代码如下：
		justep.Shell.showPage("important");
		*/
	};	

	Model.prototype.label4Click = function(event){
		//debugger;
		justep.Shell.showPage(require.toUrl("./news.w"));
	};	

	Model.prototype.label5Click = function(event){
		//debugger;
		justep.Shell.showPage(require.toUrl("./techNewsList.w"));
	};	

	Model.prototype.li1Click = function(event){
		//debugger;
		var row = event.bindingContext.$object;
		//alert(row.val('fID'));
		justep.Shell.showPage(require.toUrl("./detail.w?id="+row.val("fID")));
	};	

	Model.prototype.li2Click = function(event){
		//debugger;
		var row = event.bindingContext.$object;
		//alert(row.val('fID'));
		justep.Shell.showPage(require.toUrl("./activity.w?id="+row.val("id")));
	};	
	
	Model.prototype.contents1ActiveChange = function(event){
		var to = event.to;
		if (to >= 1) {
			// 优化内存占用
			$('.x-window-container', this.comp('content1').$domNode).css('display', 'none');
			this.comp('mainContainer' + (to + 1)).$domNode.css('display', 'block');

			this.comp('mainContainer' + (to + 1)).load();
		}

	};
	
	Model.prototype.newsListPullDown = function(event){
		//alert("刷新");
		this.comp("imgData").refreshData();
		this.comp("newsData").refreshData();
		this.comp("data3").refreshData();
	};
	
	return Model;
});