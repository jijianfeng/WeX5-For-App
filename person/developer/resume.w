<?xml version="1.0" encoding="utf-8"?>
<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:m;" xid="window" class="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:465px;top:480px;"> 
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="resumeData" onCustomRefresh="resumeRefresh"></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="year" idColumn="year" limit="-1"><column label="年" name="year" type="String" xid="xid5"></column>
  <data xid="default1">[{&quot;year&quot;:&quot;2015&quot;},{&quot;year&quot;:&quot;2014&quot;},{&quot;year&quot;:&quot;2013&quot;},{&quot;year&quot;:&quot;2012&quot;},{&quot;year&quot;:&quot;2011&quot;},{&quot;year&quot;:&quot;2010&quot;},{&quot;year&quot;:&quot;2009&quot;},{&quot;year&quot;:&quot;2008&quot;},{&quot;year&quot;:&quot;2007&quot;},{&quot;year&quot;:&quot;2006&quot;},{&quot;year&quot;:&quot;2005&quot;},{&quot;year&quot;:&quot;2004&quot;},{&quot;year&quot;:&quot;2003&quot;},{&quot;year&quot;:&quot;2002&quot;},{&quot;year&quot;:&quot;2001&quot;},{&quot;year&quot;:&quot;2000&quot;},{&quot;year&quot;:&quot;1999&quot;},{&quot;year&quot;:&quot;1998&quot;},{&quot;year&quot;:&quot;1997&quot;},{&quot;year&quot;:&quot;1996&quot;},{&quot;year&quot;:&quot;1995&quot;},{&quot;year&quot;:&quot;1994&quot;},{&quot;year&quot;:&quot;1993&quot;},{&quot;year&quot;:&quot;1992&quot;},{&quot;year&quot;:&quot;1991&quot;},{&quot;year&quot;:&quot;1990&quot;},{&quot;year&quot;:&quot;1989&quot;},{&quot;year&quot;:&quot;1987&quot;},{&quot;year&quot;:&quot;1986&quot;},{&quot;year&quot;:&quot;1985&quot;},{&quot;year&quot;:&quot;1984&quot;},{&quot;year&quot;:&quot;1983&quot;},{&quot;year&quot;:&quot;1982&quot;},{&quot;year&quot;:&quot;1981&quot;},{&quot;year&quot;:&quot;1980&quot;},{&quot;year&quot;:&quot;1979&quot;},{&quot;year&quot;:&quot;1978&quot;},{&quot;year&quot;:&quot;1977&quot;},{&quot;year&quot;:&quot;1976&quot;},{&quot;year&quot;:&quot;1975&quot;},{&quot;year&quot;:&quot;1974&quot;},{&quot;year&quot;:&quot;1973&quot;},{&quot;year&quot;:&quot;1972&quot;},{&quot;year&quot;:&quot;1971&quot;},{&quot;year&quot;:&quot;1970&quot;},{&quot;year&quot;:&quot;1969&quot;},{&quot;year&quot;:&quot;1968&quot;},{&quot;year&quot;:&quot;1967&quot;},{&quot;year&quot;:&quot;1966&quot;},{&quot;year&quot;:&quot;1965&quot;},{&quot;year&quot;:&quot;1964&quot;},{&quot;year&quot;:&quot;1963&quot;},{&quot;year&quot;:&quot;1962&quot;},{&quot;year&quot;:&quot;1961&quot;},{&quot;year&quot;:&quot;1960&quot;},{&quot;year&quot;:&quot;1959&quot;},{&quot;year&quot;:&quot;1958&quot;},{&quot;year&quot;:&quot;1957&quot;},{&quot;year&quot;:&quot;1956&quot;},{&quot;year&quot;:&quot;1955&quot;},{&quot;year&quot;:&quot;1954&quot;},{&quot;year&quot;:&quot;1953&quot;},{&quot;year&quot;:&quot;1952&quot;},{&quot;year&quot;:&quot;1951&quot;},{&quot;year&quot;:&quot;1950&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="month" idColumn="month"><column label="月" name="month" type="String" xid="xid12"></column>
  <data xid="default4">[{&quot;month&quot;:&quot;2&quot;},{&quot;month&quot;:&quot;3&quot;},{&quot;month&quot;:&quot;4&quot;},{&quot;month&quot;:&quot;5&quot;},{&quot;month&quot;:&quot;6&quot;},{&quot;month&quot;:&quot;7&quot;},{&quot;month&quot;:&quot;8&quot;},{&quot;month&quot;:&quot;9&quot;},{&quot;month&quot;:&quot;10&quot;},{&quot;month&quot;:&quot;11&quot;},{&quot;month&quot;:&quot;12&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="day" idColumn="day" limit="-1"><column label="日" name="day" type="String" xid="xid13"></column>
  <data xid="default2">[{&quot;day&quot;:&quot;2&quot;},{&quot;day&quot;:&quot;3&quot;},{&quot;day&quot;:&quot;4&quot;},{&quot;day&quot;:&quot;5&quot;},{&quot;day&quot;:&quot;6&quot;},{&quot;day&quot;:&quot;7&quot;},{&quot;day&quot;:&quot;8&quot;},{&quot;day&quot;:&quot;9&quot;},{&quot;day&quot;:&quot;10&quot;},{&quot;day&quot;:&quot;11&quot;},{&quot;day&quot;:&quot;12&quot;},{&quot;day&quot;:&quot;13&quot;},{&quot;day&quot;:&quot;14&quot;},{&quot;day&quot;:&quot;15&quot;},{&quot;day&quot;:&quot;16&quot;},{&quot;day&quot;:&quot;17&quot;},{&quot;day&quot;:&quot;18&quot;},{&quot;day&quot;:&quot;19&quot;},{&quot;day&quot;:&quot;20&quot;},{&quot;day&quot;:&quot;21&quot;},{&quot;day&quot;:&quot;22&quot;},{&quot;day&quot;:&quot;23&quot;},{&quot;day&quot;:&quot;24&quot;},{&quot;day&quot;:&quot;25&quot;},{&quot;day&quot;:&quot;26&quot;},{&quot;day&quot;:&quot;27&quot;},{&quot;day&quot;:&quot;28&quot;},{&quot;day&quot;:&quot;29&quot;},{&quot;day&quot;:&quot;30&quot;},{&quot;day&quot;:&quot;31&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="work_time" idColumn="work_time"><column label="工作时间" name="work_time" type="String" xid="xid3"></column>
  <data xid="default3">[{&quot;work_time&quot;:&quot;1年以下&quot;},{&quot;work_time&quot;:&quot;2-3年&quot;},{&quot;work_time&quot;:&quot;5年&quot;},{&quot;work_time&quot;:&quot;5年以上&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sex" idColumn="sex"><column name="sex" type="String" xid="xid14"></column>
  <data xid="default3">[{&quot;sex&quot;:&quot;男&quot;},{&quot;sex&quot;:&quot;女&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="education" idColumn="education"><column label="学历" name="education" type="String" xid="xid1"></column>
  <data xid="default1">[{&quot;education&quot;:&quot;中专以下&quot;},{&quot;education&quot;:&quot;中专&quot;},{&quot;education&quot;:&quot;大专&quot;},{&quot;education&quot;:&quot;本科&quot;},{&quot;education&quot;:&quot;重本&quot;},{&quot;education&quot;:&quot;研究生&quot;},{&quot;education&quot;:&quot;博士生&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="app_status" idColumn="app_status"><column label="求职状态" name="app_status" type="String" xid="xid2"></column>
  <data xid="default2">[{&quot;app_status&quot;:&quot;无职求职&quot;},{&quot;app_status&quot;:&quot;在校求职&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="salary" idColumn="salary"><column label="薪水" name="salary" type="String" xid="xid4"></column>
  <data xid="default4">[{&quot;salary&quot;:&quot;周薪&quot;},{&quot;salary&quot;:&quot;年薪&quot;}]</data></div>
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="age" idColumn="age"><column label="年龄" name="age" type="String" xid="xid6"></column>
  <data xid="default16">[{&quot;age&quot;:&quot;18&quot;},{&quot;age&quot;:&quot;19&quot;},{&quot;age&quot;:&quot;20&quot;},{&quot;age&quot;:&quot;21&quot;},{&quot;age&quot;:&quot;22&quot;},{&quot;age&quot;:&quot;23&quot;},{&quot;age&quot;:&quot;24&quot;},{&quot;age&quot;:&quot;25&quot;},{&quot;age&quot;:&quot;26&quot;},{&quot;age&quot;:&quot;27&quot;},{&quot;age&quot;:&quot;28&quot;},{&quot;age&quot;:&quot;29&quot;},{&quot;age&quot;:&quot;30&quot;},{&quot;age&quot;:&quot;31&quot;},{&quot;age&quot;:&quot;32&quot;},{&quot;age&quot;:&quot;33&quot;},{&quot;age&quot;:&quot;34&quot;},{&quot;age&quot;:&quot;35&quot;},{&quot;age&quot;:&quot;36&quot;},{&quot;age&quot;:&quot;37&quot;},{&quot;age&quot;:&quot;38&quot;},{&quot;age&quot;:&quot;39&quot;},{&quot;age&quot;:&quot;40&quot;},{&quot;age&quot;:&quot;41&quot;},{&quot;age&quot;:&quot;42&quot;},{&quot;age&quot;:&quot;43&quot;},{&quot;age&quot;:&quot;44&quot;},{&quot;age&quot;:&quot;45&quot;},{&quot;age&quot;:&quot;46&quot;},{&quot;age&quot;:&quot;47&quot;},{&quot;age&quot;:&quot;48&quot;},{&quot;age&quot;:&quot;49&quot;},{&quot;age&quot;:&quot;50&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="个人名片"
          class="x-titlebar" style="background-color:#EA413C;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-arrow-left-c"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-arrow-left-c"/>  
            </a>   
          </div>  
          <div class="x-titlebar-title">个人名片</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div3" class="m-form"><div xid="div1" class="m-headerBox">
   <img src='$UI/Hello/img/default.jpg' alt="" xid="image1"></img>
   <div xid="div5">
    </div> 
   <div xid="div6" class="m-div6">
    </div> 
   </div><!-- <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit29">
   <label class="x-label m-label" xid="label31"><i xid="i5" class="icon-android-contact m-resume-i"></i>姓名</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input27"></input></div> --><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label m-label" xid="label3"><![CDATA[姓名   ]]></label> 
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" placeHolder="请输入真实姓名"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit1">
   <label class="x-label m-label" xid="label1"><i xid="i6" class="icon-male m-resume-i"></i>性别</label>
   <span component="$UI/system/components/justep/select/radioGroup" class="x-radio-group x-edit" xid="radioGroup1" bind-itemset="sex" bind-itemsetValue="ref('sex')" bind-itemsetLabel="ref('sex')"></span>
   
   <!-- <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select3" bind-options="jobData" bind-optionsLabel="fTitle" bind-optionsCaption="这里是默认值"></select>
    -->
   </div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit28">
   <label class="x-label m-label" xid="label30">年龄</label>
   <div component="$UI/system/components/justep/row/row" class="x-row x-edit m-col-nonopadding" xid="row12" style="padding:0px;">
    <div class="x-col m-col-nopadding" xid="col30">
     <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 m-col-nopadding" xid="labelEdit2">
      <select component="$UI/system/components/justep/select/select" class="form-control x-edit m-select-box" xid="select1" bind-options="day" bind-optionsLabel="day" style="padding:0px 12px 0px 5px;" bind-optionsCaption="30"></select></div> </div> </div> </div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit31">
   <label class="x-label m-label" xid="label33"><i xid="i2" class="icon-android-call  m-resume-i"></i>联系方式</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input29" placeHolder="请输入手机号码"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit27">
   <label class="x-label m-label" xid="label29"><i xid="i1" class="icon-android-mail m-resume-i" style="align:center;"></i>邮箱</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input25" placeHolder="请输入电子邮件地址"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label m-label" xid="label5"><i xid="i1" class="icon-home m-resume-i" style="align:center;"></i><![CDATA[现居地点]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" placeHolder="请输入现居住地"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label m-label" xid="label6">学历</label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select2" bind-options="education" bind-optionsLabel="education" bind-optionsCaption="本科"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label m-label" xid="label4">学校</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input4" placeHolder="请填写毕业学校"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit4">
   <label class="x-label m-label" xid="label4">专业</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" placeHolder="请填写专业"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit3">
   <label class="x-label m-label" xid="label2">工作经验</label>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select2" bind-options="work_time" bind-optionsLabel="work_time" bind-optionsCaption="1年"></select></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit8">
   <label class="x-label m-label" xid="label7">期望行业</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input3" placeHolder="期望行业"></input></div>
  <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit7">
   <label class="x-label m-label" xid="label2">期望职薪</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input26"></input>
   <select component="$UI/system/components/justep/select/select" class="form-control x-edit" xid="select4" bind-options="salary" bind-optionsLabel="salary" bind-optionsCaption="月薪"></select></div>
  <div xid="div4" class="clearfix m-fabuzhiwei-list">
   <span xid="span7" class="m-fabuzhiwei-title">个人标签</span>
   <span xid="span12" class="m-fabuzhiwei-choice">
    <i src="" alt="" xid="i4" class="icon-chevron-right m-fabuzhiwei-icon"></i></span> </div>
  <div xid="div42">
   <div xid="div43" class="m-div2">
    <span xid="span40">个人描述：</span></div> 
   <textarea component="$UI/system/components/justep/textarea/textarea" class="form-control" xid="textarea3"></textarea></div></div>
  </div> 
  <div class="x-panel-bottom m-foot" xid="bottom1">
  <a component="$UI/system/components/justep/button/button" class="btn" label="提交" xid="button1" style="width:100%;background:#EA413C;color:white;" bind-click="nextClick">
   <i xid="i6"></i>
   <span xid="span2">提交</span></a></div>
  </div> 
</div>