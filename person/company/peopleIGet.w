<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="infoData" onCustomRefresh="infoRefresh">
  	<column label="id" name="id" type="String" xid="xid9"></column>
  <column label="姓名" name="addUser" type="String" xid="xid10"></column>
  <column label="图片" name="imageUrl" type="String" xid="xid11"></column>
  <column label="添加时间" name="addTime" type="String" xid="xid12"></column>
  <column label="地址" name="address" type="String" xid="xid13"></column>
  <column label="期望年薪" name="expectedSalary" type="String" xid="xid14"></column>
  <column label="学历" name="quality" type="String" xid="xid15"></column>
  <column label="个人简介" name="userIntro" type="String" xid="xid18"></column>
  <column label="毕业学校" name="userSchool" type="String" xid="xid19"></column>
  <column label="用户标签" name="userTag" type="String" xid="xid20"></column>
  <column label="工作状态" name="workStatus" type="String" xid="xid21"></column>
  <column label="工作年龄" name="workTime" type="String" xid="xid22"></column>
  </div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="我招纳的人才"
          class="x-titlebar" style="background-color:#EA413C;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">我招纳的人才</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div class="x-scroll-content" xid="div37">
   
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="infoData">
    <ul class="x-list-template" xid="listTemplateUl1">
     <li xid="li1" class="list-group-item" bind-click="infoClick">
      <div xid="div5" class="m-relation">
       <div xid="div10" class="media-left">
        <img alt="" xid="image1" class="img-rounded media-object" style="width:75px;" height="80px" bind-attr-src=' $model.getImageUrl(  $model.infoData.val("imageUrl"))'></img></div> 
       <div class="media-body" xid="div14">
        <div class="pull-right text-muted m-absolution" xid="div15">
         <span xid="span9" bind-text="ref('will_salary')" style="color:#EA413C;"></span></div> 
        <h5 class="media-heading lead text-black m-h" bind-text="ref('addUser')" xid="h51"></h5>
        <div class="text-muted" xid="div16">
         <span xid="span21" bind-text=' $object.val("expectedSalary") + "万/年"'  class="m-publisher"></span></div> 
        <div xid="div1">
         <span xid="span22" bind-text="ref('add_time')" class="m-time-exp"></span>
         <span xid="span23" bind-text="ref('userIntro')" class="m-time-exp"></span><span xid="span14" class="pull-right m-div9 m-shenhezhong">暂未处理</span></div> 
  </div> </div> 
      <div xid="div2" class="m-joblist-tagdiv">
       <span xid="span3" class="m-joblist-tag">本科学历</span>
       <span xid="span4" class="m-joblist-tag">1年以上</span>
       <span xid="span2" class="m-joblist-tag">普通话</span></div> </li> </ul> </div> </div></div>
  </div> 
</div>