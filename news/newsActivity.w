<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" class="main13" component="$UI/system/components/justep/window/window"
  design="device:m;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:523px;top:58px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/data" autoLoad="true" confirmRefresh="false"
      xid="imgData" idColumn="id" onCustomRefresh="imgDataCustomRefresh"> 
      <column label="id" name="id" type="String" xid="xid1"/>  
      <column label="图片" name="fImgUrl" type="String" xid="xid2"/>  
      <column label="链接地址" name="fUrl" type="String" xid="xid9"/>
    </div>
    <!-- 新闻资讯预加载 -->
    <div component="$UI/system/components/justep/data/data" autoLoad="true" confirmRefresh="false"
      xid="newsData" idColumn="fID" onCustomRefresh="productDataCustomRefresh" limit="3"> 
      <column label="id" name="fID" type="String" xid="xid1"/>  
      <column label="标题" name="fTitle" type="String" xid="xid2"/>  
      <column label="图片" name="fImg" type="String" xid="xid3"/>  
      <column label="摘要" name="fOmit" type="String" xid="xid4"/>  
      <column label="跟帖" name="fPostNumber" type="Integer" xid="xid5"/>  
      <rule xid="rule1"> 
        <col name="fPostNumber" xid="ruleCol1"> 
          <calculate xid="calculate1"> 
            <expr xid="default1">$row.val("fPostNumber")&gt;=0?$row.val("fPostNumber")+"人跟帖":"";</expr> 
          </calculate> 
        </col> 
      </rule> 
    </div>  
    
    <!-- 活动预加载 -->
  	<div component="$UI/system/components/justep/data/data" autoLoad="true" xid="data3" idColumn="id" onCustomRefresh="data3CustomRefresh" confirmRefresh="false" limit="3">
   <column label="ID" name="id" type="String" xid="xid3"/> 
      <column label="添加时间" name="addTime" type="String" xid="xid6"/>  
      <column label="添加人" name="addUser" type="String" xid="xid7"/> 
      <column label="总报名人数限制" name="allNumber" type="Integer" xid="xid7"/> 
      <column label="内容" name="content" type="String" xid="xid7"/> 
      <column label="终止时间" name="endTime" type="String" xid="xid7"/> 
      <column label="图片路径" name="imageUrl" type="String" xid="xid7"/> 
      <column label="已报名人数" name="joinNumber" type="Integer" xid="xid7"/> 
      <column label="排序" name="sortNumber" type="Integer" xid="xid9"/>  
      <column label="标题" name="title" type="String" xid="xid10"/>
      <column label="状态" name="status" type="Integer" xid="xid10"/>
   <rule xid="rule1">
    <col name="joinNumber" xid="ruleCol1">
     <calculate xid="calculate1">
      <expr xid="default1">$row.val("joinNumber")&gt;=0?$row.val("joinNumber")+"人已报名":"";</expr></calculate> </col> </rule> 
      
      </div>
    </div>  
  
  <!-- 右上角弹出框 -->
  <div component="$UI/system/components/justep/popOver/popOver" class="x-popOver"
    xid="popOverMore" anchor="titleBar" position="center" style="height:100%;"> 
    <div class="x-popOver-overlay" xid="div13"/>  
    <div class="x-full x-popOver-content panel" xid="dihttp://localhost:8080/x5/UI2/v_fdea621828a84e2397af11b8dd305471l_zh_CNs_d_m/Hello/news/images/3.jpgv14"> 
      <div xid="div15" class="panel-body"> 
        <div xid="div19" class="col-xs-6 pull-left media"> 
          <h1 xid="h11" class="media-left text-danger"><![CDATA[21]]></h1>  
          <div xid="div27" class="media-body"> 
            <span xid="span14" class="text-danger"><![CDATA[℃]]></span>  
            <p xid="p1" bind-text="'10/22℃'"/> 
          </div> 
        </div>  
        <div xid="div26" class="col-xs-6 pull-left text-right"> 
          <img src="" alt="" xid="image15" bind-attr-src="$model.getImageUrl('../img/cloud.png')"
            class="img_cloud"/>  
          <div xid="div28" bind-text="'多云 微风'"/>  
          <div xid="div29" bind-text="'昆明'"/> 
        </div>  
        <div xid="div30" class="col-xs-12 pull-left"> 
          <span xid="span21"><![CDATA[2015/10/14 星期五]]></span>  
          <p xid="p2" bind-text="'PM2.5 24 优'"/> 
        </div> 
      </div>  
      <div component="$UI/system/components/bootstrap/row/row" class="row text-center panel-body o-nomargin o-nopadding"
        xid="row4"> 
        <div class="col col-xs-4 o-nopadding" xid="col12"> 
          <img src="" alt="" bind-attr-src="$model.getImageUrl('../img/more1.png')"
            class="img3" xid="image5"/>  
          <div bind-text="'搜索'" xid="div25" class="text-muted h6"/> 
        </div>  
        <div class="col col-xs-4 o-nopadding" xid="col14"> 
          <img src="" alt="" bind-attr-src="$model.getImageUrl('../img/more2.png')"
            class="img3" xid="image12"/>  
          <div bind-text="'上头条'" xid="div24" class="text-muted h6"/> 
        </div>  
        <div class="col col-xs-4 o-nopadding" xid="col13"> 
          <img src="" alt="" xid="image5" bind-attr-src="$model.getImageUrl('../img/more3.png')"
            class="img3"/>  
          <div bind-text="'离线'" xid="div23" class="text-muted h6"/> 
        </div>  
        <div class="col col-xs-4 o-nopadding" xid="col12"> 
          <img src="" alt="" bind-attr-src="$model.getImageUrl('../img/more4.png')"
            class="img3" xid="image5"/>  
          <div bind-text="'夜间'" xid="div25" class="text-muted h6"/> 
        </div>  
        <div class="col col-xs-4 o-nopadding" xid="col12"> 
          <img src="" alt="" bind-attr-src="$model.getImageUrl('../img/more5.png')"
            class="img3" xid="image5"/>  
          <div bind-text="'扫一扫'" xid="div25" class="text-muted h6"/> 
        </div>  
        <div class="col col-xs-4 o-nopadding" xid="col12"> 
          <img src="" alt="" bind-attr-src="$model.getImageUrl('../img/more6.png')"
            class="img3" xid="image5"/>  
          <div bind-text="'邀请好友'" xid="div25" class="text-muted h6"/> 
        </div> 
      </div> 
    </div> 
  </div>  
  <!-- 右上角弹出框 -->
  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-card top-trans"
    xid="panel1"> 
    <div class="x-panel-content x-cards" xid="content"> 
      <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
        active="0" xid="contents1" wrap="false"  swipe="false" routable="true" onActiveChange="contents1ActiveChange">
        <div class="x-contents-content" xid="newsContent"> 
          <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full x-has-iosstatusbar"
            xid="panel7"> 
            
            <div class="x-panel-top" xid="top1" height="48"> 
              <div component="$UI/system/components/justep/titleBar/titleBar"
                class="x-titlebar" xid="titleBar" style="background-color:#EA413C;"> 
                <div class="x-titlebar-left" xid="div1"> 
                  <img src="../img/logo.png" alt="" xid="image3" height="26px"></img></div>  
                <div class="x-titlebar-title"></div>  
                <div class="x-titlebar-right reverse" xid="div3"> 
                  <a> 
                    </a> 
                </div> 
              </div> 
            </div>
              
          <div class="x-panel-content" xid="content1">
          
   <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full" xid="panel2">
    
    <div class="x-panel-content" xid="content2">
     <div component="$UI/system/components/justep/contents/contents" routable="true" class="x-contents x-full" active="0" xid="navContents" wrap="false">
      
      <div class="x-contents-content" xid="navContent1" >
      <!-- 滑动开始 -->
        <div component="$UI/system/components/justep/scrollView/scrollView"
  				xid="newsList" class="x-scroll" onPullDown="newsListPullDown">
  			<div class="x-content-center x-pull-down container" xid="div4">
			    <i class="x-pull-down-img glyphicon x-icon-pull-down" xid="i7"/>
			    <span class="x-pull-down-label" xid="span6">下拉刷新...</span>
			</div> 
			 <div class="x-scroll-content" xid="div7">

       <div component="$UI/system/components/bootstrap/carousel/carousel"
                      class="x-carousel carousel" xid="carousel1" auto="true" style="height:133px;" > 
                      <ol class="carousel-indicators" xid="ol1"/>  
                      <div class="x-contents carousel-inner" role="listbox"
                        component="$UI/system/components/justep/contents/contents" routable="true"
                        active="0" slidable="true" wrap="true" swipe="true" xid="contentsImg" > 
                        <div class="x-contents-content" xid="content2"> 
                          <img  src="" alt="" xid="image13" bind-click="openPageClick"
                            class="tb-img1" /> 
                        </div> 
                      </div> 
       </div> 
       <div class="panel panel-default x-card x-wangyi" component="$UI/system/components/bootstrap/panel/panel" xid="panel5">
        <!-- 新闻资讯 -->
        <div component="$UI/system/components/justep/list/list" class="x-list" data="newsData" limit="3" xid="list1">
         <label xid="label2" style="font-size:medium;margin-left:5%;margin-top:1%;"><![CDATA[新闻资讯：]]></label>
         <span  xid="label2" style="font-size:medium;color:#C0C0C0;margin-right:5%;margin-top:1%;" bind-click="label4Click" align='right' dir="ltr" class="pull-right"><![CDATA[更多>]]></span>
         <ul class="x-list-template" xid="listTemplateUl1" >
          <li xid="li1" class="list-group-item x-flex" bind-click="li1Click">
           <div xid="div8" class="media-left">
            <a xid="a1">
            <img alt="" xid="image4" class="img-responsive img_new" bind-attr-src="$model.getImageUrl(val('fImg'))"></img></a> </div> 
            <div class="x-flex1" xid="col26">
            <h5 bind-text="ref('fTitle')" class="o-nomargintop" xid="h54"></h5>
            <span style="text-align: justify;" bind-text="ref('fOmit')" class="text-muted" xid="span36"></span>
            <span bind-text="ref('fPostNumber')" class="pull-right" xid="span37"></span>
            </div>
            </li>
            </ul> 
           </div> 
           <!-- 技术资讯 -->
        <div component="$UI/system/components/justep/list/list" class="x-list" data="data3" limit="3" xid="list2">
         <label xid="label3" style="font-size:medium;margin-left:5%;margin-top:1%;"><![CDATA[活动报名：]]></label>
          <span  xid="label2" style="font-size:medium;color:#C0C0C0;margin-right:5%;margin-top:1%;" bind-click="label5Click" align='right' dir="ltr" class="pull-right"><![CDATA[更多>]]></span>
         <ul class="x-list-template" xid="listTemplateUl1" >
          <li xid="li2" class="list-group-item x-flex" bind-click="li2Click">
           <div xid="div9" class="media-left">
            <a xid="a2">
             <img alt="" xid="image5" class="img-responsive img_new" bind-attr-src="$model.getImageUrl(val('imageUrl'))"></img></a> </div> 
           <div class="x-flex1" xid="col27">
            <h5 bind-text="ref('title')" class="o-nomargintop" xid="h56"></h5>
            <span style="text-align: justify;" bind-text="ref('content')" class="text-muted" xid="span38"></span>
            <span bind-text="ref('joinNumber')" class="pull-right" xid="span39"></span></div> 
  </li> </ul> </div> 
            </div> 
            </div> 
     	</div> </div> </div> </div></div></div></div>
     	<!-- 结束 -->
        </div>  
        <div class="x-contents-content" xid="studyContent"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="mainContainer2" style="height:100%;width:100%;"
            autoLoad="false" src="../video/videoMain.w"/> 
        </div>   
        <div class="x-contents-content" xid="jobContent"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="mainContainer3" autoLoad="false" src="../job/job.w"/> 
        </div>  
        <div class="x-contents-content" xid="userContent"> 
          <div component="$UI/system/components/justep/windowContainer/windowContainer"
            class="x-window-container" xid="mainContainer4" autoLoad="false" src="../person/person_developer.w"/> 
        </div> 
      </div> 
    </div>  
    
    <div class="x-panel-bottom" xid="bottom1"> 
      <div component="$UI/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card x-wangyi"
        tabbed="true" xid="buttonGroup1"> 
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top active"
          label="新闻" xid="newsBtn" icon="icon-android-note" target="newsContent"> 
          <i xid="i4" class="icon icon-android-note"/>  
          <span xid="span6">新闻</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-primary btn-icon-top"
          label="学习" xid="studyBtn" icon="icon-social-youtube" target="studyContent"> 
          <i xid="i3" class="icon icon-social-youtube"/>  
          <span xid="span5">学习</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          label="求职" xid="foundBtn" icon="icon-android-locate" target="jobContent"> 
          <i xid="i3" class="icon icon-android-locate"/>  
          <span xid="span4">求职</span> 
        </a>  
        <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-top"
          label="个人" xid="userBtn" icon="icon-ios7-contact-outline" target="userContent"> 
          <i xid="i6" class="icon icon-ios7-contact-outline"/>  
          <span xid="span71">个人</span> 
        </a> 
      </div> 
    </div> 
  </div> 
</div>
