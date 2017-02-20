window.__justep.__ResourceEngine.loadCss([{url: '/v_2a45cd94d1a647c788d7474a3a733680l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_3484757843804e00806749538f458e1dl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_6914c32892a9448f95f4abc80dca963bl_zh_CNs_d_m/system/components/comp2.min.js','/v_a40846ffc5f7405484d1553f35435337l_zh_CNs_d_m/system/components/comp.min.js','/v_d6f30b7ac5774c80abcc3d34fceeb63cl_zh_CNs_d_m/system/common.min.js','/v_8dc0b077f5d04c7689fe4e3d67357715l_zh_CNs_d_m/system/core.min.js']);define(function(require){
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
var __parent0=require('$model/UI2/Hello/news/detail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cuEvyia';
	this._flag_='6d84f64efc81c3d737ee6d34d8bf424b';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"FID":{"define":"FID","label":"ID","name":"FID","relation":"FID","rules":{"integer":true},"type":"Integer"},"fAddTime":{"define":"fAddTime","label":"添加时间","name":"fAddTime","relation":"fAddTime","type":"String"},"fContent":{"define":"fContent","label":"内容","name":"fContent","relation":"fContent","type":"String"},"fImage":{"define":"fImage","label":"封面图片","name":"fImage","relation":"fImage","type":"String"},"fNumber":{"define":"fNumber","label":"已阅次数","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fTitle":{"define":"fTitle","label":"标题","name":"fTitle","relation":"fTitle","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"detailCustomRefresh"},"idColumn":"FID","limit":20,"xid":"detail"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fContent":{"define":"fContent","label":"留言内容","name":"fContent","relation":"fContent","type":"String"},"fID":{"define":"fID","label":"id","name":"fID","relation":"fID","type":"String"},"fImg":{"define":"fImg","label":"头像","name":"fImg","relation":"fImg","type":"String"},"fName":{"define":"fName","label":"名称","name":"fName","relation":"fName","type":"String"},"fNumber":{"define":"fNumber","label":"次数","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fTime":{"define":"fTime","label":"时间","name":"fTime","relation":"fTime","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"postDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"postData"});
}}); 
return __result;});
