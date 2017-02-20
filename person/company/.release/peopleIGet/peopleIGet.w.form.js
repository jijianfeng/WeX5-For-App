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
var __parent0=require('$model/UI2/weX5/person/company/peopleIGet'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c3YFn22';
	this._flag_='a7c2578c868e54d29515d18c528dc474';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addTime":{"define":"addTime","label":"添加时间","name":"addTime","relation":"addTime","type":"String"},"addUser":{"define":"addUser","label":"姓名","name":"addUser","relation":"addUser","type":"String"},"address":{"define":"address","label":"地址","name":"address","relation":"address","type":"String"},"expectedSalary":{"define":"expectedSalary","label":"期望年薪","name":"expectedSalary","relation":"expectedSalary","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"imageUrl":{"define":"imageUrl","label":"图片","name":"imageUrl","relation":"imageUrl","type":"String"},"quality":{"define":"quality","label":"学历","name":"quality","relation":"quality","type":"String"},"userIntro":{"define":"userIntro","label":"个人简介","name":"userIntro","relation":"userIntro","type":"String"},"userSchool":{"define":"userSchool","label":"毕业学校","name":"userSchool","relation":"userSchool","type":"String"},"userTag":{"define":"userTag","label":"用户标签","name":"userTag","relation":"userTag","type":"String"},"workStatus":{"define":"workStatus","label":"工作状态","name":"workStatus","relation":"workStatus","type":"String"},"workTime":{"define":"workTime","label":"工作年龄","name":"workTime","relation":"workTime","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"infoRefresh"},"limit":20,"xid":"infoData"});
}}); 
return __result;});