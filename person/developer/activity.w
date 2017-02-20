<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:559px;top:460px;">
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="activityData" onCustomRefresh="activityDataCustomRefresh">
  	<column label="ID" name="id" type="String" xid="xid3"/> 
      <column label="添加时间" name="addTime" type="String" xid="xid6"/>  
      <column label="添加人" name="addUser" type="String" xid="xid7"/> 
      <column label="总报名人数限制" name="allNumber" type="Integer" xid="xid7"/> 
      <column label="内容" name="content" type="String" xid="xid7"/> 
      <column label="终止时间" name="endTime" type="String" xid="xid7"/> 
      <column label="图片路径" name="imageUrl" type="String" xid="xid7"/> 
      <column label="已报名人数" name="joinNumber" type="Integer" xid="xid7"/> 
      <column label="排序" name="sortNumber" type="Integer" xid="xid9"/>  
      <column label="标题" name="title" type="String" xid="xid10"/>
      <column label="状态" name="status" type="Integer" xid="xid10"/>
   <rule xid="rule1">
    <col name="joinNumber" xid="ruleCol1">
     <calculate xid="calculate1">
      <expr xid="default1">$row.val("joinNumber")&gt;=0?$row.val("joinNumber")+"人已报名":"";</expr></calculate> </col> </rule>
  </div>
  </div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" title="参加的活动" class="x-titlebar" style="background-color:#EA413C;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-arrow-left-c" onClick="{operation:'window.close'}" xid="backBtn">
     <i class="icon-arrow-left-c" xid="i5"></i></a> </div> 
   <div class="x-titlebar-title" xid="title1">参加的活动</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1" _xid="C70F3D71E35000013799117F14F081B0"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content  x-scroll-view" xid="content2"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView2">
   
   <div class="x-scroll-content" xid="div5"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="activityData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item" bind-click="activityDetail"><div class="media m-media" xid="div7">
   <div class="media-left" xid="div3">
    <img alt="" xid="image1" class="img-rounded media-object m-videoimg" bind-attr-src=' $model.getImageUrl( $object.val("imageUrl"))'></img></div> 
   <div xid="div8" class="media-body"><div class="x-flex1" xid="col27">
   <h5 class="o-nomargintop" xid="h56" bind-text=' $object.val("title")'><![CDATA[]]></h5>
   <span style="text-align: justify;" xid="span38" bind-text=' $object.val("content")'><![CDATA[]]></span>
   <span class="pull-right" xid="span39" bind-text=' $object.val("joinNumber") + "人报名"'><![CDATA[]]></span></div></div></div></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div6">
    <span class="x-pull-up-label" xid="span4">加载更多...</span></div> </div></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div> 