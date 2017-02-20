<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:506px;top:296px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="certiData" onCustomRefresh="certiDataCustomRefresh" idColumn="id">
  <column label="id" name="id" type="String" xid="xid1"></column>
  <column label="等级" name="level" type="String" xid="xid2"></column>
  <column label="分数" name="score" type="String" xid="xid3"></column>
  <column label="获得时间" name="addTime" type="String" xid="xid4"></column>
  <column label="图片路径" name="imgUrl" type="String" xid="xid5"></column>
</div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="已获得的证书"
          class="x-titlebar" style="background-color:#EA413C;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">已获得的证书</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="certiData" limit="10">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item m-list-group-item" bind-click="detailClick">
     <div xid="div5" class="m-relation">
      <div xid="div10" class="media-left">
       <img alt="" xid="image1" class="img-rounded media-object" style="width:75px;" height="80px" bind-attr-src=' $model.getImageUrl( $object.val("imgUrl"))'></img></div> 
      <div class="media-body" xid="div14">
       <div class="pull-right text-muted m-absolution" xid="div15">
        </div> 
       <h5 class="media-heading lead text-black m-h" xid="h51" bind-text=' $object.val("level")' style="color:#EA413C;"></h5>
       
       <div class="text-muted" xid="div16">
   <span xid="span21" bind-text="ref('addTime')" class="m-publisher"></span>
  <span xid="span1" style="color:#000000;"><![CDATA[获得]]></span></div><div xid="div2">
        <h1 xid="h11"><![CDATA[]]></h1><span xid="span22" class="m-time-exp"><![CDATA[资格考试分数：]]></span>
        <span xid="span23" bind-text=' $object.val("score")' class="m-time-exp"></span>
  </div> </div> </div> 
     </li> </ul> </div></div></div>
  </div> 
</div>