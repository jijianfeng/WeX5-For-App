<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:241px;top:305px;"><div component="$UI/system/components/justep/data/data" autoLoad="true" xid="docData" onCustomRefresh="docDataCustomRefresh" idColumn="id">
   <column label="id" name="id" type="String" xid="xid6"></column>
   <column label="标题" name="title" type="String" xid="xid7"></column>
   <column label="是否为章" name="isChapter" type="String" xid="xid8"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1"><div component="$UI/system/components/justep/titleBar/titleBar" title="看过的文档" class="x-titlebar" style="background-color:#EA413C;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-arrow-left-c" onClick="{operation:'window.close'}" xid="backBtn">
     <i class="icon-arrow-left-c" xid="i1"></i></a> </div> 
   <div class="x-titlebar-title" xid="title1">看过的文档</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   
   <div class="x-scroll-content" xid="div7"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="docData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item" bind-click="docDetailClick"><div xid="div2" bind-text=' $object.val("title")'><span xid="span1" class="m-h"><![CDATA[wex5发表新闻]]></span></div>
  <div xid="div3" class="m-reader" style="text-align:right;padding-right:10px;"><span xid="span3" bind-text=' $object.val("isChapter")'><![CDATA[18]]></span>
  <span xid="span4"><![CDATA[ 阅读]]></span></div><div xid="div4" class="m-article"><span xid="span5"><![CDATA[]]></span></div></li></ul> 
  </div></div>
   <div class="x-content-center x-pull-up" xid="div8">
    <span class="x-pull-up-label" xid="span7">加载更多...</span></div> </div></div></div>
  </div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div> 