<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="singleinfoData" limit="10" onCustomRefresh="singleCustomRefresh" idColumn="id">
   <column label="id" name="id" type="String" xid="column2"></column>
   <column label="姓名" name="addUser" type="String" xid="column1"></column>
   <column label="图片" name="imageUrl" type="String" xid="xid11"></column>
   <column label="添加时间" name="addTime" type="String" xid="xid12"></column>
   <column label="地址" name="address" type="String" xid="xid13"></column>
   <column label="期望年薪" name="expectedSalary" type="String" xid="xid14"></column>
   <column label="学历" name="quality" type="String" xid="xid15"></column>
   <column label="个人简介" name="userIntro" type="String" xid="xid18"></column>
   <column label="毕业学校" name="userSchool" type="String" xid="xid19"></column>
   <column label="用户标签" name="userTag" type="String" xid="xid20"></column>
   <column label="工作状态" name="workStatus" type="String" xid="xid21"></column>
   <column label="工作年龄" name="workTime" type="String" xid="xid22"></column></div></div>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel3">
   <div class="x-panel-top" xid="top4"><div component="$UI/system/components/justep/titleBar/titleBar" title="求职者详情" class="x-titlebar" style="background-color:#EA413C;" xid="titleBar2">
   <div class="x-titlebar-left" xid="left3">
    <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left" onClick="{operation:'window.close'}" xid="backBtn">
     <i class="icon-chevron-left" xid="i2"></i>
     <span xid="span13"></span></a> </div> 
   <div class="x-titlebar-title" xid="title3">求职者详情</div>
   <div class="x-titlebar-right reverse" xid="right3"></div></div></div>
   <div class="x-panel-content" xid="content5">
   <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents2">
   <div class="x-contents-content m-page" xid="yingping">
   <div xid="div3" class="m-div3">
    <div xid="div5" class="m-jobDetail-imgBox">
     <img src="" alt="" xid="image1" style="height:56px;width:63px;" bind-attr-src=' $model.singleinfoData.val("imageUrl")'></img>
  </div> 
    <p xid="p3" class="m-jobDetail-text" bind-text='singleinfoData.ref("addUser")'></p><div xid="div6" class="m-div6">
   <div component="$UI/system/components/justep/output/output" class="x-output m-output-box" xid="output12" bind-text='"男"'></div>
   <div component="$UI/system/components/justep/output/output" class="x-output m-span-block m-output-box" xid="output10"></div>
   <div component="$UI/system/components/justep/output/output" class="x-output m-output-box" xid="output11" bind-text='"23"'></div></div><p xid="p2" class="m-jobDetail-text" bind-text='"java工程师(在职观望)"'><![CDATA[]]></p>
    </div> 
   <div xid="div1" class=" m-rowdiv">
    <div component="$UI/system/components/justep/row/row" class="x-row m-row" xid="row1">
     <div class="x-col" xid="col1">
      
      <div component="$UI/system/components/justep/output/output" class="x-output m-text-center m-money" xid="output2" bind-text='"期望职薪"'></div><div component="$UI/system/components/justep/output/output" class="x-output m-text-center" xid="output1"  bind-ref="singleinfoData.ref('expectedSalary')"></div></div> 
     <div class="x-col" xid="col2">
      <div xid="div9" class="m-col">
       <div component="$UI/system/components/justep/output/output" class="x-output m-text-center m-exp" xid="output4" bind-text='"工作经验"'></div><div component="$UI/system/components/justep/output/output" class="x-output m-text-center" xid="output3"></div>
       </div> </div>  
     <div class="x-col" xid="col3">
      <div component="$UI/system/components/justep/output/output" class="x-output m-text-center m-location" xid="output6" bind-text='"现居地点"'></div><div component="$UI/system/components/justep/output/output" class="x-output m-text-center " xid="output5" bind-ref="singleinfoData.ref('address')"></div>
      </div> </div> </div> 
   <!-- <div xid="div10" class="m-blockdiv" style="background-color:white;"></div>
   <div xid="div11" class="m-blockdiv" style="background-color:white;"></div>
   <div xid="div12" class="m-blockdiv" style="background-color:white;"></div> -->
   <div xid="div10" class="m-blockdiv"></div> 
  <div xid="div2" class="m-paddingRL">
   <p xid="p1" class="m-jobDetail-p"><![CDATA[个人水平]]></p>
   <div xid="div11" style="height:auto;" class="m-jobDetail-tagdiv">
    <span xid="span7" class="m-jobDetail-tag"><![CDATA[本科毕业]]></span>
    <span xid="span3" class="m-jobDetail-tag"><![CDATA[计算机专业]]></span>
    </div> </div><div xid="div4" class="m-blockdiv"></div>
  <div xid="div8" class="m-paddingRL">
    <p xid="p5" class="m-jobDetail-p">个人简介:</p>
    <span xid="span11" class="m-jobDetail-require" bind-text="singleinfoData.ref('userIntro')"><![CDATA[]]></span></div>
  <div xid="div12" class="m-blockdiv"></div>
  <div xid="div14" class="m-paddingRL">
   <p xid="p4" class="m-jobDetail-p"><![CDATA[项目经验 :]]></p>
   <span xid="span4" class="m-jobDetail-require" ><![CDATA[简历]]></span></div><div xid="div13" class="m-blockdiv"></div>
  <div xid="div15" class="m-paddingRL">
   <p xid="p6" class="m-jobDetail-p"><![CDATA[补充说明 :]]></p>
   <span xid="span5" class="m-jobDetail-require" bind-text="singleinfoData.ref('userIntro')"><![CDATA[bind-visible]]></span></div></div></div>
  </div>   
   <div class="x-panel-bottom" xid="bottom3"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified" tabbed="true" xid="buttonGroup1">
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="私聊" xid="button1" icon="icon-android-contact">
    <i xid="i1" class="icon-android-contact"></i>
    <span xid="span16">私聊</span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button2" icon="icon-android-hand" onClick="setConnection">
    <i xid="i3" class="icon-android-hand"></i>
    <span xid="span14" class="m-font" bind-text="$model.switchText(event)"></span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-default" label="查看简历" xid="button3" icon="icon-android-search" onClick="getResume">
   <i xid="i4" class="icon-android-search"></i>
   <span xid="span1">查看简历</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-default" xid="button4" icon="icon-android-send" onClick="getPerson">
   <i xid="i5" class="icon-android-send"></i>
   <span xid="span2" bind-text=" $model.switchStatus(event)"></span></a></div></div></div></div>