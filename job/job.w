<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="jobData" onCustomRefresh="jobDataCustomRefresh" idColumn="id">
  	<!-- <rule xid="salary_rule"> 
        <col name="job_salary" xid="ruleCol1"> 
          <calculate xid="calculate1"> 
            <expr xid="default1">$row.val("job_salary")&gt;=0?"面议":$row.val("job_salary")+"万";</expr> 
          </calculate> 
        </col> 
      </rule> -->
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
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="infoData" limit="10" onCustomRefresh="infoRefresh" idColumn="id">
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
  <column label="工作年龄" name="workTime" type="String" xid="xid22"></column></div>
   </div> 
   
   <div class="x-popOver-overlay" xid="div13"/>   
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="求职与招聘"
          class="x-titlebar" style="background-color:#EA413C;">
          <div class="x-titlebar-left"> 
            </div>  
          <div class="x-titlebar-title">求职与招聘</div>  
          <div class="x-titlebar-right reverse"> 
          <span xid="span1" style="font-size:small;" bind-click="publish"><![CDATA[发布]]></span></div>
        </div> 
      </div>  
      
    <div class="x-panel-content x-scroll-view " xid="content1" _xid="C706E2CB33100001519811103BD01A94">
  <div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs1">
   <ul class="nav nav-tabs m-video-tab-ul" xid="ul2" style="color:#FFFFFF;">
   <li class="active m-video-tab1 m-video-tab-li" xid="li7" style="width:50%;color:#400080;text-align:center;">
    <a content="tabContent1" xid="tabItem4" class="pull-right"><![CDATA[招聘]]></a></li> 
   <li role="presentation" xid="li8" style="width:50%;text-align:center;" class="m-video-tab2 m-video-tab-li">
    <a content="tabContent2" xid="tabItem5" class="pull-left"><![CDATA[求职]]></a></li> </ul>
   <div class="tab-content" xid="div1">
    <div class="tab-pane active" xid="tabContent1">
    
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView5">
   <div class="x-scroll-content" xid="div37">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit7">
     <div class="x-edit m-search-box" xid="div8">
      <div class="input-group" xid="div9" style="background:white;">
       <input component="$UI/system/components/justep/input/input" class="form-control x-edit" style="border-right-style:none;" xid="input5" placeHolder="搜职位/公司"></input>
       <div class="input-group-addon" style="background-color:transparent;border-left-style:none;" xid="div11">
        <i class="icon-android-search" xid="i3"></i></div> </div> </div> </div> 
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="jobData">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" class="list-group-item m-list-group-item" bind-click="detailClick">
       <div xid="div5" class="m-relation">
        <div xid="div10" class="media-left">
         <img alt="" xid="image1" class="img-rounded media-object" style="width:75px;" height="80px" bind-attr-src=' $model.getImageUrl(  $object.val("imageUrl"))'></img></div> 
        <div class="media-body" xid="div14">
         <div class="pull-right text-muted m-absolution" xid="div15">
          <span xid="span9" bind-text=' $model.infoData.val("expectedSalary")  +  "万/年"' style="color:#EA413C;"></span>
          </div><h5 class="media-heading lead text-black m-h" bind-text="ref('job')" xid="h51"></h5>
         <div class="text-muted" xid="div16">
          <span xid="span21" bind-text="ref('addUser')" class="m-publisher"></span>
          </div> 
         
          <div>
          	<span xid="span22" bind-text="ref('addTime')" class="m-time-exp"></span>
          <span xid="span23" bind-text="ref('description')" class="m-time-exp"></span>
          </div>
           </div> </div> 
           
       	<div xid="div6" class="m-joblist-tagdiv">
   <span xid="span5" class="m-joblist-tag">本科学历</span>
   <span xid="span10" class="m-joblist-tag">1年以上</span>
   <span xid="span6" class="m-joblist-tag">普通话</span></div></li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div38">
    <span class="x-pull-up-label" xid="span17">加载更多...</span></div> </div>
    
    </div>
    
    <div class="tab-pane" xid="tabContent2">
    <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView5">
   <div class="x-scroll-content" xid="div37">
    <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit" xid="labelEdit7">
     <div class="x-edit m-search-box" xid="div8">
      <div class="input-group" xid="div9" style="background:white;">
       <input component="$UI/system/components/justep/input/input" class="form-control x-edit" style="border-right-style:none;" xid="input5" placeHolder="搜求职者"></input>
       <div class="input-group-addon" style="background-color:transparent;border-left-style:none;" xid="div11">
        <i class="icon-android-search" xid="i3"></i></div> </div> </div> </div> 
    <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="infoData">
     <ul class="x-list-template" xid="listTemplateUl1">
      <li xid="li1" class="list-group-item" bind-click="infoClick">
       <div xid="div5" class="m-relation">
        <div xid="div10" class="media-left">
         <img alt="" xid="image1" class="img-rounded media-object" style="width:75px;" height="80px" bind-attr-src=' $model.getImageUrl(  $model.infoData.val("imageUrl"))'></img></div> 
        <div class="media-body" xid="div14">
         <div class="pull-right text-muted m-absolution" xid="div15">
          <span xid="span9" bind-text="ref('will_salary')" style="color:#EA413C;"></span>
          </div><h5 class="media-heading lead text-black m-h" bind-text="ref('addUser')" xid="h51"></h5>
         <div class="text-muted" xid="div16">
          <span xid="span21" bind-text="ref('expectedSalary')" class="m-publisher"></span>
          </div> 
         
          <div>
          	<span xid="span22" bind-text="ref('add_time')" class="m-time-exp"></span>
          <span xid="span23" bind-text="ref('userIntro')" class="m-time-exp"></span>
          </div>
           </div> </div> 
        <div xid="div2" class="m-joblist-tagdiv">
   <span xid="span3" class="m-joblist-tag">本科学历</span>
   <span xid="span4" class="m-joblist-tag">1年以上</span>
   <span xid="span2" class="m-joblist-tag">普通话</span></div></li> </ul> </div> </div> 
   <div class="x-content-center x-pull-up" xid="div38">
    <span class="x-pull-up-label" xid="span17">加载更多...</span></div> </div>
    </div>
    
    </div> 
  </div>
    </div>
  </div> 
</div>