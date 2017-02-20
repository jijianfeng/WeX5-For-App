<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:24px;top:188px;"> 
  </div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="身份验证"
          class="x-titlebar" style="background-color:#EA413C;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">身份验证</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1" style="height:110px;">
   <label class="x-label m-img-box" xid="label1" style="text-align:center;height:36px;width:43px;"><i xid="i1" class="icon-android-social-user"></i></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" placeHolder="请输入身份证号码以进行身份核对" style="width:600px;"></input></div>
  <div xid="div1" style="vertical-align:middle;text-align:center;height:59px;"><a component="$UI/system/components/justep/button/button" class="btn btn-default btn-only-label" label="进行验证" xid="button1" icon="icon-arrow-right-a" style="background-color:#EA413C;border-color:#EA413C #EA413C #EA413C #EA413C;vertical-align:middle;text-align:center;" onClick="getReady">
   <i xid="i2" class="icon-arrow-right-a"></i>
   <span xid="span2">进行验证</span></a></div></div>
  </div> 
</div>