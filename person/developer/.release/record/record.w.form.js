define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/button/button');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Hello/person/developer/record'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cyMzAZf';
	this._flag_='3b9e18254264e4d1fe810bb6422a20cb';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addTime":{"define":"addTime","label":"添加时间","name":"addTime","relation":"addTime","type":"String"},"addUser":{"define":"addUser","label":"添加用户","name":"addUser","relation":"addUser","type":"String"},"description":{"define":"description","label":"描述","name":"description","relation":"description","type":"String"},"endTime":{"define":"endTime","label":"结束时间","name":"endTime","relation":"endTime","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","rules":{"integer":true},"type":"Integer"},"imageUrl":{"define":"imageUrl","label":"图片路径","name":"imageUrl","relation":"imageUrl","type":"String"},"job":{"define":"job","label":"职位","name":"job","relation":"job","type":"String"},"jobTag":{"define":"jobTag","label":"职位标签","name":"jobTag","relation":"jobTag","type":"String"},"requireTag":{"define":"requireTag","label":"需求标签","name":"requireTag","relation":"requireTag","type":"String"},"yearSalary":{"define":"yearSalary","name":"yearSalary","relation":"yearSalary","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"recruRecordCustomRefresh"},"limit":20,"xid":"recruRecord"});
}}); 
return __result;});