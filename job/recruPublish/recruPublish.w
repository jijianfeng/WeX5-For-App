<?xml version="1.0" encoding="UTF-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window" design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:418px;top:475px;" onParamsReceive="modelParamsReceive">
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="recruData" idColumn="id">
  <column label="公司名称" name="company" type="String" xid="xid1"></column>
  <column label="id" name="id" type="String" xid="xid2"></column>
  <column label="地点" name="location" type="String" xid="xid3"></column>
  <column label="职位" name="position" type="String" xid="xid4"></column>
  <column label="期望年薪" name="salary" type="String" xid="xid5"></column>
  <column label="职位亮点" name="special" type="String" xid="xid6"></column>
  <column label="职位描述" name="description" type="String" xid="xid7"></column>
  <column label="企业邮箱" name="email" type="String" xid="xid8"></column>
  <column label="企业地址" name="address" type="String" xid="xid9"></column>
  <column label="工作经验" name="experience" type="Integer" xid="xid10"></column></div></div> 
<div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel1">
   <div class="x-panel-top" xid="top2" style="color:white;"><div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar" xid="titleBar1" title="发布职位" style="color:white;">
   <div class="x-titlebar-left text-white" xid="left1">
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" label="搜索" xid="button6" icon="icon-arrow-left-c" onClick="{operation:'window.close'}" style="color:white;">
     <i xid="i6" class="icon-arrow-left-c"></i>
     <span xid="span6">搜索</span></a> </div> 
   <div class="x-titlebar-title" xid="title1">发布职位</div> 
   <div class="x-titlebar-right text-white" xid="right1">
    </div> </div></div>
    
    <div class="x-panel-content " xid="content1">
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content m-content" xid="content2"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 m-edit-input-box" xid="labelEdit3">
   <label class="x-label m-fabuzhiwei-label" xid="label3"><![CDATA[公司]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit m-fabuzhiwei-input" xid="input3" placeHolder="请输入所在公司"></input></div>
  <div xid="div6" class="clearfix m-fabuzhiwei-list">
   <span xid="span3" class="m-fabuzhiwei-title"><![CDATA[地区]]></span>
      
  <span xid="span4" class="m-fabuzhiwei-choice"><![CDATA[]]>
  <i src="" alt="" xid="image5" class="icon-chevron-right m-fabuzhiwei-icon"></i></span></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 m-edit-input-box" xid="labelEdit2">
   <label class="x-label m-fabuzhiwei-label" xid="label2"><![CDATA[职位]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit m-fabuzhiwei-input" xid="input2" placeHolder="请输入职位"></input></div><div xid="div5" class="clearfix m-fabuzhiwei-list" bind-click="nianxinClick">
   <span xid="span13" class="m-fabuzhiwei-title"><![CDATA[年薪]]></span>
   <span xid="span12" class="m-fabuzhiwei-choice">
    <i src="" alt="" xid="i4" class="icon-chevron-right m-fabuzhiwei-icon"></i></span> </div><div xid="div2" class="clearfix m-fabuzhiwei-list">
   <span xid="span7" class="m-fabuzhiwei-title"><![CDATA[职位卖点]]></span>
   <span xid="span5" class="m-fabuzhiwei-choice"><![CDATA[气氛自由 绩效奖金 带薪假期]]></span> 
  </div>   
  <div xid="div7" class="clearfix m-fabuzhiwei-list" bind-click="desClick">
   <span xid="span15" class="m-fabuzhiwei-title"><![CDATA[职位描述]]></span>
   <span xid="span14" class="m-fabuzhiwei-choice">
    <i src="" alt="" xid="i5" class="icon-chevron-right m-fabuzhiwei-icon"></i></span> </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 m-edit-input-box" xid="labelEdit27">
   <label class="x-label m-fabuzhiwei-label" xid="label29"><![CDATA[企业邮箱
]]></label>    
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit m-fabuzhiwei-input" xid="input25" placeHolder="请输入企业邮箱"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 m-edit-input-box" xid="labelEdit1">
   <label class="x-label m-fabuzhiwei-label" xid="label1"><![CDATA[详细地址]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit m-fabuzhiwei-input" xid="input1" placeHolder="请输入公司详细地址"></input></div>
  <div xid="div3" class="clearfix m-fabuzhiwei-list" bind-click="expClick">
   <span xid="span9" class="m-fabuzhiwei-title"><![CDATA[工作经验]]></span>
   <span xid="span8" class="m-fabuzhiwei-choice">
    <i src="" alt="" xid="i2" class="icon-chevron-right m-fabuzhiwei-icon"></i></span> </div>
  </div></div>
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="salaryDialog"
    style="left:103px;top:198px;" src="$UI/weX5/job/recruPublish/salary.w" title="年薪" onReceive="salaryDialogReceive"> 
  <result concept="salaryData" operation="edit" origin="salaryData" xid="default4">
   <mapping from="id" to="" xid="default5"></mapping>
   <mapping from="salary" to="" xid="default6"></mapping></result></span> 
   
   <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="desDialog"
    style="left:103px;top:198px;" src="$UI/weX5/job/recruPublish/description.w" title="描述"> 
  </span> 
   
   <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="expDialog"
    style="left:103px;top:198px;" src="$UI/weX5/job/recruPublish/experience.w" title="经验"> 
  <result concept="salaryData" operation="edit" origin="salaryData" xid="default4">
   <mapping from="id" to="" xid="default5"></mapping>
   <mapping from="salary" to="" xid="default6"></mapping></result></span> 
   
  </div>
   <div class="x-panel-bottom m-foot" xid="bottom2" style="height:auto">
   <a component="$UI/system/components/justep/button/button" class="btn" label="发布" xid="button1" style="width:100%;background:#ea413c;color:white;">
    <i xid="i1"></i>
    <span xid="span16">发布</span></a> </div></div> </div>              