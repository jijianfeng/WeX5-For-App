define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.back = function(event){
		justep.Shell.closePage();
	};
	//视频
	Model.prototype.singleVideoCustomRefresh = function(event){
		var context = this.getContext();
		var id = context.getRequestParameter("id");
		var singleVideo = event.source;
		//alert(id);
        $.ajax({
            type: "POST",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/video_detail?id='+id),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	singleVideo.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载视频失败");
            }
        });	
	};
	
	//加载数据
	Model.prototype.chapterDataCustomRefresh = function(event){
		var postData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/chapter_list'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	postData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载目录失败");
            }
        });
	};
	
	//加载评论数据
	Model.prototype.postDataCustomRefresh = function(event){
		var context = this.getContext();
		var id = context.getRequestParameter("id");
		var postData = event.source;
		//'alert('http://42.96.159.122:8080/WeX5/mobile/comment_list?type=0&commentId='+id);
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/comment_list?type=1&commentId='+id),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	postData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
	};
	
	Model.prototype.span8Click = function(event){
//		alert("dada");
		var context = this.getContext();
		var id = context.getRequestParameter("id");
		var content = this.comp("content").val();
		var postData = this.comp("postData");
		if(content==""){
			justep.Util.hint("回复能容不能为空");
			return;
		}
		if(!justep.Shell.userId.get()){
			justep.Util.hint("请登录后再回复");
			return;
		}
		//alert(justep.Shell.userId.get());
		//alert('http://42.96.159.122:8080/WeX5/mobile/comment_add?id='+id+"&content"+content+"&type=0&userId="+justep.Shell.userId.get()+"&userType="+localStorage.getItem("userType"));
		$.ajax({
            type: "POST",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/comment_add?id='+id+"&content="+content+"&type=1&userId="+justep.Shell.userId.get()+"&userType="+localStorage.getItem("userType")+"&listNumber=2"),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	if(data.status==1){
            		justep.Util.hint("发表成功！");
            		postData.add({
						fName : justep.Shell.userName.get(),
						fImg : justep.Shell.userImage.get(),
						fNumber : 0,
						fContent : content,
						fTime : "一分钟以内",
						FID : data.data
					});
            	}
            	else{
            		justep.Util.hint("发表失败");
            	}
            },
            error: function(){
              throw justep.Error.create("加载数据失败,请重启app");
            }
        });
	};
	
	Model.prototype.img9Click = function(event){
		//点赞
		//debugger;
		var row = event.bindingContext.$object;
		event.target.src="./img/preview_like_icon_highlighted.png";
		row.val("fNumber", row.val("fNumber")+1);
		//row.fNumber="123";
		//row.put("fNumber","1123");
		//row.set("fNumber",123123);
		//row.setCell(row.row.FID,'fNumber',"12312312");
		//alert(row.val("fNumber"));
		$.ajax({
            type: "POST",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/comment_like?id='+row.row.FID),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	//postData.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });
        //this.comp("postData").refreshData();
	};

	//图片路径转换
	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};
	
	//页脚文本框宽度
	Model.prototype.modelLoad = function(event){
		var width=$(window).width()-100;
		$(".form-control", this.getRootNode()).css({"width":width});
	};
	
	//功能目录
	Model.prototype.popMenuBtnClick = function(event){
		this.comp("popMenu").show();
	};
	
	//打开跟帖页
	Model.prototype.postClick = function(event){
		justep.Shell.showPage("post");
	};
	
	Model.prototype.modelParamsReceive = function(event){
		var singleVideo = this.comp("singleVideo");
        var video = this.getElementByXid("video1");
//        alert(singleVideo.getValue("fVideoTime"));
//        alert(singleVideo.getValue("fVideoPath"));
//        alert(singleVideo.getValue("fVideoImg"));
        $(video).attr("src",singleVideo.getValue("fVideoPath"));
        $(video).attr("poster",singleVideo.getValue("fVideoImg"));
	};
	
	return Model;
});