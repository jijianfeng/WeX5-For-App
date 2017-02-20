window.__justep.__ResourceEngine.loadCss([{url: '/v_c331953b12eb49b59b5c2c8595256857l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_9c97594de720407f872f993a5571e12dl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_76e22b26b22f410ab00b7d8a789e2bc1l_zh_CNs_d_m/system/components/comp.min.js','/v_36a092c112e340f4a45b398f2d9e5a94l_zh_CNs_d_m/system/common.min.js','/v_31a555da650e4af08c0de3219c651f18l_zh_CNs_d_m/system/core.min.js']);define(function(require){
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
var __parent0=require('$model/UI2/Hello/person/developer/record'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cyMzAZf';
	this._flag_='3b9e18254264e4d1fe810bb6422a20cb';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addTime":{"define":"addTime","label":"添加时间","name":"addTime","relation":"addTime","type":"String"},"addUser":{"define":"addUser","label":"添加用户","name":"addUser","relation":"addUser","type":"String"},"description":{"define":"description","label":"描述","name":"description","relation":"description","type":"String"},"endTime":{"define":"endTime","label":"结束时间","name":"endTime","relation":"endTime","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","rules":{"integer":true},"type":"Integer"},"imageUrl":{"define":"imageUrl","label":"图片路径","name":"imageUrl","relation":"imageUrl","type":"String"},"job":{"define":"job","label":"职位","name":"job","relation":"job","type":"String"},"jobTag":{"define":"jobTag","label":"职位标签","name":"jobTag","relation":"jobTag","type":"String"},"requireTag":{"define":"requireTag","label":"需求标签","name":"requireTag","relation":"requireTag","type":"String"},"yearSalary":{"define":"yearSalary","name":"yearSalary","relation":"yearSalary","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"recruRecordCustomRefresh"},"limit":20,"xid":"recruRecord"});
}}); 
return __result;});
