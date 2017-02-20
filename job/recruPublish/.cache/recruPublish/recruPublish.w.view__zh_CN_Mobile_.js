window.__justep.__ResourceEngine.loadCss([{url: '/v_75202cf59019422c8050592c310d53f8l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_7d95c0937a86426cbed88d728273477cl_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_7286354cd33b4cab8407f9fcd04724edl_zh_CNs_d_m/system/components/comp.min.js','/v_5b95f25322a340be8170f63f4053c5dal_zh_CNs_d_m/system/common.min.js','/v_5d5c61c70c824881a15b332df34ec588l_zh_CNs_d_m/system/core.min.js']);define(function(require){
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
