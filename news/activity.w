<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:m;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:246px;top:134px;"
    onLoad="modelLoad">
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="detail" idColumn="id" onCustomRefresh="detailCustomRefresh" limit="20">
	  <column label="添加时间" name="addTime" type="String" xid="xid6"/>  
      <column label="添加人" name="addUser" type="String" xid="xid7"/> 
      <column label="访问量" name="allNumber" type="String" xid="xid7"/> 
      <column label="内容" name="content" type="String" xid="xid7"/> 
      <column label="终止时间" name="endTime" type="String" xid="xid7"/> 
      <column label="图片路径" name="imageUrl" type="String" xid="xid7"/> 
      <column label="未知" name="joinNumber" type="String" xid="xid7"/> 
      <column label="排序" name="sortNumber" type="String" xid="xid9"/>  
      <column label="标题" name="title" type="String" xid="xid10"/>
      <column label="状态" name="status" type="Integer" xid="xid10"/>
  </div>
    <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="postData" onCustomRefresh="postDataCustomRefresh" idColumn="fID" limit="20">
      <column label="id" name="fID" type="String" xid="xid1"/>  
      <column label="名称" name="fName" type="String" xid="xid2"/>  
      <column label="头像" name="fImg" type="String" xid="xid6"/>  
      <column label="来源" name="fSource" type="String" xid="xid3"/>  
      <column label="次数" name="fNumber" type="Integer" xid="xid4"/>  
      <column label="留言内容" name="fContent" type="String" xid="xid5"/>  
      <column label="时间" name="fTime" type="String" xid="xid7"/>
    </div>
	  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="activityData" idColumn="id" onCustomRefresh="activityDataCustomRefresh">
		  <column label="id" name="id" type="String" xid="xid8"></column>
		  <column label="是否已报名" name="already" type="Integer" xid="xid11"></column>
	  </div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="49"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"> 
        <div class="x-titlebar-left text-white"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="搜索" xid="button6" icon="icon-arrow-left-c" onClick="{operation:'window.close'}"> 
            <i xid="i6" class="icon-arrow-left-c"/>  
            <span xid="span6">搜索</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title"></div>  
        <div class="x-titlebar-right reverse text-white"> 
          <a class="pull-right"><span bind-click="postClick" class="badge"><![CDATA[1跟帖]]></span></a></div> 
      </div> 
    </div>  
    <div class="x-panel-content x-cards panel-body"> 
      <h3 class=" text-black" xid="title" bind-text="detail.ref('title')"><![CDATA[title]]></h3>  
      <div class="h6 text-muted"> 
        <span><![CDATA[超级管理员]]></span>  
        <span bind-text=' $model.detail.val("addTime")'>10-12 09：31</span> 
      </div>  
      <div class="h6">
        <img alt="" class="img-responsive" bind-attr-src="detail.ref('imageUrl')"/>
      </div>
      <div class="text-black lead" bind-html=' $model.detail.val("content")'>
      	内容
      </div>  
      <div class="h5">
        <span><![CDATA[来源：]]></span>  
        <span><![CDATA[WeX5官网]]></span>
      </div>  
      <div class="list-group" xid="listGroup1"> 
        <div class="list-group-item">
          <div class="panel-heading o-nopadding" bind-text="'分享到'"/>  
          <div component="$UI/system/components/bootstrap/row/row" class="row text-center text-muted panel-body x-nomargin o-nopadding"
            xid="row1"> 
            <div class="col col-xs-3 o-nopadding" xid="col5"> 
              <img src="" alt="" bind-attr-src="$model.getImageUrl('../img/detail1.png')"
                class="o-img4" xid="image5"/>  
              <div bind-text="'易信朋友圈'" xid="div5"/>
            </div>  
            <div class="col col-xs-3 o-nopadding" xid="col6"> 
              <img src="" alt="" bind-attr-src="$model.getImageUrl('../img/detail2.png')"
                class="o-img4" xid="image6"/>  
              <div bind-text="'微信朋友圈'" xid="div6"/>
            </div>  
            <div class="col col-xs-3 o-nopadding" xid="col7"> 
              <img src="" alt="" xid="image4" bind-attr-src="$model.getImageUrl('../img/detail3.png')"
                class="o-img4"/>  
              <div bind-text="'新浪微博'" xid="div7"/>
            </div>  
            <div class="col col-xs-3 o-nopadding" xid="col8"> 
              <img src="" alt="" xid="image4" bind-attr-src="$model.getImageUrl('../img/detail4.png')"
                class="o-img4"/>  
              <div bind-text="'更多'" xid="div8"/>
            </div> 
          </div>
        </div>
      </div>  
      <div class="list-group" xid="listGroup2"> 
        <div class="list-group-item">
          <div class="panel-heading o-nopadding" bind-text="'热门跟帖'"/>
          <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="postData" limit="2" disablePullToRefresh="true" disableInfiniteLoad="true"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
            <!-- 开始 -->
              <li xid="li1" class="panel-heading o-nopadding">
                <div class="media">
                  <div class="media-left">
                    <img src="" alt="" bind-attr-src="$model.getImageUrl(val(&quot;fImg&quot;))"
                      class="o-img4" xid="image2"/>
                  </div>  
                  <div class="media-body">
             
                    <span xid="span5" bind-text="ref('fName')" class="text-primary"/>
                    <img  xid="img9"  src="../img/preview_unlike_icon_highlighted.png" style="margin-right:5%;height:20px;width:22px;" class="pull-right" bind-click="img9Click"/>
  					 <span xid="span7" bind-text="ref('fNumber')" class="pull-right"  style="margin-right:5%;"></span>
                    <div class="text-muted">
                      <span bind-text="ref('fTime')"/>  
                    </div>  
                    <div bind-text=" $object.val(&quot;fContent&quot;)"/> 
                  </div>
                </div>
              </li>
              <!-- 结束 -->
            </ul> 
          </div>  
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1">
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="查看更多跟帖" xid="button3" onClick="postClick"> 
              <i xid="i3"/>  
              <span xid="span12" class="text-muted">查看更多跟帖</span>
            </a>
          </div>
        </div> 
      </div>
    </div>  
    <div class="x-panel-bottom" xid="bottom1"> 
      <div class="input-group"> 
        <span class="input-group-addon"> 
          <i xid="i6" class="icon-edit text-muted"/> 
        </span>  
        <input component="$UI/system/components/justep/input/input" class="form-control x-inputText"
          xid="nameInput"/> 
      </div>  
      <span class="form-control-feedback" aria-hidden="true"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label o-nopadding"
          label="发送" xid="button9"> 
          <i xid="i8"/>  
          <span class="text-muted">发送</span> 
        </a> 
      </span> 
        <span xid="span18" class="m-baoming-box" bind-css="{'m-baoming-box' :$model.activityData.val(&quot;already&quot;) == '0','already' :  $model.activityData.val(&quot;already&quot;) == '1'}" bind-click="bmClick"><![CDATA[报名]]></span>
    </div> 
  </div> 
</div>
