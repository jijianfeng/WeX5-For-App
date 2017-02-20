<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:286px;top:518px;" onLoad="loadData"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="jobColData" onCustomRefresh="dataFresh" idColumn="job_id">
  	  <column label="id" name="job_id" type="String" xid="xid1"></column>
  <column label="工作名称" name="job_name" type="String" xid="xid2"></column>
  <column label="发布者" name="publisher" type="String" xid="xid3"></column>
  <column label="项目经验" name="experience" type="String" xid="xid4"></column>
  <column label="年薪" name="job_salary" type="String" xid="xid5"></column>
  <column label="地点" name="location" type="String" xid="xid6"></column>
  <data xid="default6">[{&quot;job_id&quot;:&quot;3&quot;,&quot;job_name&quot;:&quot;sdf&quot;,&quot;publisher&quot;:&quot;asdf&quot;,&quot;experience&quot;:&quot;asdf&quot;,&quot;job_salary&quot;:&quot;asdf&quot;,&quot;location&quot;:&quot;asdf&quot;},{&quot;job_id&quot;:&quot;fsd&quot;,&quot;job_name&quot;:&quot;a&quot;,&quot;publisher&quot;:&quot;asdf&quot;,&quot;experience&quot;:&quot;asdf&quot;,&quot;job_salary&quot;:&quot;afsd&quot;,&quot;location&quot;:&quot;ef&quot;}]</data>
  <column label="图片" name="imgUrl" type="String" xid="xid7"></column></div>
  <div component="$UI/system/components/justep/data/data" xid="todoData" idColumn="id" autoLoad="false" confirmDelete="false" onAfterDelete="saveData">
   <column label="title" name="title" type="String" xid="default1"></column>
   <column label="completed" name="completed" type="Boolean" xid="default2"></column>
   <column label="id" name="id" type="String" xid="default3"></column>
  <data xid="default5">[{&quot;title&quot;:&quot;qqq&quot;,&quot;completed&quot;:&quot;&quot;,&quot;id&quot;:&quot;&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" xid="tempData" idColumn="status" autoLoad="true" autoNew="false">
   <column label="status" name="status" type="String" xid="default24"></column>
   <column label="completedCount" name="completedCount" type="Integer" xid="default26"></column>
   <column label="allCompleted" name="allCompleted" type="Boolean" xid="default25"></column>
   <rule xid="rule3">
    <col name="completedCount" xid="ruleCol6">
     <calculate xid="calculate6">
      <expr xid="default23">js: $model.todoData.count(function(p){return p.row.val('completed')})</expr></calculate> </col> 
    <col name="allCompleted" xid="ruleCol5">
     <calculate xid="calculate5">
      <expr xid="default22">js:($model.todoData.getCount()&gt;0) &amp;&amp; ($model.tempData.val('completedCount')==$model.todoData.getCount())</expr></calculate> </col> </rule> 
   <data xid="default4">[{&quot;status&quot;:&quot;All&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="我收藏的职位"
          class="x-titlebar" style="background-color:#EA413C;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-chevron-left"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-chevron-left"/>  
              <span></span> 
            </a> 
          </div>  
          <div class="x-titlebar-title">我收藏的职位</div>  
          <div class="x-titlebar-right reverse"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label" label="清空" xid="button1" onClick="clearCompletedBtnClick" icon="icon-android-trash" style="font-size:small;">
   <i xid="i1" class="icon-ios7-trash icon-android-trash"></i>
   <span xid="span6">清空</span></a></div>
        </div> 
      </div>     
    <div class="x-panel-content" xid="content1" _xid="C70C548F7F200001CE6C1C80BF9810B3" style="bottom: 0px;">
  <div class="x-scroll" component="$UI/system/components/justep/scrollView/scrollView" xid="scrollView1">
    
   <div class="x-scroll-content" xid="div3"><ul component="$UI/system/components/justep/list/list" class="x-list x-list-template" xid="list1" data="jobColData">
   
  <ul class="x-list-template" xid="listTemplateUl1">
   <li xid="li1" class="list-group-item m-list-group-item"><div xid="div5">
        <div xid="span7" class="pull-right m-trangle"><![CDATA[]]>
 	<i src="" alt="" xid="image3" class="icon-close-round m-delete" bind-click="deleteBtnClick"></i> 
  <!-- <img src="./img/xx.png" alt="" xid="image2" class="m-delete-img"></img> --></div><div xid="div10" class="media-left">
         <img alt="" xid="image1" class="img-rounded media-object" style="width:75px;" height="80px" src='".jpg"' bind-attr-src=' $model.getImageUrl( $object.val("imgUrl"))'></img></div> 
        <div class="media-body m-float" xid="div14">
          
         <div xid="div2" class="m-c-div11"><div xid="div1" class="m-c-div12"><span xid="span1" class="media-heading lead text-black  m-videolist-h5" bind-text="ref('job_name')"><![CDATA[职业名称]]></span>
  <span xid="span4" bind-text="ref('publisher')"><![CDATA[发布人]]></span><span xid="span2" bind-text="ref('location')"><![CDATA[工作地点]]></span><span xid="span3" bind-text="ref('experience')"><![CDATA[工作经验]]></span></div>
  <div xid="div6" class="m-div6"><span xid="span5" bind-text="ref('job_salary')"><![CDATA[3块钱]]></span></div>
  </div>
  
  </div> </div></li></ul></ul>
  </div>
   <div class="x-content-center x-pull-up" xid="div4">
    <span class="x-pull-up-label" xid="span8">加载更多...</span></div> </div>
  </div>
  </div> 
</div> 