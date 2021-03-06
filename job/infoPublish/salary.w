<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:355px;top:182px;">
 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="salaryData" idColumn="id" onCustomRefresh="salaryDataCustomRefresh">
	  <column label="id" name="id" type="String" xid="xid1"></column>
	  <column label="期望年薪" name="salary" type="String" xid="xid2"></column>
  </div>
  
  </div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top2" style="color:white;">
    <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="年薪范围" style="color:white;">
     <div class="x-titlebar-left text-white" xid="left1">
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="搜索" xid="button6" icon="icon-arrow-left-c" onClick="{operation:'window.close'}" style="color:white;">
       <i xid="i6" class="icon-arrow-left-c"></i>
       <span xid="span6">搜索</span></a> </div> 
     <div class="x-titlebar-title" xid="title1">年薪范围</div>
     <div class="x-titlebar-right text-white" xid="right1"></div></div> </div> 
   <div class="x-panel-content " xid="content1">
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
     <div class="x-contents-content m-content" xid="content2">
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list2" data="salaryData" limit="10">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li2" bind-click="setSalary"><div xid="div1" class="clearfix m-fabuzhiwei-list">
   <span xid="span1" class="m-fabuzhiwei-title" bind-text=' $object.val("salary")'><![CDATA[]]></span>
   </div></li></ul> </div></div> </div> 
  </div> 
   <div class="x-panel-bottom m-foot" xid="bottom2" style="height:auto">
   </div></div></div> 