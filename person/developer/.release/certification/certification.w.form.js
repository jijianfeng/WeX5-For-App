define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/button');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Hello/person/developer/certification'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c7Fzaeu';
	this._flag_='6935c56bd58b6ba85929b9b4de0eecf7';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addTime":{"define":"addTime","label":"获得时间","name":"addTime","relation":"addTime","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"imgUrl":{"define":"imgUrl","label":"图片路径","name":"imgUrl","relation":"imgUrl","type":"String"},"level":{"define":"level","label":"等级","name":"level","relation":"level","type":"String"},"score":{"define":"score","label":"分数","name":"score","relation":"score","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"certiDataCustomRefresh"},"idColumn":"id","limit":20,"xid":"certiData"});
}}); 
return __result;});