<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:m;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad" onParamsReceive="modelParamsReceive" style="height:auto;left:99px;top:83px;">
  
    <div component="$UI/system/components/justep/data/data" autoLoad="false" xid="chapterData" onCustomRefresh="chapterDataCustomRefresh" idColumn="id">
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column label="名称" name="title" type="String" xid="xid2"/>  
      <column label="是否为章" name="isChapter" type="String" xid="xid3"/>  
      <column label="视频时长" name="video_time" type="String" xid="xid4"/>  
      <rule xid="rule1"> 
        <col name="video_time" xid="ruleCol1"> 
          <calculate xid="calculate1"> 
            <expr xid="default1">$row.val("video_time")&gt;=0?"":$row.val("video_time");</expr> 
          </calculate> 
        </col> 
      </rule> 
    </div> 
     
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="singleVideo" onCustomRefresh="singleVideoCustomRefresh" idColumn="FID">
   <column label="视频id" name="FID" type="String" xid="xid6"></column>
  <column label="标题" name="fVideoTitle" type="String" xid="xid7"></column>
  <column label="视频时长" name="fVideoTime" type="String" xid="column4"></column>
  <column label="视频章节" name="fType" type="String" xid="column5"></column>
  <column label="上传者" name="userName" type="String" xid="column3"></column>
  <column label="上传者头像" name="userImage" type="String" xid="column9"></column>
  <column label="简介" name="fVideoOmit" type="String" xid="xid8"></column>
  <column label="播放次数" name="fCount" type="String" xid="xid9"></column>
  <column label="添加时间" name="fAddTime" type="String" xid="xid10"></column>
  <column label="视频地址" name="fVideoPath" type="String" xid="xid11"></column>
  <column label="视频封面" name="fVideoImg" type="String" xid="xid12"></column></div>
   
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="postData" onCustomRefresh="postDataCustomRefresh" idColumn="fID" limit="20">
   <column label="id" name="fID" type="String" xid="column2"></column>
   <column label="名称" name="fName" type="String" xid="column7"></column>
   <column label="头像" name="fImg" type="String" xid="column6"></column>
   <column label="次数" name="fNumber" type="Integer" xid="column1"></column>
   <column label="留言内容" name="fContent" type="String" xid="xid5"></column>
   <column label="时间" name="fTime" type="String" xid="column8"></column></div></div>  
  <div component="$UI/system/components/justep/popMenu/popMenu" class="x-popMenu"
    xid="popMenu" direction="right-bottom" anchor="popMenuBtn"> 
    <div class="x-popMenu-overlay" xid="div3"/>  
    <ul component="$UI/system/components/justep/menu/menu" class="x-menu dropdown-menu x-popMenu-content"
      xid="menu2">
      <li class="x-menu-item" xid="item1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
          label="分享" xid="button11" icon="icon-ios7-redo"> 
          <i xid="i10" class="icon-ios7-redo"/>  
          <span xid="span21">分享</span>
        </a> 
      </li>  
      <li class="x-menu-item" xid="item2"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
          label="收藏" xid="button15" icon="icon-ios7-star-outline"> 
          <i xid="i14" class="icon-ios7-star-outline"/>  
          <span xid="span25">收藏</span>
        </a> 
      </li>
      <li class="x-menu-item" xid="item3"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
          label="截屏" xid="button13" icon="icon-ios7-albums-outline"> 
          <i xid="i12" class="icon-ios7-albums-outline"/>  
          <span xid="span23">截屏</span>
        </a> 
      </li>  
      <li class="x-menu-divider divider" xid="divider1"/>
      <li class="x-menu-item" xid="item4"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
          label="夜间模式" xid="button14" icon="icon-android-display"> 
          <i xid="i13" class="icon-android-display"/>  
          <span xid="span24">夜间模式</span>
        </a> 
      </li> 
    </ul>
  </div>
  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card x-has-iosstatusbar"> 
    <div class="x-panel-top" height="49"> 
      <div component="$UI/system/components/justep/titleBar/titleBar" class="x-titlebar"> 
        <div class="x-titlebar-left text-white"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon"
            label="搜索" xid="button6" icon="icon-arrow-left-c" onClick="{operation:'window.close'}"> 
            <i xid="i6" class="icon-arrow-left-c"/>  
            <span xid="span6">搜索</span> 
          </a> 
        </div>  
        <div class="x-titlebar-title"></div>  
        <div class="x-titlebar-right reverse text-white"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-icon" xid="popMenuBtn" icon="icon-android-more" onClick="popMenuBtnClick">
   <i xid="i1" class="icon-android-more"></i>
   <span xid="span1"></span></a>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content " > 
      <!-- 视频 -->
      <video width="100%"  controls="controls"   autopaly="autoplay"  type="video/mp4"  xid="video1" />
      <!-- 视频 --> 
      
       <div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs1"> 
        <ul class="nav nav-tabs m-tab-box" xid="ul1" style="border:0px solid #ddd;"> 
          <li class="active m-tab" xid="li1"> 
            <a content="tabContent1" xid="tabItem1" class="m-tab-a"><![CDATA[章节]]></a> 
          </li>  
          <li role="presentation" xid="li2" class="m-tab"> 
            <a content="tabContent2" xid="tabItem2" class="m-tab-a"><![CDATA[简介]]></a> 
          </li>  
          <li xid="li3" class="m-tab"> 
            <a content="tabContent3" xid="tabItem3" class="m-tab-a"><![CDATA[评论]]></a> 
          </li> 
        </ul>  
        <div class="tab-content" xid="div1"> 
        
   <div class="tab-pane active m-content" xid="tabContent1">
   <div component="$UI/system/components/justep/list/list" class="x-list" xid="list4" data="chapterData">
   <ul class="x-list-template" xid="listTemplateUl2">
    <li xid="chapterList" bind-css="{'chapter' : $object.val(&quot;isChapter&quot;) == '1','video' :  $object.val(&quot;isChapter&quot;) == '0'}">
    <!-- <div component="$UI/system/components/justep/row/row" xid="row1" class="x-row m-list-row" bind-css="{'isWatching' : $object.val(&quot;id&quot;) ==  $model.singleVideo.val(&quot;id&quot;)}">
   <span xid="span8"> 
   <i class="icon-ios7-arrow-thin-right" style="color:red;"></i>
   <div component="$UI/system/components/justep/output/output" class="x-output m-init-output" xid="output5" bind-ref="ref('title')"></div>
   <div component="$UI/system/components/justep/output/output" class="x-output m-init-output" xid="output6" bind-ref="ref('video_time')"></div>
   </span>
  </div>  -->
  <div component="$UI/system/components/justep/row/row" xid="row3" class="x-row m-list-row " bind-css="{'isWatching' : $object.val(&quot;id&quot;) ==  $model.singleVideo.val(&quot;id&quot;)}">
   
  <div class="x-col m-listbox" xid="col6"><i class="icon-play m-list-i
