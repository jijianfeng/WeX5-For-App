window.__justep.__ResourceEngine.loadCss([{url: '/v_2a5c890bacef4171b7248bd9cea40b58l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_c031bc41a80b40f6b09a1a6c60389250l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_0c07cd0a25b44194948ce8d56a6204ecl_zh_CNs_d_m/system/components/comp.min.js','/v_487ed560b6694794b8a89da1ea81b08fl_zh_CNs_d_m/system/common.min.js','/v_b64b73af0fbe44c98e0a686e65193e8dl_zh_CNs_d_m/system/core.min.js']);define(function(require){
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
var __parent0=require('$model/UI2/weX5/person/developer/wocanjiadehuodong'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cJRnuam';
	this._flag_='64e9f0e88471cb55638bbbd506a00fc1';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addTime":{"define":"addTime","label":"添加时间","name":"addTime","relation":"addTime","type":"String"},"addUser":{"define":"addUser","label":"添加人","name":"addUser","relation":"addUser","type":"String"},"allNumber":{"define":"allNumber","label":"总报名人数限制","name":"allNumber","relation":"allNumber","rules":{"integer":true},"type":"Integer"},"content":{"define":"content","label":"内容","name":"content","relation":"content","type":"String"},"endTime":{"define":"endTime","label":"终止时间","name":"endTime","relation":"endTime","type":"String"},"id":{"define":"id","label":"ID","name":"id","relation":"id","type":"String"},"imageUrl":{"define":"imageUrl","label":"图片路径","name":"imageUrl","relation":"imageUrl","type":"String"},"joinNumber":{"define":"joinNumber","label":"已报名人数","name":"joinNumber","relation":"joinNumber","rules":{"calculate":"$row.val(\"joinNumber\")>=0?$row.val(\"joinNumber\")+\"人已报名\":\"\";","integer":true},"type":"Integer"},"sortNumber":{"define":"sortNumber","label":"排序","name":"sortNumber","relation":"sortNumber","rules":{"integer":true},"type":"Integer"},"status":{"define":"status","label":"状态","name":"status","relation":"status","rules":{"integer":true},"type":"Integer"},"title":{"define":"title","label":"标题","name":"title","relation":"title","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"activityDataCustomRefresh"},"limit":20,"xid":"activityData"});
}}); 
return __result;});
