<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="singleJob" onCustomRefresh="singleJobCustomRefresh" idColumn="id">
  	  <column label="id" name="id" type="String" xid="xid1"></column>
  <column label="图片" name="imageUrl" type="String" xid="xid2"></column>
  <column label="工作名称" name="job" type="String" xid="xid3"></column>
  <column label="发布者" name="addUser" type="String" xid="xid4"></column>
  <column label="年薪" name="yearSalary" type="String" xid="xi5"></column>
  <column label="项目经验" name="experience" type="String" xid="xid6"></column>
  <column label="地点" name="address" type="String" xid="xid7"></column>
  <column label="职位亮点" name="jobTag" type="String" xid="xid8"></column>
  <column label="职位要求" name="requireTag" type="String" xid="xid9"></column>
  <column label="职位描述" name="description" type="String" xid="xid10"></column>
  <column label="是否收藏" name="isCollected" type="Integer" xid="xid11"></column>
  <column label="是否应聘" name="isSent" type="Integer" xid="xid12"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-top" xid="top4"><div component="$UI/system/components/justep/titleBar/titleBar" title="职位详情" class="x-titlebar" style="background-color:#EA413C;" xid="titleBar2">
   <div class="x-titlebar-left" xid="left3">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
     <i class="icon-chevron-left" xid="i2"></i>
     <span xid="span13"></span></a> </div> 
   <div class="x-titlebar-title" xid="title3">职位详情</div>
   <div class="x-titlebar-right reverse" xid="right3"></div></div></div>
   <div class="x-panel-content" xid="content5">
   <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2">
   <div class="x-contents-content m-page" xid="yingping">
   <div xid="div3" class="m-div3">
    <div xid="div5" class="m-jobDetail-imgBox">
     <img src="" alt="" xid="image1" style="height:56px;width:63px;" bind-attr-src=' $model.singleJob.val("imageUrl")'></img>
  </div> 
    <p xid="p6" class="m-jobDetail-text m-div9 m-shenhezhong"  bind-text=' $model.singleJob.val("job_name")'><![CDATA[面试邀约]]></p><p xid="p2" class="m-jobDetail-text" bind-text=' $model.singleJob.val("job_name")'><![CDATA[]]></p>
    <p xid="p3" class="m-jobDetail-text" bind-text=' $model.singleJob.val("publisher")'><![CDATA[]]></p>
  </div> 
   <div xid="div1" class=" m-rowdiv">
    <div component="$UI/system/components/justep/row/row" class="x-row m-row" xid="row1">
     <div class="x-col" xid="col1">
      <div component="$UI/system/components/justep/output/output" class="x-output m-text-center m-money" xid="output2" bind-text='"薪酬"'></div><div component="$UI/system/components/justep/output/output" class="x-output m-text-center" xid="output1" bind-text='$model.singleJob.val("yearSalary")  +  "万/年"'></div>
      </div> 
     <div class="x-col" xid="col2"> 
      <div xid="div9" class="m-col">
       <div component="$UI/system/components/justep/output/output" class="x-output m-text-center m-exp" xid="output4" bind-text='"工作经验"'></div><div component="$UI/system/components/justep/output/output" class="x-output m-text-center" xid="output3" bind-text='$model.singleJob.val("experience")' bind-ref="singleJob.ref('experience')"></div>
       </div> </div> 
     <div class="x-col" xid="col3">
      <div component="$UI/system/components/justep/output/output" class="x-output m-text-center m-location" xid="output6" bind-text='"工作地点"'></div><div component="$UI/system/components/justep/output/output" class="x-output m-text-center" xid="output5" bind-text=' $model.singleJob.val("address")'></div>
      </div> </div> </div> 
   <div xid="div10" class="m-blockdiv"></div>
   <div xid="div2" class="m-paddingRL">
    <p xid="p1" class="m-jobDetail-p">职位亮点
  </p> 
    <div xid="div4" style="height:auto;" class="m-jobDetail-tagdiv">
   <span xid="span7" class="m-jobDetail-tag">弹性工作</span>
   <span xid="span2" class="m-jobDetail-tag">扁平管理</span>
   <span xid="span3" class="m-jobDetail-tag">年底双薪</span>
   </div></div> 
   <div xid="div11" class="m-blockdiv"></div>
   <div xid="div6" class="m-paddingRL"> 
    <p xid="p4" class="m-jobDetail-p">职位要求</p>
    <div xid="div7" class="m-jobDetail-tagdiv">
     <span xid="span5" class="m-jobDetail-tag">本科学历</span>
     <span xid="span1" class="m-jobDetail-tag">1年以上</span>
     <span xid="span6" class="m-jobDetail-tag">普通话</span></div> </div> 
   <div xid="div12" class="m-blockdiv"></div>
   <div xid="div8" class="m-paddingRL"> 
    <p xid="p5" class="m-jobDetail-p">职位描述</p>
    <div xid="span11" class="m-jobDetail-require" bind-html=' $model.singleJob.val("description")' ><![CDATA[]]></div></div> </div></div>
  </div>
   <div class="x-panel-bottom" xid="bottom3"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="私聊" xid="button1" icon="icon-android-contact">
    <i xid="i1" class="icon-android-contact"></i>
    <span xid="span16">私聊</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button2" icon="icon-android-star" label="收藏" onClick="setCollection">
    <i xid="i3" class="icon-android-star"></i>
    <span xid="span14" bind-text=" $model.switchText(event)">收藏</span></a> 
    
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="收藏夹" xid="button3" icon="icon-android-folder" onClick="toCollection">
    <i xid="i3" class="icon-android-folder"></i>
    <span xid="span15">收藏夹</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button4" icon="icon-navigate" label="已应聘">
    <i xid="i4" class="icon-navigate"></i>
    <span xid="span12">已应聘</span></a> </div></div></div></div>