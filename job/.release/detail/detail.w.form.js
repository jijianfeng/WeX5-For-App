define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/output/output');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Hello/job/detail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cFjM363';
	this._flag_='43c0d52db9a67a4102a829d8ee97cfd5';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addUser":{"define":"addUser","label":"发布者","name":"addUser","relation":"addUser","type":"String"},"address":{"define":"address","label":"地点","name":"address","relation":"address","type":"String"},"description":{"define":"description","label":"职位描述","name":"description","relation":"description","type":"String"},"experience":{"define":"experience","label":"项目经验","name":"experience","relation":"experience","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"imageUrl":{"define":"imageUrl","label":"图片","name":"imageUrl","relation":"imageUrl","type":"String"},"isCollected":{"define":"isCollected","label":"是否收藏","name":"isCollected","relation":"isCollected","rules":{"integer":true},"type":"Integer"},"isSent":{"define":"isSent","label":"是否应聘","name":"isSent","relation":"isSent","rules":{"integer":true},"type":"Integer"},"job":{"define":"job","label":"工作名称","name":"job","relation":"job","type":"String"},"jobTag":{"define":"jobTag","label":"职位亮点","name":"jobTag","relation":"jobTag","type":"String"},"requireTag":{"define":"requireTag","label":"职位要求","name":"requireTag","relation":"requireTag","type":"String"},"yearSalary":{"define":"yearSalary","label":"年薪","name":"yearSalary","relation":"yearSalary","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"singleJobCustomRefresh"},"idColumn":"id","limit":20,"xid":"singleJob"});
}}); 
return __result;});