<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:325px;top:344px;" onLoad="modelLoad">
  
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="docData" onCustomRefresh="docDataCustomRefresh" idColumn="id">
  	<column label="id" name="id" type="String" xid="xid6"></column>
  <column label="标题" name="title" type="String" xid="xid7"></column>
  <column label="是否为章" name="isChapter" type="String" xid="xid8"></column></div>
  
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="videoData1" idColumn="id" onCustomRefresh="videoDataRefresh">
   <column label="id" name="id" type="Integer" xid="xid1"></column>
  <column label="视频类型" name="Ftype" type="Integer" xid="column9"></column>
  <column label="点击量" name="fCount" type="Integer" xid="xid5"></column>
  <column label="添加时间" name="fAddTime" type="String" xid="column11"></column>
  <column label="介绍最基本的WeX5信息" name="remark" type="String" xid="xid27"></column>
  <column label="1" name="status" type="Integer" xid="xid28"></column>
  <column label="第一章 初识WeX5" name="title" type="String" xid="xid29"></column>
  <column label="26917" name="userId" type="String" xid="xid30"></column>
  <rule xid="rule1">
   <col name="fPostNumber" xid="ruleCol1">
    <calculate xid="calculate1">
     <expr xid="default1">$row.val(&quot;fPostNumber&quot;)&gt;=0?$row.val(&quot;fPostNumber&quot;)+&quot;人访问&quot;:&quot;&quot;;</expr></calculate> </col> </rule>
  <column label="标题2" name="fVideoTitle" type="String" xid="xid33"></column>
  <column label="视频简介2" name="fVideoOmit" type="String" xid="xid34"></column>
  <column label="视频封面" name="fVideoImg" type="String" xid="xid2"></column>
  <column label="视频Id" name="fVideoId" type="String" xid="xid3"></column></div></div> 
  <div class="x-popOver-overlay" xid="div13"/> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
   <div class="x-panel-top" xid="top2"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="学习" style="background-color:#EA413C;">
   <div class="x-titlebar-left" xid="left1"></div>
   <div class="x-titlebar-title" xid="title1">学习</div>
   <div class="x-titlebar-right reverse" xid="right1"></div></div></div>
   <div class="x-panel-content" xid="content2" style="background-color:#eee;">
   
   <div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs3" style="background-color:#eee;">
   <ul class="nav nav-tabs m-video-tab-ul" xid="ul2" style="color:#FFFFFF;">
    <li class="active m-video-tab1 m-video-tab-li" xid="li7" style="width:50%;color:#400080;text-align:center;">
     <a content="tabContent3" xid="tabItem4" class="pull-right"><![CDATA[文档]]></a></li> 
    <li role="presentation" xid="li8" style="width:50%;text-align:center;" class="m-video-tab2 m-video-tab-li">
     <a content="tabContent4" xid="tabItem5" class="pull-left"><![CDATA[视频]]></a></li> 
   </ul> 
   <div class="tab-content" xid="div4">
   
    <div class="tab-pane active m-doc-content" xid="tabContent3" align="left">
     
  	<div class="input-group" xid="div13" style="background:white;">
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" style="border-right-style:none;" xid="input1" placeHolder="输入关键字搜索"></input>
   <div class="input-group-addon" style="background-color:transparent;border-left-style:none;" xid="div1">
    <i class="icon-android-search" xid="i2"></i></div> </div><div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" limit="10" data="docData" disablePullToRefresh="true">
   <ul class="x-list-template m-doc-ul" xid="listTemplateUl2">
   
    <li xid="li4" bind-css="{'docChapter' : $object.val(&quot;isChapter&quot;) == '1','notDocChapter' :  $object.val(&quot;isChapter&quot;) == '0'}" bind-click="docDetail" class="m-doc-li"><i src="" alt="" xid="image2" class="icon-chevron-right" bind-visible=' $object.val("isChapter")==0' style="color:#EA413C;margin-right:7px;"></i><div xid="div2" bind-text=' $object.val("title")'></div>
  </li></ul> </div>
  </div>

    <div class="tab-pane" xid="tabContent4">
      
   <div class="x-panel-content" xid="content1" style="bottom: 0px;" _xid="C706E2CB33100001519811103BD01A94">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
    
   <div class="x-scroll-content" xid="div5">
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit7" style="margin-top:0px;">
   <div class="x-edit m-search-box" xid="div8">
    <div class="input-group" xid="div9" style="background:white;">
     <input component="$UI/system/components/justep/input/input" class="form-control x-edit" style="border-right-style:none;" xid="input5" placeHolder="请输入视频关键字"></input>
     <div class="input-group-addon" style="background-color:transparent;border-left-style:none;" xid="div11">
      <i class="icon-android-search" xid="i3"></i></div> </div> </div> </div>
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="videoData1" limit="10">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item m-list-group-item" bind-click="detailClick">
     <div class="media m-media" xid="div7">
      <div class="media-left" xid="div3">
       <img alt="" xid="image1" class="img-rounded media-object m-videoimg" bind-attr-src='$model.getImageUrl( $object.val("fVideoImg"))'></img></div> 
      <div class="media-body" xid="div6">
       <div class="text-muted" xid="div3" bind-text=' $object.val("title")'>
        <span xid="span4" bind-text="ref('fVideoTitle1')">标题</span></div> 
       <div xid="div10" class="m-div10">
        <i class="icon-android-social-user" xid="i1"></i>
        <span xid="span2" bind-text="ref('fCount')"></span></div> </div> </div> </li> </ul> </div>
        
        </div>
   <div class="x-content-center x-pull-up" xid="div12">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div>
      
   
    </div>
    </div> 
    </div>
    
    
    
       
 
   
  
   
 <!--  <table component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="videoData" limit="3">
   <thead xid="thead1">
    <tr xid="tr1">
     <th xid="default1"></th>初级视频教程</tr> </thead> 
   	<tbody class="x-list-template" xid="listTemplate1">
    <tr xid="tr2">
    <td xid="td1">
     <img alt="" xid="image5" class="img-responsive img_new" bind-attr-src="$model.getImageUrl(val('fImg'))" style="height:37px;width:37px;"></img>
     <span style="text-align: justify;" bind-text="ref('fTitle')" class="text-muted" xid="span38"></span>
     </td>
     </tr> 
     </tbody> 
     </table> -->
     </div>
   </div></div>