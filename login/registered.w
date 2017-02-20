<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:13px;top:202px;"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"
    xid="panel2"> 
    <div class="x-panel-top" xid="top1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"
        xid="titleBar1"> 
        <div class="x-titlebar-left" xid="div2"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            label="注册账号" xid="button6" icon="icon-arrow-left-c" onClick="{operation:'window.close'}"> 
            <i xid="i2" class="icon-arrow-left-c"/>  
            <span xid="span6">注册账号</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title" xid="div3"/>  
        <div class="x-titlebar-right reverse" xid="div4"/> 
      </div> 
    </div>  
    <div class="x-panel-content  x-cards panel-body" xid="content1"> 
      <div xid="div15" class="panel-body"/>
      <div class="text-muted" bind-text="'欢迎注册邮箱账号'"/>
      <div xid="div1" class="list-group"> 
        <div class="list-group-item" bind-click="div16Click"> 
          <div xid="div5" class="media-left media-middle">
            <img src="" alt="" xid="image3" bind-attr-src="$model.getImageUrl('../img/user4.png')"
              class="img3 media-object"/> 
          </div>  
          <div xid="div6" class="media-body">
            <h5 xid="h51"><![CDATA[手机号注册]]></h5>  
            <span xid="span3" class="text-muted"><![CDATA[免费验证短信，快速注册]]></span>
          </div>  
          <div xid="div7" class="media-right media-middle"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              label="button" xid="button3" icon="icon-ios7-arrow-forward" > 
              <i xid="i3" class="icon-ios7-arrow-forward text-muted"/>  
              <span xid="span2"/>
            </a>
          </div>
        </div> 
      </div>  
      <div xid="listGroup1" class="list-group"> 
        <div class="list-group-item" xid="div11"> 
          <div xid="div10" class="media-left media-middle"> 
            <img src="" alt="" xid="image6" bind-attr-src="$model.getImageUrl('../img/user5.png')"
              class="img3 media-object"/>
          </div>  
          <div xid="div9" class="media-body"> 
            <h5 xid="h52"><![CDATA[邮箱注册]]></h5>  
            <span xid="span5" class="text-muted"><![CDATA[使用您的常用邮箱注册]]></span>
          </div>  
          <div xid="div8" class="media-right media-middle"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              label="button" xid="button4" icon="icon-ios7-arrow-forward"> 
              <i xid="i4" class="icon-ios7-arrow-forward text-muted"/>  
              <span xid="span4"/>
            </a> 
          </div> 
        </div> 
      </div>  
      <div xid="div12" class="media">
        <div xid="div14" class="media-left media-middle"> 
          <img src="" alt="" xid="image7" bind-attr-src="$model.getImageUrl('../img/icon4.png')"
            class="media-object img-small"/> 
        </div>  
        <div xid="div13" class="media-body"> 
          <span xid="span7" class="text-muted"><![CDATA[如果您已经注册，请直接登录。]]></span>
        </div>
      </div>
    </div> 
  </div> 
</div>
