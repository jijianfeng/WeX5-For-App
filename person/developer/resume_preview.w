<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:240px;top:507px;">
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="resume_data" onCustomRefresh="resume_dataCustomRefresh">
  <column label="姓名" name="name" type="String" xid="xid1"></column>
  <column label="头像" name="img" type="String" xid="xid16"></column>
  <column name="sex" type="String" xid="xid2"></column>
  <column name="age" type="String" xid="xid3"></column>
  <column name="phone" type="String" xid="xid4"></column>
  <column name="mail" type="String" xid="xid5"></column>
  <column name="location" type="String" xid="xid6"></column>
  <column name="edu" type="String" xid="xid7"></column>
  <column name="school" type="String" xid="xid8"></column>
  <column name="major" type="String" xid="xid9"></column> 
  <column name="exp" type="String" xid="xid10"></column>
  <column name="expect_job" type="String" xid="xid11"></column>
  <column name="expect_money" type="String" xid="xid12"></column>
  <column name="person_label" type="String" xid="xid13"></column>
  <column name="describe" type="String" xid="xid14"></column>
  </div> 
</div>
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top1">
    <div component="$UI/system/components/justep/titleBar/titleBar" title="个人简历" class="x-titlebar" style="background-color:#EA413C;" xid="titleBar1">
     <div class="x-titlebar-left" xid="left1">
      <a component="$UI/system/components/justep/button/button" label="" class="btn btn-link btn-only-icon" icon="icon-arrow-left-c" onClick="{operation:'window.close'}" xid="backBtn">
       <i class="icon-arrow-left-c" xid="i3"></i></a> </div> 
     <div class="x-titlebar-title" xid="title1">个人简历</div>
     <div class="x-titlebar-right reverse" xid="right1"></div></div> </div> 
   <div class="x-panel-content" xid="content1" style="bottom:38px;">
    
  <div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="resume_data">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1"><div xid="div3" class="m-form">
   <div xid="div1" class="m-headerBox">
    <img alt="" xid="image1" class="m-avatar-img" bind-attr-src='$model.getImageUrl( $object.val("img"))'></img>
    <div xid="div5"> 
     <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-text=' $object.val("name")'></div></div> 
    <div xid="div6" class="m-div6">
     <div component="$UI/system/components/justep/output/output" class="x-output m-output-box" xid="output2" bind-text='$object.val("sex")' ></div>
     <div component="$UI/system/components/justep/output/output" class="x-output m-span-block m-output-box" xid="output4"></div>
     <div component="$UI/system/components/justep/output/output" class="x-output m-output-box" xid="output3" bind-text=' $object.val("age")' ></div></div> 
  </div> 
   
   <div xid="div2" class="m-div2"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit16">
   <label class="x-label m-label" xid="label13"><![CDATA[联系方式]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit m-inout-disable" xid="output8" style="padding:5px 5px 5px 0px;" bind-text=' $object.val("phone")'></div></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit15">
   <label class="x-label m-label" xid="label12"><![CDATA[邮箱]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit m-inout-disable" xid="output7"  style="padding:5px 5px 5px 0px;" bind-text=' $object.val("mail")'></div></div>
  
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit17">
   <label class="x-label m-label" xid="label14"><![CDATA[现居地点]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit m-inout-disable" xid="output9" style="padding:5px 5px 5px 0px;" bind-text=' $object.val("location")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit18">
   <label class="x-label m-label" xid="label15"><![CDATA[学历]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit m-inout-disable" xid="output10" style="padding:5px 5px 5px 0px;" bind-text=' $object.val("edu")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit19">
   <label class="x-label m-label" xid="label16"><![CDATA[毕业学校]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit m-inout-disable" xid="output11"  style="padding:5px 5px 5px 0px;" bind-text=' $object.val("school")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit20">
   <label class="x-label m-label" xid="label17"><![CDATA[专业]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit m-inout-disable" xid="output12"  style="padding:5px 5px 5px 0px;" bind-text=' $object.val("major")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit21">
   <label class="x-label m-label" xid="label18"><![CDATA[工作经验]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit m-inout-disable" xid="output13"  style="padding:5px 5px 5px 0px;" bind-text=' $object.val("exp")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit22">
   <label class="x-label m-label" xid="label19"><![CDATA[期望职业]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit m-inout-disable" xid="output14"  style="padding:5px 5px 5px 0px;" bind-text=' $object.val("expect_job")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit23">
   <label class="x-label m-label" xid="label20"><![CDATA[期望职薪]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit m-inout-disable" xid="output15"  style="padding:5px 5px 5px 0px;" bind-text='$object.val("expect_money")'></div></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit24">
   <label class="x-label m-label" xid="label21"><![CDATA[个人标签]]></label>
   <div component="$UI/system/components/justep/output/output" class="x-output x-edit m-inout-disable" xid="output16" style="padding:5px 5px 5px 0px;" bind-text=' $object.val("person_label")'></div></div>
  <div xid="div8" class="m-paddingRL">
   <p xid="p5" class="m-jobDetail-p"><![CDATA[个人描述]]></p>
   <div component="$UI/system/components/justep/output/output" class="x-output m-inout-disable" xid="output17" style="padding:5px 0px;" bind-text=' $object.val("describe")'></div></div></div>
  </div></li></ul> </div></div> 
   <div class="x-panel-bottom m-foot" xid="bottom1">
    </div> </div>  </div>