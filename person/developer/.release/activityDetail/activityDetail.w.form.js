define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/weX5/person/developer/activityDetail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cQVRVZz';
	this._flag_='1b82964fdb1e73eba994d769769c112b';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addTime":{"define":"addTime","label":"添加时间","name":"addTime","relation":"addTime","type":"String"},"addUser":{"define":"addUser","label":"添加人","name":"addUser","relation":"addUser","type":"String"},"allNumber":{"define":"allNumber","label":"访问量","name":"allNumber","relation":"allNumber","type":"String"},"content":{"define":"content","label":"内容","name":"content","relation":"content","type":"String"},"endTime":{"define":"endTime","label":"终止时间","name":"endTime","relation":"endTime","type":"String"},"imageUrl":{"define":"imageUrl","label":"图片路径","name":"imageUrl","relation":"imageUrl","type":"String"},"joinNumber":{"define":"joinNumber","label":"未知","name":"joinNumber","relation":"joinNumber","type":"String"},"sortNumber":{"define":"sortNumber","label":"排序","name":"sortNumber","relation":"sortNumber","type":"String"},"status":{"define":"status","label":"状态","name":"status","relation":"status","rules":{"integer":true},"type":"Integer"},"title":{"define":"title","label":"标题","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"detailCustomRefresh"},"idColumn":"id","limit":20,"xid":"detail"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"already":{"define":"already","label":"是否已报名","name":"already","relation":"already","rules":{"integer":true},"type":"Integer"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"activityDataCustomRefresh"},"idColumn":"id","limit":20,"xid":"activityData"});
}}); 
return __result;});