window.__justep.__ResourceEngine.loadCss([{url: '/v_0dc990776e994980aae70391645feefcl_zh_CNs_desktopd_/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_bca3115d1b7c4c6292061cb37bd36bebl_zh_CNs_desktopd_/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_ec30431b90ab44db8dbd6e7c59e6e4e8l_zh_CNs_desktopd_/system/components/comp2.min.js','/v_e24fc4f0162d4ea59f0ad83451c90cadl_zh_CNs_desktopd_/system/components/comp.min.js','/v_781363c11d7d4f508beb5445b9226f4fl_zh_CNs_desktopd_/system/common.min.js','/v_d1be64f5f64c469a85b0fade9e737b23l_zh_CNs_desktopd_/system/core.min.js']);define(function(require){
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
var __parent0=require('$model/UI2/z_form_hu/weX5/news/detail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cBb2YJf';
	this._flag_='382acfab26ea3df39f61efbb66d7c9b5';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"FID":{"define":"FID","label":"ID","name":"FID","relation":"FID","rules":{"integer":true},"type":"Integer"},"fAddTime":{"define":"fAddTime","label":"添加时间","name":"fAddTime","relation":"fAddTime","type":"String"},"fContent":{"define":"fContent","label":"内容","name":"fContent","relation":"fContent","type":"String"},"fImage":{"define":"fImage","label":"封面图片","name":"fImage","relation":"fImage","type":"String"},"fNumber":{"define":"fNumber","label":"已阅次数","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fTitle":{"define":"fTitle","label":"标题","name":"fTitle","relation":"fTitle","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"detailCustomRefresh"},"idColumn":"FID","limit":20,"xid":"detail"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fContent":{"define":"fContent","label":"留言内容","name":"fContent","relation":"fContent","type":"String"},"fID":{"define":"fID","label":"id","name":"fID","relation":"fID","type":"String"},"fImg":{"define":"fImg","label":"头像","name":"fImg","relation":"fImg","type":"String"},"fName":{"define":"fName","label":"名称","name":"fName","relation":"fName","type":"String"},"fNumber":{"define":"fNumber","label":"次数","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fTime":{"define":"fTime","label":"时间","name":"fTime","relation":"fTime","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"postDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"postData"});
}}); 
return __result;});
