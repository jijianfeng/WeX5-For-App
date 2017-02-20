define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.back = function(event){
		justep.Shell.closePage();
	};
	
	//加载数据
	Model.prototype.postDataCustomRefresh = function(event){
		var context = this.getContext();
		var id = context.getRequestParameter("id");
		var postData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/comment_list?type=2&commentId='+id),
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
	/**
Model.prototype.activityDataCustomRefresh = function(event){
		var context = this.getContext();
		var id = context.getRequestParameter("id");
		var detail = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/comment_list?type=2&commentId='+id),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	detail.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });	
	};
**/

	//图片路径转换
	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};
	
	//页脚文本框宽度
	Model.prototype.modelLoad = function(event){
		var width=$(window).width()-100;
		$(".form-control", this.getRootNode()).css({"width":width});
		$(".x-inputText", this.getRootNode()).val("写跟贴");
	};
	
	//功能目录
	Model.prototype.popMenuBtnClick = function(event){
		this.comp("popMenu").show();
	};
	
	//打开跟帖页
	Model.prototype.postClick = function(event){
		justep.Shell.showPage("post");
	};
	
	Model.prototype.detailCustomRefresh = function(event){
		var context = this.getContext();
		var id = context.getRequestParameter("id");
		var detail = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/activity_detail?id='+id),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	detail.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });	
	};
	
	Model.prototype.activityDataCustomRefresh = function(event){
		var detail = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('./json/activity.json'),
            dataType: 'json',
            async: false,
            cache: false,
            success: function(data){
            	detail.loadData(data);//将返回的数据加载到data组件
            },
            error: function(){
              throw justep.Error.create("加载数据失败");
            }
        });	
	};
	
	Model.prototype.bmClick = function(event){
		var data = this.comp("activityData");
		if(data.getValue("already")==0){
			if(confirm("您确定要报名吗？"))
					data.setValue("already",1);
		}else if(data.getValue("already")==1){
				alert("您已经报名过该活动!");
			}
	};
	
	Model.prototype.span8Click = function(event){
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
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/comment_add?id='+id+"&content="+content+"&type=0&userId="+justep.Shell.userId.get()+"&userType="+localStorage.getItem("userType")+"&listNumber=2"),
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
	};
	
	return Model;
});