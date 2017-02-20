define(function(require){
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/output/output');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/weX5/person/developer/resume_watch'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cnmeQzq';
	this._flag_='1eeb628bada060ed7793b52a983b66ce';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"age":{"define":"age","name":"age","relation":"age","type":"String"},"describe":{"define":"describe","name":"describe","relation":"describe","type":"String"},"edu":{"define":"edu","name":"edu","relation":"edu","type":"String"},"exp":{"define":"exp","name":"exp","relation":"exp","type":"String"},"expect_job":{"define":"expect_job","name":"expect_job","relation":"expect_job","type":"String"},"expect_money":{"define":"expect_money","name":"expect_money","relation":"expect_money","type":"String"},"img":{"define":"img","label":"头像","name":"img","relation":"img","type":"String"},"location":{"define":"location","name":"location","relation":"location","type":"String"},"mail":{"define":"mail","name":"mail","relation":"mail","type":"String"},"major":{"define":"major","name":"major","relation":"major","type":"String"},"name":{"define":"name","label":"姓名","name":"name","relation":"name","type":"String"},"person_label":{"define":"person_label","name":"person_label","relation":"person_label","type":"String"},"phone":{"define":"phone","name":"phone","relation":"phone","type":"String"},"school":{"define":"school","name":"school","relation":"school","type":"String"},"sex":{"define":"sex","name":"sex","relation":"sex","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"resume_dataCustomRefresh"},"limit":20,"xid":"resume_data"});
}}); 
return __result;});