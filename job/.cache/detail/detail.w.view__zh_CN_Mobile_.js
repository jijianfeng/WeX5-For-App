window.__justep.__ResourceEngine.loadCss([{url: '/v_48096585c6c74637a7eecd2cee12c72el_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_3c14378166a2478990bd88d09adfff50l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_6af3259025d34cb79a9ed79187bc54c0l_zh_CNs_d_m/system/components/comp.min.js','/v_2804f788811b4f7a805cc6e40317d196l_zh_CNs_d_m/system/common.min.js','/v_13b07e08e3024a09b6d0774ccf8cac87l_zh_CNs_d_m/system/core.min.js']);define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/output/output');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Hello/job/detail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cFjM363';
	this._flag_='43c0d52db9a67a4102a829d8ee97cfd5';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addUser":{"define":"addUser","label":"发布者","name":"addUser","relation":"addUser","type":"String"},"address":{"define":"address","label":"地点","name":"address","relation":"address","type":"String"},"description":{"define":"description","label":"职位描述","name":"description","relation":"description","type":"String"},"experience":{"define":"experience","label":"项目经验","name":"experience","relation":"experience","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"imageUrl":{"define":"imageUrl","label":"图片","name":"imageUrl","relation":"imageUrl","type":"String"},"isCollected":{"define":"isCollected","label":"是否收藏","name":"isCollected","relation":"isCollected","rules":{"integer":true},"type":"Integer"},"isSent":{"define":"isSent","label":"是否应聘","name":"isSent","relation":"isSent","rules":{"integer":true},"type":"Integer"},"job":{"define":"job","label":"工作名称","name":"job","relation":"job","type":"String"},"jobTag":{"define":"jobTag","label":"职位亮点","name":"jobTag","relation":"jobTag","type":"String"},"requireTag":{"define":"requireTag","label":"职位要求","name":"requireTag","relation":"requireTag","type":"String"},"yearSalary":{"define":"yearSalary","label":"年薪","name":"yearSalary","relation":"yearSalary","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"singleJobCustomRefresh"},"idColumn":"id","limit":20,"xid":"singleJob"});
}}); 
return __result;});
