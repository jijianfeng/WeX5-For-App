window.__justep.__ResourceEngine.loadCss([{url: '/v_c40a53620983488d81c9429250744bc8l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_8110def71d684f5bb09012e1c2a84570l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_e63d35e6327741188f5e7e218556a5a4l_zh_CNs_d_m/system/components/comp2.min.js','/v_e81db72da9124a3a87de8fba9e6be2a6l_zh_CNs_d_m/system/components/comp.min.js','/v_2d2fdc16d09343f3bf21ca01899a9fafl_zh_CNs_d_m/system/common.min.js','/v_375fca3307614ced8e7ae83ea7208e84l_zh_CNs_d_m/system/core.min.js']);define(function(require){
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/bootstrap/tabs/tab');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/bootstrap/tabs/tabs');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/input/input');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Hello/video/videoMain'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cMRVJfq';
	this._flag_='17fc0f8f237933d4cc01551f4223fa35';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"isChapter":{"define":"isChapter","label":"是否为章","name":"isChapter","relation":"isChapter","type":"String"},"title":{"define":"title","label":"标题","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"docDataCustomRefresh"},"idColumn":"id","limit":20,"xid":"docData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"Ftype":{"define":"Ftype","label":"视频类型","name":"Ftype","relation":"Ftype","rules":{"integer":true},"type":"Integer"},"fAddTime":{"define":"fAddTime","label":"添加时间","name":"fAddTime","relation":"fAddTime","type":"String"},"fCount":{"define":"fCount","label":"点击量","name":"fCount","relation":"fCount","rules":{"integer":true},"type":"Integer"},"fVideoId":{"define":"fVideoId","label":"视频Id","name":"fVideoId","relation":"fVideoId","type":"String"},"fVideoImg":{"define":"fVideoImg","label":"视频封面","name":"fVideoImg","relation":"fVideoImg","type":"String"},"fVideoOmit":{"define":"fVideoOmit","label":"视频简介2","name":"fVideoOmit","relation":"fVideoOmit","type":"String"},"fVideoTitle":{"define":"fVideoTitle","label":"标题2","name":"fVideoTitle","relation":"fVideoTitle","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","rules":{"integer":true},"type":"Integer"},"remark":{"define":"remark","label":"介绍最基本的WeX5信息","name":"remark","relation":"remark","type":"String"},"status":{"define":"status","label":"1","name":"status","relation":"status","rules":{"integer":true},"type":"Integer"},"title":{"define":"title","label":"第一章 初识WeX5","name":"title","relation":"title","type":"String"},"userId":{"define":"userId","label":"26917","name":"userId","relation":"userId","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"videoDataRefresh"},"idColumn":"id","limit":20,"xid":"videoData1"});
}}); 
return __result;});
