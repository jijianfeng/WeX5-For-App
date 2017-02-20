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
var __parent0=require('$model/UI2/weX5_developer/person/developer/activity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cfuEZRj';
	this._flag_='dabd05cd8afbf0f6546442593a329025';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addTime":{"define":"addTime","label":"添加时间","name":"addTime","relation":"addTime","type":"String"},"addUser":{"define":"addUser","label":"添加人","name":"addUser","relation":"addUser","type":"String"},"allNumber":{"define":"allNumber","label":"总报名人数限制","name":"allNumber","relation":"allNumber","rules":{"integer":true},"type":"Integer"},"content":{"define":"content","label":"内容","name":"content","relation":"content","type":"String"},"endTime":{"define":"endTime","label":"终止时间","name":"endTime","relation":"endTime","type":"String"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"},"imageUrl":{"define":"imageUrl","label":"图片路径","name":"imageUrl","relation":"imageUrl","type":"String"},"joinNumber":{"define":"joinNumber","label":"已报名人数","name":"joinNumber","relation":"joinNumber","rules":{"calculate":"$row.val(\"joinNumber\")>=0?$row.val(\"joinNumber\")+\"人已报名\":\"\";","integer":true},"type":"Integer"},"sortNumber":{"define":"sortNumber","label":"排序","name":"sortNumber","relation":"sortNumber","rules":{"integer":true},"type":"Integer"},"status":{"define":"status","label":"状态","name":"status","relation":"status","rules":{"integer":true},"type":"Integer"},"title":{"define":"title","label":"标题","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"activityDataCustomRefresh"},"limit":20,"xid":"activityData"});
}}); 
return __result;});