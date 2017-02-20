<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:m;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:659px;top:314px;" onLoad="modelLoad"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="postData" onCustomRefresh="postDataCustomRefresh" idColumn="fID" confirmRefresh="false">
  <column label="id" name="fID" type="Integer" xid="xid1"></column>
  <column label="名称" name="fName" type="String" xid="xid2"></column>
  <column label="头像" name="fImg" type="String" xid="xid6"></column>
  <column label="次数" name="fNumber" type="Integer" xid="xid4"></column>
  <column label="留言内容" name="fContent" type="String" xid="xid5"></column>
  <column label="时间" name="fTime" type="String" xid="xid7"></column>
  <column label="是否点赞" name="fIsChecked" type="Integer" xid="xid3"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"> 
        <div class="x-titlebar-left text-white"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="搜索" xid="button6" icon="icon-arrow-left-c" onClick="{operation:'window.close'}"> 
            <i xid="i6" class="icon-arrow-left-c"/>  
            <span xid="span6">搜索</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title"/>  
        <div class="x-titlebar-right reverse text-white"> 
           
        <span xid="span13" class="badge" bind-text='$model.postData.count() +  "跟贴"'><![CDATA[]]></span></div> 
      </div> 
    </div>  
    
    <div class="x-panel-content" _xid="C70E9023D060000195971C92F4702C60" style="background:#eee;"> 
    	
    	    
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content1"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   
   <div class="x-scroll-content m-post-content" xid="div8"><div xid="div5"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="postData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="panel-heading" style="background:white;"><div class="media"><div class="media-left">
    <img src="" alt="" bind-attr-src='$model.getImageUrl(val("fImg"))' class="img4" xid="image2"></img></div>
  <div class="media-body" xid="div1">
   <span xid="span5" bind-text="ref('fName')" class="text-primary"></span>
   <img xid="img9" src="../img/preview_unlike_icon_highlighted.png" style="margin-right:15%;height:20px;width:22px;" class="pull-right" bind-click="img9Click" />
   <span xid="span7" bind-text="ref('fNumber')" class="pull-right" style="margin-right:5%;"></span>
   <div class="text-muted" xid="div2">
    <span bind-text="ref('fTime')" xid="span1"></span></div>
   <div bind-text=' $object.val("fContent")' xid="div4"></div></div></div></li></ul> </div></div></div>
   <div class="x-content-center x-pull-up" xid="div9">
    <span class="x-pull-up-label" xid="span4">加载更多...</span></div> 
  </div></div></div></div>
     
    <div class="x-panel-bottom" xid="bottom1"> 
      <div class="input-group"> 
        <span class="input-group-addon"> 
          <i xid="i6" class="icon-edit text-muted"/>
        </span>  
        <input component="$UI/system/components/justep/input/input" class="form-control x-inputText" xid="content"
        placeHolder="回帖是种好习惯！" /> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label x-nopadding"
          label="发送" xid="button10" bind-click="span9Click" > 
          <i xid="i8"/>  
          <span class="text-muted"></span> 
        </a>
      </div>   
    </div> 
  </div> 
</div>
