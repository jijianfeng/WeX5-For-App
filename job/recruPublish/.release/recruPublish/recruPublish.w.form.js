define(function(require){
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/input/input');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/weX5/job/recruPublish/recruPublish'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cAreyAv';
	this._flag_='4ed49e90abd8c0bbdc35052e559b1e19';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"address":{"define":"address","label":"企业地址","name":"address","relation":"address","type":"String"},"company":{"define":"company","label":"公司名称","name":"company","relation":"company","type":"String"},"description":{"define":"description","label":"职位描述","name":"description","relation":"description","type":"String"},"email":{"define":"email","label":"企业邮箱","name":"email","relation":"email","type":"String"},"experience":{"define":"experience","label":"工作经验","name":"experience","relation":"experience","rules":{"integer":true},"type":"Integer"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"location":{"define":"location","label":"地点","name":"location","relation":"location","type":"String"},"position":{"define":"position","label":"职位","name":"position","relation":"position","type":"String"},"salary":{"define":"salary","label":"期望年薪","name":"salary","relation":"salary","type":"String"},"special":{"define":"special","label":"职位亮点","name":"special","relation":"special","type":"String"}},"directDelete":false,"events":{},"idColumn":"id","limit":20,"xid":"recruData"});
}}); 
return __result;});