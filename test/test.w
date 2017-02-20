<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:280px;top:245px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data1"></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="10:00"
          class="x-titlebar" style="background-color:#EA413C;" xid="title_bar">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-arrow-left-c"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-arrow-left-c"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">
          <span xid="count" bind-text='"10:00"'></span>
          </div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1" style="background:#eee;">
    <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full" active="0" xid="contents1">
   <div class="x-contents-content" xid="content2"><h1></h1><div xid="div1" class="m-question"><span xid="span4" class="m-jobDetail-tag m-xuanze">选择题</span><span xid="span1" class="m-question-text"><![CDATA[WeX5是基于什么技术开发的移动开发技术？]]>
  </span> 
  </div><div xid="div13" class="m-img"><img src="" alt="" xid="image1"></img>
  </div><div xid="div2" class="m-answer"><div xid="div3" class="m-choice"><div xid="div7" class="m-ABCD m-A" style="float:left;"></div>
  <span xid="span6" class="m-choice-text"><![CDATA[HTML5]]></span></div>
  <div xid="div9" class="m-choice">
   <div xid="div8" class="m-ABCD m-B" style="float:left;">
    </div>   
   <span xid="span2" class="m-choice-text"><![CDATA[JAVA]]></span></div><div xid="div4" class="m-choice">
   <div xid="div10" class="m-ABCD m-C" style="float:left;"></div>
   <span xid="span3" class="m-choice-text"><![CDATA[C++]]></span></div><div xid="div11" class="m-choice">
   <div xid="div12" class="m-ABCD m-D" style="float:left;"></div>
   <span xid="span5" class="m-choice-text"><![CDATA[C]]></span>
  </div></div>
  </div> 
  <div class="x-contents-content" xid="content4"><h1 xid="h11"></h1>
  <div xid="div5" class="m-question">
   <span xid="span13" class="m-jobDetail-tag m-panduan"><![CDATA[判断题]]></span>
   <span xid="span14" class="m-question-text">WeX5是基于什么技术开发的移动开发技术？</span></div>
  <div xid="div6" class="m-img">
   <img src="" alt="" xid="image2"></img></div>
  <div xid="div24" class="m-answer">
   
   
   
   <div component="$UI/system/components/justep/labelEdit/labelEdit" xid="labelEdit2">
   <label class="x-label" xid="label2"></label>
   <span component="$UI/system/components/justep/select/radioGroup" class="x-radios x-edit m-label-edit" xid="radioGroup2"></span></div>
  </div></div></div>
     
  
  </div>
  <div class="x-panel-bottom m-foot" xid="bottom5"><div component="$UI/system/components/justep/button/buttonGroup" class="btn-group x-card" tabbed="true" xid="buttonGroup1" style="width:100%;"><a component="$UI/system/components/justep/button/button" class="btn btn-link m-btn m-jiaojuan" label="交卷" xid="button1" style="padding-left:20px;" icon="icon-ios7-compose-outline" onClick="submit">
   <i xid="i1" class="icon-ios7-compose-outline" style="color:#18B4ED;margin-right:8px;"></i>
   <span xid="span7">交卷</span></a>   
  <!-- <a component="$UI/system/components/justep/button/button" class="btn btn-link m-btn m-right-count" label="0" xid="button2" icon="icon-checkmark">
   <i xid="i2" class="icon-checkmark m-icon m-true-false"></i>
   <span xid="span8" style="color:#18B4ED;">0</span></a>
  <a component="$UI/system/components/justep/button/button" class="btn btn-link m-btn m-wrong-count" label="0" xid="button3" icon="icon-close">
   <i xid="i3" class="icon-close m-icon m-true-false"></i>
   <span xid="span9" style="color:#F25E5E;">0</span></a> -->
  <a component="$UI/system/components/justep/button/button" class="btn btn-link pull-right m-btn m-count" xid="button4" icon="icon-android-storage" style="padding-right:20px;">
   <i xid="i4" class="icon-android-storage m-icon" style="margin-right:15px;"></i>
   <span xid="span10"><![CDATA[1]]></span><span xid="span11"><![CDATA[ / ]]></span><span xid="span12"><![CDATA[100]]></span></a>
  </div></div></div> 
</div>