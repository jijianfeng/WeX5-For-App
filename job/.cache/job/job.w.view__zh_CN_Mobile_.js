window.__justep.__ResourceEngine.loadCss([{url: '/v_659fe0dc27d84730ab3daaf1c1b7fb55l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_8778283aa2e84a0dae853806427f69d9l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_f1e35cf5ea8f44a8988387a3119b7d08l_zh_CNs_d_m/system/components/comp2.min.js','/v_4054c47ab0ce46c5a1823759e90ddc36l_zh_CNs_d_m/system/components/comp.min.js','/v_1fcf85d9d57a411e8b1e5aab12514da6l_zh_CNs_d_m/system/common.min.js','/v_fd623a5b37f64d21a94a4cf5515972dal_zh_CNs_d_m/system/core.min.js']);define(function(require){
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
var __parent0=require('$model/UI2/Hello/job/job'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cRV3M7b';
	this._flag_='0c77f0b680be23c25d5d5e8e9afb0871';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addTime":{"define":"addTime","label":"添加时间","name":"addTime","relation":"addTime","type":"String"},"addUser":{"define":"addUser","label":"添加用户","name":"addUser","relation":"addUser","type":"String"},"description":{"define":"description","label":"描述","name":"description","relation":"description","type":"String"},"endTime":{"define":"endTime","label":"结束时间","name":"endTime","relation":"endTime","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","rules":{"integer":true},"type":"Integer"},"imageUrl":{"define":"imageUrl","label":"图片路径","name":"imageUrl","relation":"imageUrl","type":"String"},"job":{"define":"job","label":"职位","name":"job","relation":"job","type":"String"},"jobTag":{"define":"jobTag","label":"职位标签","name":"jobTag","relation":"jobTag","type":"String"},"requireTag":{"define":"requireTag","label":"需求标签","name":"requireTag","relation":"requireTag","type":"String"},"yearSalary":{"define":"yearSalary","name":"yearSalary","relation":"yearSalary","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"jobDataCustomRefresh"},"idColumn":"id","limit":20,"xid":"jobData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"addTime":{"define":"addTime","label":"添加时间","name":"addTime","relation":"addTime","type":"String"},"addUser":{"define":"addUser","label":"姓名","name":"addUser","relation":"addUser","type":"String"},"address":{"define":"address","label":"地址","name":"address","relation":"address","type":"String"},"expectedSalary":{"define":"expectedSalary","label":"期望年薪","name":"expectedSalary","relation":"expectedSalary","type":"String"},"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"imageUrl":{"define":"imageUrl","label":"图片","name":"imageUrl","relation":"imageUrl","type":"String"},"quality":{"define":"quality","label":"学历","name":"quality","relation":"quality","type":"String"},"userIntro":{"define":"userIntro","label":"个人简介","name":"userIntro","relation":"userIntro","type":"String"},"userSchool":{"define":"userSchool","label":"毕业学校","name":"userSchool","relation":"userSchool","type":"String"},"userTag":{"define":"userTag","label":"用户标签","name":"userTag","relation":"userTag","type":"String"},"workStatus":{"define":"workStatus","label":"工作状态","name":"workStatus","relation":"workStatus","type":"String"},"workTime":{"define":"workTime","label":"工作年龄","name":"workTime","relation":"workTime","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"infoRefresh"},"idColumn":"id","limit":10,"xid":"infoData"});
}}); 
return __result;});
