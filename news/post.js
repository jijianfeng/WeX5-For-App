define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	require("cordova!plugin.http.request");
	
	var Model = function() {
		this.callParent();
	};
	
	//图片路径转换
	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};
	
	//加载数据
	
	
	Model.prototype.span9Click = function(event,postDataCustomRefresh){
		var context = this.getContext();
		var id = context.getRequestParameter("id");
		var content = this.comp("content").val();
		var postData = this.comp("postData");
		//alert(id);
		//alert(justep.Shell.userId.get());
		//alert('http://42.96.159.122:8080/WeX5/mobile/comment_add?id='+id+"&content"+content+"&type=0&userId="+justep.Shell.userId.get()+"&userType="+localStorage.getItem("userType"));
		if(content==""){
			justep.Util.hint("回复能容不能为空");
			return;
		}
		if(!justep.Shell.userId.get()){
			justep.Util.hint("请登录后再回复");
			return;
		}
		$.ajax({
            type: "POST",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/comment_add?id='+id+"&content="+content+"&type=0&userId="+justep.Shell.userId.get()+"&userType="+localStorage.getItem("userType")),
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
            		//alert("大大大111"+postData.count());
            	}
            	else{
            		justep.Util.hint("发表失败");
            	}
            },
            error: function(){
              throw justep.Error.create("加载数据失败,请重启app");
            }
        });
        //alert("大大大"+postData.count());
	};
	
	Model.prototype.postDataCustomRefresh = function(event){
		var context = this.getContext();
		var id = context.getRequestParameter("id");
		var postData = event.source;
        $.ajax({
            type: "GET",
            url: require.toUrl('http://42.96.159.122:8080/WeX5/mobile/comment_list?type=0&commentId='+id+"&listNumber=20"),
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
	
	
	
/*	//内容隐藏显示
	$(".hiddenBtn").each(function(){
		var height=0;
		$(this).on("click",function(){
			var obj=$(this).parent().find(".features");	
			if(obj.height()<=105){
				height=obj.outerHeight(true);
				obj.css("height","auto");
				$(this).find("i").attr("class","icon-chevron-up");
			} else {
				obj.css("height",height);
				$(this).find("i").attr("class","icon-chevron-down");
			}
		});
	});*/
		
	//页脚文本框宽度
	Model.prototype.modelLoad = function(event){
		var width=$(window).width()-100;
		$(".form-control", this.getRootNode()).css({"width":width});
		//$(".x-inputText", this.getRootNode()).val("写跟贴");
	};
	
	//功能目录
	Model.prototype.popMenuBtnClick = function(event){
		this.comp("popMenu").show();
	};
	
	//打开跟帖页
	Model.prototype.postClick = function(event){
		justep.Shell.showPage("post");
	};
	
	
	Model.prototype.postListPullUp = function(event){
		//alert("刷新");
		this.comp("postData").refreshData();
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
	
//	Model.prototype.switchImage = function(url){
//		//alert(url);
//		var row = event.bindingContext.$object;
//		if(row.fIsChecked=="1"){
//			return require.toUrl('../../img/preview_like_icon_highlighted.png')
//		}
//		else{
//			return require.toUrl('../../img/preview_unlike_icon_highlighted.png')
//		}
//    }
	
	return Model;
});