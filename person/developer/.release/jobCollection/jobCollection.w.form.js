define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/button');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Hello/person/developer/jobCollection'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cnmUFBr';
	this._flag_='5e3c85d9c54d8e96440a903f4965c229';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"experience":{"define":"experience","label":"项目经验","name":"experience","relation":"experience","type":"String"},"imgUrl":{"define":"imgUrl","label":"图片","name":"imgUrl","relation":"imgUrl","type":"String"},"job_id":{"define":"job_id","label":"id","name":"job_id","relation":"job_id","type":"String"},"job_name":{"define":"job_name","label":"工作名称","name":"job_name","relation":"job_name","type":"String"},"job_salary":{"define":"job_salary","label":"年薪","name":"job_salary","relation":"job_salary","type":"String"},"location":{"define":"location","label":"地点","name":"location","relation":"location","type":"String"},"publisher":{"define":"publisher","label":"发布者","name":"publisher","relation":"publisher","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"dataFresh"},"idColumn":"job_id","initData":"[{\"job_id\":\"3\",\"job_name\":\"sdf\",\"publisher\":\"asdf\",\"experience\":\"asdf\",\"job_salary\":\"asdf\",\"location\":\"asdf\"},{\"job_id\":\"fsd\",\"job_name\":\"a\",\"publisher\":\"asdf\",\"experience\":\"asdf\",\"job_salary\":\"afsd\",\"location\":\"ef\"}]","limit":20,"xid":"jobColData"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":false,"confirmRefresh":true,"defCols":{"completed":{"define":"completed","label":"completed","name":"completed","relation":"completed","type":"Boolean"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"title":{"define":"title","label":"title","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{"onAfterDelete":"saveData"},"idColumn":"id","initData":"[{\"title\":\"qqq\",\"completed\":\"\",\"id\":\"\"}]","limit":20,"xid":"todoData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"allCompleted":{"define":"allCompleted","label":"allCompleted","name":"allCompleted","relation":"allCompleted","rules":{"calculate":"js:($model.todoData.getCount()>0) && ($model.tempData.val('completedCount')==$model.todoData.getCount())"},"type":"Boolean"},"completedCount":{"define":"completedCount","label":"completedCount","name":"completedCount","relation":"completedCount","rules":{"calculate":"js: $model.todoData.count(function(p){return p.row.val('completed')})","integer":true},"type":"Integer"},"status":{"define":"status","label":"status","name":"status","relation":"status","type":"String"}},"directDelete":false,"events":{},"idColumn":"status","initData":"[{\"status\":\"All\"}]","limit":20,"xid":"tempData"});
}}); 
return __result;});