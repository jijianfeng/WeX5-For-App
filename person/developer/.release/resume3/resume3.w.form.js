define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/output/output');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/weX5_developer/person/developer/resume3'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c6vUVZj';
	this._flag_='3b228ca7f0c1c34a08459489adcbbad8';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{},"directDelete":false,"events":{"onCustomRefresh":"resumeRefresh"},"limit":20,"xid":"resumeData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"education":{"define":"education","label":"学历","name":"education","relation":"education","type":"String"}},"directDelete":false,"events":{},"idColumn":"education","initData":"[{\"education\":\"中专以下\"},{\"education\":\"中专\"},{\"education\":\"大专\"},{\"education\":\"本科\"},{\"education\":\"重本\"},{\"education\":\"研究生\"},{\"education\":\"博士生\"}]","limit":20,"xid":"education"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"app_status":{"define":"app_status","label":"求职状态","name":"app_status","relation":"app_status","type":"String"}},"directDelete":false,"events":{},"idColumn":"app_status","initData":"[{\"app_status\":\"无职求职\"},{\"app_status\":\"在校求职\"}]","limit":20,"xid":"app_status"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"work_time":{"define":"work_time","label":"工作时间","name":"work_time","relation":"work_time","type":"String"}},"directDelete":false,"events":{},"idColumn":"work_time","initData":"[{\"work_time\":\"1年以下\"},{\"work_time\":\"2-3年\"},{\"work_time\":\"5年\"},{\"work_time\":\"5年以上\"}]","limit":20,"xid":"work_time"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"salary":{"define":"salary","label":"薪水","name":"salary","relation":"salary","type":"String"}},"directDelete":false,"events":{},"idColumn":"salary","initData":"[{\"salary\":\"周薪\"},{\"salary\":\"年薪\"}]","limit":20,"xid":"salary"});
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
 var justep = require('$UI/system/lib/justep');if(!this['__justep__']) this['__justep__'] = {};if(!this['__justep__'].selectOptionsAfterRender)	this['__justep__'].selectOptionsAfterRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._addDefaultOption();	};if(!this['__justep__'].selectOptionsBeforeRender)	this['__justep__'].selectOptionsBeforeRender = function($element) {		var comp = justep.Component.getComponent($element);		if(comp) comp._optionsBeforeRender();	};
}}); 
return __result;});