<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:370px;top:386px;"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" title="看过的视频" class="x-titlebar" style="background-color:#EA413C;" xid="titleBar1">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-arrow-left-c" onClick="{operation:'window.close'}" xid="backBtn">
   <i class="icon-arrow-left-c" xid="i5"></i></a></div> 
     <div class="x-titlebar-title" xid="title1">看过的视频</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content  x-scroll-view" xid="content1" _xid="C70F3671BA1000019E261AB610971330" style="bottom: 0px;">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-scroll-content" xid="div5">
     
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" limit="10">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" class="list-group-item" bind-click="detailClick">
       <div class="media m-media" xid="div7">
        <div class="media-left" xid="div3">
         <img alt="" xid="image1" class="img-rounded media-object m-videoimg" src="$UI/Hello/person/developer/images/111.png"></img></div> 
        <div class="media-body" xid="div6">
         <div class="text-muted" xid="div3">
          <span xid="span4"><![CDATA[第一章 初识WeX5]]></span></div> 
         <div xid="div10" class="m-div10">
          <span xid="span2"><![CDATA[已学]]></span>
  <span xid="span1"><![CDATA[20%]]></span>
  <span xid="span5" class="block" style="padding:0px 5px;"></span><span xid="span7" class="pull-right"><![CDATA[]]>
  </span></div> </div> </div> </li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div12">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div> 
   </div></div>