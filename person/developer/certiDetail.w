<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
  	<div component="$UI/system/components/justep/data/data" autoLoad="true" xid="certiData" onCustomRefresh="certiDataCustomRefresh" idColumn="id">
  <column label="id" name="id" type="String" xid="xid1"></column>
  <column label="等级" name="level" type="String" xid="xid2"></column>
  <column label="分数" name="score" type="String" xid="xid3"></column>
  <column label="获得时间" name="addTime" type="String" xid="xid4"></column>
  <column label="图片路径" name="imgUrl" type="String" xid="xid5"></column>
<master xid="default1" data="certiData"></master></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="证书详情"
          class="x-titlebar" style="background-color:#EA413C;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">证书详情</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="certiData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div1"><img class="c-image" src="" alt="" xid="image1" bind-attr-src=' $model.getImageUrl( $object.val("imgUrl"))'></img></div>
    <h1 xid="h14"><![CDATA[]]></h1><div xid="div2">
    <div xid="div4" class="c-div" style="border-color:#C0C0C0 #C0C0C0 #C0C0C0 #C0C0C0;border-style:ridge dashed groove dashed;border-width:1px 0px 0px 0px;"><i xid="i1" class="icon-android-checkmark"></i><span xid="span1" class="c-left-div"><![CDATA[资格认证：]]></span>
    <span xid="span2" bind-text="ref('level')" class="c-right-div"></span><h1 xid="h11"><![CDATA[]]></h1>
  </div>
  
  <div xid="div5" class="c-div" style="border-width:0px 0px 0px 0px;border-color:#C0C0C0 #C0C0C0 #C0C0C0 #C0C0C0;border-style:solid dashed solid dashed;"><i xid="i2" class="icon-android-checkmark"></i><span xid="span3" class="c-left-div" style="vertical-align:middle;"><![CDATA[考试分数：]]></span>
  <span xid="span4" bind-text="ref('score')" class="c-right-div" style="vertical-align:middle;"></span><h1 xid="h12"><![CDATA[]]></h1>
  </div>
  
  
  
  <div xid="div6" class="c-div"><i xid="i3" class="icon-android-checkmark"></i><span xid="span5" class="c-left-div"><![CDATA[获得时间：]]></span>
  <span xid="span6" bind-text="ref('addTime')" class="c-right-div"></span>
  </div>
  </div>
  </li></ul> </div>
  
  </div>
  </div> 
</div>