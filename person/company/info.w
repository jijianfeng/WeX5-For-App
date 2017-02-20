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
  <div component="$UI/system/components/justep/data/data" autoLoad="true" xid="sex" idColumn="sex"><column name="sex" type="String" xid="xid14"></column>
  <data xid="default3">[{&quot;sex&quot;:&quot;男&quot;},{&quot;sex&quot;:&quot;女&quot;}]</data></div></div>  
  <div component="$UI/system/components/justep/panel/panel" 
    class="x-panel x-full" xid="panel1"> 
      <div class="x-panel-top" xid="top1"> 
        <div component="$UI/system/components/justep/titleBar/titleBar" title="开发商信息"
          class="x-titlebar" style="background-color:#EA413C;">
          <div class="x-titlebar-left"> 
            <a component="$UI/system/components/justep/button/button"
              label="" class="btn btn-link btn-only-icon" icon="icon-arrow-left-c"
              onClick="{operation:'window.close'}" xid="backBtn"> 
              <i class="icon-arrow-left-c"/>  
            </a>   
          </div>  
          <div class="x-titlebar-title">开发商信息</div>  
          <div class="x-titlebar-right reverse"> 
          </div>
        </div> 
      </div>  
    <div class="x-panel-content" xid="content1"><div xid="div3" class="m-form"><div xid="div1" class="m-headerBox">
   <img src='$UI/Hello/img/Logo2.png' alt="" xid="image1" height="80px"></img>
   <div xid="div5">
    <div component="$UI/system/components/justep/output/output" class="x-output" xid="output1" bind-text='"杭州泽微科技"'></div></div> 
   <div xid="div6" class="m-div6">
    </div> 
   </div><!-- <div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit29">
   <label class="x-label m-label" xid="label31"><i xid="i5" class="icon-android-contact m-resume-i"></i>姓名</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input27"></input></div> --><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit6">
   <label class="x-label m-label" xid="label3"><![CDATA[公司名称]]></label> 
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input2" placeHolder="请输入公司名称"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit31">
   <label class="x-label m-label" xid="label33"><i xid="i2" class="icon-android-call  m-resume-i"></i>联系方式</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input29" placeHolder="请输入手机号码"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit27">
   <label class="x-label m-label" xid="label29"><i xid="i1" class="icon-android-mail m-resume-i" style="align:center;"></i>邮箱</label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input25" placeHolder="请输入电子邮件地址"></input></div><div component="$UI/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30" xid="labelEdit5">
   <label class="x-label m-label" xid="label5"><![CDATA[所在地址]]></label>
   <input component="$UI/system/components/justep/input/input" class="form-control x-edit" xid="input1" placeHolder="请输入公司地址"></input></div>
  </div>
  </div> 
  <div class="x-panel-bottom m-foot" xid="bottom1">
  <a component="$UI/system/components/justep/button/button" class="btn" label="提交" xid="button1" style="width:100%;background:#EA413C;color:white;" bind-click="nextClick" onClick="submit">
   <i xid="i6"></i>
   <span xid="span2">提交</span></a></div>
  </div> 
</div>