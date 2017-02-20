define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/popMenu/popMenu');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/menu/menu');
require('$model/UI2/system/components/justep/input/input');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Hello/video/docDetail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cf22U3q';
	this._flag_='b6a712ed09d4462029fbe80c8dfc12f9';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addTime":{"define":"addTime","label":"添加时间","name":"addTime","relation":"addTime","rules":{"integer":true},"type":"Integer"},"addUser":{"define":"addUser","label":"添加用户","name":"addUser","relation":"addUser","rules":{"integer":true},"type":"Integer"},"chapterId":{"define":"chapterId","label":"章节号","name":"chapterId","relation":"chapterId","rules":{"integer":true},"type":"Integer"},"content":{"define":"content","label":"内容","name":"content","relation":"content","type":"String"},"hadLook":{"define":"hadLook","label":"跟帖数","name":"hadLook","relation":"hadLook","rules":{"integer":true},"type":"Integer"},"id":{"define":"id","label":"ID","name":"id","relation":"id","rules":{"integer":true},"type":"Integer"},"sortNumber":{"define":"sortNumber","label":"排序值","name":"sortNumber","relation":"sortNumber","rules":{"integer":true},"type":"Integer"},"titile":{"define":"titile","label":"标题","name":"titile","relation":"titile","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"detailCustomRefresh"},"idColumn":"id","limit":20,"xid":"detail"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fContent":{"define":"fContent","label":"留言内容","name":"fContent","relation":"fContent","type":"String"},"fID":{"define":"fID","label":"id","name":"fID","relation":"fID","type":"String"},"fImg":{"define":"fImg","label":"头像","name":"fImg","relation":"fImg","type":"String"},"fName":{"define":"fName","label":"名称","name":"fName","relation":"fName","type":"String"},"fNumber":{"define":"fNumber","label":"次数","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fTime":{"define":"fTime","label":"时间","name":"fTime","relation":"fTime","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"postDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"postData"});
}}); 
return __result;});