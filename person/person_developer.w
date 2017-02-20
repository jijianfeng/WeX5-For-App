<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:mobile;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:501px;top:365px;"
    onLoad="modelLoad" onunLoad="modelUnLoad"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar"
    xid="panel"> 
    <div class="x-panel-content" xid="content1"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"> 
        <div class="x-titlebar-left" xid="div2"/>  
        <div class="x-titlebar-title" xid="div3"/>  
        <div class="x-titlebar-right reverse" xid="div4"> 
          </div> 
      </div>  
      <div class="text-center o-user"> 
        <img alt="" xid="image1" class="img1" bind-attr-src=" $model.switchImage()"/>   
        <div xid="div1" class="h4"> 
          <a xid="a1" class="text-white m-a-login-text" bind-click="switchBtnClick(event)"
            bind-text=" $model.switchText()" ><![CDATA[立即登录]]></a> 
        </div>  
        <div xid="div5" bind-text="&quot;&quot;" class="h5 text-white"/> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card"> 
        <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified"
          tabbed="true" xid="buttonGroup3"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
            label="认证" xid="button5" icon="icon-ios7-bookmarks-outline" onClick="button5Click"> 
            <i xid="i13" class="icon text-muted icon-ios7-bookmarks-outline"/>  
            <span xid="span38" class="text-muted">认证</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
            label="收藏" xid="button7" icon="icon-ios7-star" onClick="toCollection"> 
            <i xid="i14" class="icon text-muted icon-ios7-star"/>  
            <span xid="span39" class="text-muted">收藏</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
            label="跟帖" xid="button9" icon="icon-edit"> 
            <i xid="i15" class="icon text-muted icon-edit"/>  
            <span xid="span40" class="text-muted">跟帖</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
            label="设置" xid="button10" icon="icon-android-settings"> 
            <i xid="i16" class="icon text-muted icon-android-settings"/>  
            <span xid="span41" class="text-muted">设置</span> 
          </a> 
        </div> 
      </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card"> 
        <div class="list-group-item" bind-click="getVideos"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
            label="button" xid="button11" icon="icon-ios7-arrow-right"> 
            <i xid="i17" class="icon-ios7-arrow-right text-muted"/>  
            <span xid="span14"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            icon="icon-ios7-photos"> 
            <i xid="i6" class="text-info icon-ios7-photos"/>  
            <span xid="span13"/> 
          </a>  
          <span xid="span15"><![CDATA[我看过的视频]]></span> 
        </div> 
      <div class="list-group-item" xid="div7" bind-click="getDocs">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button4" icon="icon-ios7-arrow-right">
    <i xid="i4" class="icon-ios7-arrow-right text-muted"></i>
    <span xid="span5"></span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-android-forums" xid="button6">
    <i xid="i5" class="text-success icon-android-forums"></i>
    <span xid="span6"></span></a> 
   <span xid="span4"><![CDATA[我看过的文档]]></span></div><div class="list-group-item" xid="div6" bind-click="getActivities">
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right" label="button" xid="button2" icon="icon-ios7-arrow-right">
    <i xid="i2" class="icon-ios7-arrow-right text-muted"></i>
    <span xid="span2"></span></a> 
   <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" icon="icon-android-friends" xid="button3">
    <i xid="i3" class="text-danger icon-android-friends"></i>
    <span xid="span3"></span></a> 
   <span xid="span1"><![CDATA[我参加的活动]]></span></div>
  </div>  
      <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card"> 
        <ul xid="ul1"> 
        <li class="list-group-item" xid="li1" bind-click="li1Click"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
              label="button" xid="button16" icon="icon-ios7-arrow-right"> 
              <i xid="i29" class="icon-ios7-arrow-right text-muted"/>  
              <span xid="span23"/> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              icon="icon-android-note" xid="button17"> 
              <i xid="i30" class="text-danger icon-android-note"/>  
              <span xid="span24"/> 
            </a>  
            <span xid="span22"><![CDATA[我的简历]]></span> 
          </li>
        <li class="list-group-item" xid="li1" bind-click="getRecords"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
              label="button" xid="button12" icon="icon-ios7-arrow-right"> 
              <i xid="i18" class="icon-ios7-arrow-right text-muted"/>  
              <span xid="span17"/>  
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              icon="icon-paper-airplane" xid="button13"> 
              <i xid="i26" class="text-warning icon-paper-airplane"/>  
              <span xid="span18"/> 
            </a>  
            <span xid="span16"><![CDATA[我的应聘记录]]></span> 
          </li>  
          <li class="list-group-item" xid="li1" bind-click="whoGet"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
              label="button" xid="button14" icon="icon-ios7-arrow-right"> 
              <i xid="i27" class="icon-ios7-arrow-right text-muted"/>  
              <span xid="span20"/> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              icon="icon-android-locate" xid="button15"> 
              <i xid="i28" class="icon-android-locate"/>  
              <span xid="span21"/> 
            </a>  
            <span xid="span19"><![CDATA[谁想招纳我]]></span> 
          </li>  
          <li class="list-group-item" xid="li1" bind-click="certify"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
              label="button" xid="button16" icon="icon-ios7-arrow-right"> 
              <i xid="i29" class="icon-ios7-arrow-right text-muted"/>  
              <span xid="span23"/> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
              icon="icon-android-inbox" xid="button17"> 
              <i xid="i30" class="text-danger icon-android-inbox"/>  
              <span xid="span24"/> 
            </a>  
            <span xid="span22"><![CDATA[  我的证书]]></span> 
          </li> 
          
        </ul> 
      </div>  
      <!-- <div component="$UI/system/components/justep/panel/panel" class="panel panel-default x-card"> 
        <div class="list-group-item" xid="div10"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right"
            label="button" xid="button18" icon="icon-ios7-arrow-right"> 
            <i xid="i31" class="icon-ios7-arrow-right text-muted"/>  
            <span xid="span26"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            icon="icon-email" xid="button19"> 
            <i xid="i32" class="icon-email text-success"/>  
            <span xid="span27"/> 
          </a>  
          <span xid="span25"><![CDATA[我的邮箱]]></span> 
        </div> 
      </div>  -->
    </div> 
  </div> 
</div>
