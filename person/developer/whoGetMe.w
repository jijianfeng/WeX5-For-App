<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="jobData" onCustomRefresh="jobDataCustomRefresh" idColumn="id">
  <column label="id" name="id" type="Integer" xid="xid1"></column>
  <column label="添加时间" name="addTime" type="String" xid="xid2"></column>
  <column label="添加用户" name="addUser" type="String" xid="xid3"></column>
  <column label="描述" name="description" type="String" xid="xid4"></column>
  <column label="结束时间" name="endTime" type="String" xid="xid5"></column>
  <column label="图片路径" name="imageUrl" type="String" xid="xid6"></column>
  <column label="职位" name="job" type="String" xid="xid7"></column>
  <column label="职位标签" name="jobTag" type="String" xid="xid8"></column>
  <column label="需求标签" name="requireTag" type="String" xid="xid16"></column>
  <column name="yearSalary" type="String" xid="xid17"></column></div>
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="谁招纳了我"
          class="x-titlebar" style="background-color:#EA413C;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">谁招纳了我</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="jobData">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" class="list-group-item m-list-group-item" bind-click="detailClick">
     <div xid="div5" class="m-relation">
      <div xid="div10" class="media-left">
       <img alt="" xid="image1" class="img-rounded media-object" style="width:75px;" height="80px" bind-attr-src=' $model.getImageUrl(  $object.val("imageUrl"))'></img></div> 
      <div class="media-body" xid="div14">
       <div class="pull-right text-muted m-absolution" xid="div15">
        <span xid="span9" style="color:#EA413C;" bind-text=' $object.val("yearSalary")+"万/年"'></span></div> 
       <h5 class="media-heading lead text-black m-h" bind-text="ref('job')" xid="h51"></h5>
       <div class="text-muted" xid="div16">
        <span xid="span21" class="m-publisher"><![CDATA[杭州泽微科技]]></span></div> 
       <div xid="div1">
        <span xid="span22" bind-text="ref('addTime')" class="m-time-exp"></span>
        <span xid="span23" bind-text="ref('description')" class="m-time-exp"></span></div> </div> </div> 
     <div xid="div6" class="m-joblist-tagdiv">
      <span xid="span5" class="m-joblist-tag">本科学历</span>
      <span xid="span10" class="m-joblist-tag">1年以上</span>
      <span xid="span6" class="m-joblist-tag">普通话</span></div> </li> </ul> </div></div>
  </div> 
</div>