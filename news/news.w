<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="left:18px;top:83px;height:244px;" onLoad="modelLoad"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="techNewsData" IdColumn="fID" onCustomRefresh="techNewsDataCustomRefresh">
  	<column label="ID" name="fID" type="String" xid="xid3"/>  
      <column label="标题" name="fTitle" type="String" xid="xid6"/>  
      <column label="图片" name="fImg" type="String" xid="xid7"/>  
      <column label="邮费" name="fPostNumber" type="String" xid="xid9"/>  
      <column label="月销量" name="fOmit" type="Integer" xid="xid10"/>
  </div></div>  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
    active="0" slidable="true" xid="contents"> 
      <div class="x-contents-content active" xid="content1"> 
        <div component="$UI/system/components/justep/panel/panel" 
          class="x-panel x-full"> 
            <div class="x-panel-top"> 
              <div component="$UI/system/components/justep/titleBar/titleBar" title="新闻资讯"
                class="x-titlebar" style="background-color:#EA413C;">
                <div class="x-titlebar-left"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-link btn-only-icon" icon="icon-chevron-left"
                    onClick="{operation:'window.close'}" xid="backBtn1"> 
                    <i class="icon-chevron-left"/>  
                    <span>关闭</span> 
                  </a> 
                </div>  
                <div class="x-titlebar-title">新闻资讯</div>  
                <div class="x-titlebar-right reverse"> 
                </div>
              </div> 
            </div>  
	      <div class="x-panel-content  x-scroll-view" _xid="C7051FDDB4200001E0EE1265D4C01136" style="bottom: 0px;"><div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
   <div class="x-scroll-content" xid="div2"><div component="$UI/system/components/justep/list/list" class="x-list" xid="list1" data="techNewsData" limit="4">
   <ul class="x-list-template" xid="listTemplateUl1">
    <li xid="li1" bind-click="li1Click" class="list-group-item">
    	<div xid="div10" class="media-left"> 
            <img alt="" xid="image1" class="img-rounded media-object" bind-attr-src="$model.getImageUrl(val(&quot;fImg&quot;))" style="width:75px;" height="80px"/> 
       </div>  
                    <div class="media-body" xid="div14"> 
                      <h5 class="media-heading lead text-black" bind-text="ref('fTitle')"
                        xid="h51"/>  
                      <div class="text-muted" xid="div16"> 
                        <span xid="span21" bind-text="ref('fOmit')"/>  
                      </div> 
                      <div class="text-muted" xid="div15"> 
                       <span xid="span30">最近</span> 
                        <span xid="span9" bind-text="ref('fPostNumber')" class="text-danger"/> 
                        <span xid="span22"><![CDATA[人访问 ]]></span>  
                      </div> 
                    </div> 
    </li>
    </ul> </div></div>
   <div class="x-content-center x-pull-up" xid="div3">
    <span class="x-pull-up-label" xid="span2">加载更多...</span></div> </div></div>
        </div> 
      </div> 
      <div class="x-contents-content" xid="content2"> 
      </div> 
  </div> 
</div>