" style="color:red;" xid="i4" bind-visible='$object.val("isChapter")=="0"'></i>
  <div component="$UI/system/components/justep/output/output" class="x-output m-list-outputtitle" xid="output5" bind-ref="ref('title')"></div></div><div xid="col4" class="m-list-colBoxtime" bind-visible='$object.val("isChapter")=="0"'>
   <div component="$UI/system/components/justep/output/output" class="x-output m-init-output" xid="output1" bind-ref="ref('video_time')"></div></div>
  
  </div></li>
   </ul> </div>
  </div>   
            
   <div class="tab-pane" xid="tabContent2">
   	<div xid="div7" class="m-div7">
  <div xid="div8" class="text-black m-h5" bind-text=' $model.singleVideo.val("fVideoTitle")'></div>
  <div class="m-article" xid="div6" bind-html=' $model.singleVideo.val("fVideoOmit")'></div>
  </div><!-- <h3 class="text-black" xid="title" bind-text="singleVideo.ref('title')">title
  </h3> -->
   	
   	 
   <div class="media-left m-imgboxdiv" xid="imgDiv">
       <img src="" alt="" class="m-imgavater" xid="image2" bind-attr-src=' $model.singleVideo.val("userImage")'></img>
       <span xid="span11" class="m-div9" bind-text="singleVideo.ref('userName')"></span>
       <span xid="span3" class="m-div9" bind-text="singleVideo.ref('fAddTime')"></span>
<!--        <span xid="span10" class="m-div9" bind-text=' $model.singleVideo.val("fVideoTime")'></span> -->
  </div></div>
   
   <div class="tab-pane" xid="tabContent3">
   
   <div component="$UI/system/components/justep/list/list" class="x-list"
            xid="list1" data="postData" limit="2" disablePullToRefresh="true" disableInfiniteLoad="true"> 
            <ul class="x-list-template" xid="listTemplateUl1"> 
            <!-- 开始 -->
              <li xid="li1" class="panel-heading ">
                <div class="media">
                  <div class="media-left">
                    <img src="" alt="" bind-attr-src="$model.getImageUrl(val(&quot;fImg&quot;))"
                      class="o-img4" xid="image2"/>
                  </div>  
                  <div class="media-body">
             
                    <span xid="span5" bind-text="ref('fName')" class="text-primary"/>
                    <img  xid="img9"  src="../img/preview_unlike_icon_highlighted.png" style="margin-right:5%;height:20px;width:22px;" class="pull-right" bind-click="img9Click"/>
  					 <span xid="span7" bind-text="ref('fNumber')" class="pull-right"  style="margin-right:5%;"></span>
                    <div class="text-muted">
                      <span bind-text="ref('fTime')"/>  
                    </div>  
                    <div bind-text=" $object.val(&quot;fContent&quot;)"/> 
                  </div>
                </div>
              </li>
              <!-- 结束 -->
            </ul> 
          </div> 
          
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group btn-group-justified" tabbed="true" xid="buttonGroup1">
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label"
              label="查看更多跟帖" xid="button3" onClick="postClick"> 
              <i xid="i3"/>  
              <span xid="span12" class="text-muted">查看更多跟帖</span>
            </a>
          </div>
    		<div class="x-panel-bottom" xid="bottom1"> 
      <div class="input-group"> 
        <span class="input-group-addon"> 
          <i xid="i6" class="icon-edit text-muted"/> 
        </span>  
        <input component="$UI/system/components/justep/input/input" class="form-control x-inputText"
          xid="content" placeHolder="回帖是种好习惯！"/> 
          <span class="" aria-hidden="false" > 
	        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label o-nopadding"
	          label="发送" xid="button9" bind-click="span8Click"> 
	          <i xid="i8"/>  
	          <span class="text-muted"  >发送</span> 
	        </a> 
	      </span>
      </div>   
    </div> 
    </div> 
       
        </div> 
      </div> 
      </div>  
      
  </div> 
  	
</div>
