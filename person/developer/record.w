<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:244px;top:414px;">
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="recruRecord" onCustomRefresh="recruRecordCustomRefresh">
  	<column label="id" name="id" type="Integer" xid="xid1"></column>
  <column label="添加时间" name="addTime" type="String" xid="xid2"></column>
  <column label="添加用户" name="addUser" type="String" xid="xid3"></column>
  <column label="描述" name="description" type="String" xid="xid4"></column>
  <column label="结束时间" name="endTime" type="String" xid="xid5"></column>
  <column label="图片路径" name="imageUrl" type="String" xid="xid6"></column>
  <column label="职位" name="job" type="String" xid="xid7"></column>
  <column label="职位标签" name="jobTag" type="String" xid="xid8"></column>
  <column label="需求标签" name="requireTag" type="String" xid="xid16"></column>
  <column name="yearSalary" type="String" xid="xid17"></column>
  </div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
   <div component="$UI/system/components/justep/titleBar/titleBar" title="我的应聘记录" class="x-titlebar" style="background-color:#EA413C;" xid="titleBar1">
   <div class="x-titlebar-left" xid="left1">
   <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-arrow-left-c" onClick="{operation:'window.close'}" xid="backBtn">
   <i class="icon-arrow-left-c" xid="i5"></i></a>
   </div>
   <div class="x-titlebar-title" xid="title1">我的应聘记录</div>
   <div class="x-titlebar-right reverse" xid="right1">
    </div> 
    </div>
    </div>
   <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content  x-scroll-view" xid="content2"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   
   <div class="x-scroll-content" xid="div2">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="recruRecord">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item m-list-group-item" bind-click="detailClick"><div xid="div5" class="m-relation">
   <div xid="div10" class="media-left">
    <img alt="" xid="image1" class="img-rounded media-object" style="width:75px;" height="80px" bind-attr-src=' $model.getImageUrl( $object.val("imageUrl"))'></img></div> 
   <div class="media-body" xid="div14"> 
    <div class="pull-right text-muted m-absolution" xid="div15">
     <span xid="span9" style="color:#EA413C;" bind-text=' $object.val("yearSalary") + "万/年"'></span></div> 
    <h5 class="media-heading lead text-black m-h" xid="h51" bind-text="ref('job')" ></h5>
    <div class="text-muted" xid="div16">
     <span xid="span21" class="m-publisher" bind-text="ref('addUser')"></span></div> 
    <div xid="div4">
     <span xid="span22" class="m-time-exp" bind-text="ref('addTime')"></span>
     <span xid="span23" class="m-time-exp" bind-text="ref('description')"></span>
     </div> </div> </div>
  <div xid="div8">
  <div xid="div6" class="m-joblist-tagdiv">
   <span xid="span5" class="m-joblist-tag">本科学历</span>
   <span xid="span10" class="m-joblist-tag">1年以上</span>
   <span xid="span6" class="m-joblist-tag">普通话</span>
   </div></div>
  <span xid="span14" class="m-div9 m-shenhezhong"><![CDATA[等待回复]]></span></li></ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span3">加载更多...</span></div> </div></div></div></div>
   <div class="x-panel-bottom" xid="bottom1"></div></div></div>