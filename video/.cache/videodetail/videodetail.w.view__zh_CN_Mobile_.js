window.__justep.__ResourceEngine.loadCss([{url: '/v_301d9c8471f7410ea9dfd663c3f73d83l_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_3e5d8c5de7e5400c8556851205d75b23l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_0c673d119a294dec9cfb916a17dfadf7l_zh_CNs_d_m/system/components/comp2.min.js','/v_7884bca56ed24e8591f51a2c83ddc9fal_zh_CNs_d_m/system/components/comp.min.js','/v_47b64cd74ed246469053b2573e835227l_zh_CNs_d_m/system/common.min.js','/v_8a917137914c49d5b0f732dc946ab776l_zh_CNs_d_m/system/core.min.js']);define(function(require){
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/row/row');
require('$model/UI2/system/components/bootstrap/tabs/tab');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/button/buttonGroup');
require('$model/UI2/system/components/justep/list/list');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/popMenu/popMenu');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/bootstrap/tabs/tabs');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/menu/menu');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/input/input');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Hello/video/videodetail'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cZNVRBf';
	this._flag_='a863cb6f04dd31deba7798a5743bf2db';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"id":{"define":"id","label":"id","name":"id","relation":"id","type":"String"},"isChapter":{"define":"isChapter","label":"是否为章","name":"isChapter","relation":"isChapter","type":"String"},"title":{"define":"title","label":"名称","name":"title","relation":"title","type":"String"},"video_time":{"define":"video_time","label":"视频时长","name":"video_time","relation":"video_time","rules":{"calculate":"$row.val(\"video_time\")>=0?\"\":$row.val(\"video_time\");"},"type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"chapterDataCustomRefresh"},"idColumn":"id","limit":20,"xid":"chapterData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"FID":{"define":"FID","label":"视频id","name":"FID","relation":"FID","type":"String"},"fAddTime":{"define":"fAddTime","label":"添加时间","name":"fAddTime","relation":"fAddTime","type":"String"},"fCount":{"define":"fCount","label":"播放次数","name":"fCount","relation":"fCount","type":"String"},"fType":{"define":"fType","label":"视频章节","name":"fType","relation":"fType","type":"String"},"fVideoImg":{"define":"fVideoImg","label":"视频封面","name":"fVideoImg","relation":"fVideoImg","type":"String"},"fVideoOmit":{"define":"fVideoOmit","label":"简介","name":"fVideoOmit","relation":"fVideoOmit","type":"String"},"fVideoPath":{"define":"fVideoPath","label":"视频地址","name":"fVideoPath","relation":"fVideoPath","type":"String"},"fVideoTime":{"define":"fVideoTime","label":"视频时长","name":"fVideoTime","relation":"fVideoTime","type":"String"},"fVideoTitle":{"define":"fVideoTitle","label":"标题","name":"fVideoTitle","relation":"fVideoTitle","type":"String"},"userImage":{"define":"userImage","label":"上传者头像","name":"userImage","relation":"userImage","type":"String"},"userName":{"define":"userName","label":"上传者","name":"userName","relation":"userName","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"singleVideoCustomRefresh"},"idColumn":"FID","limit":20,"xid":"singleVideo"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fContent":{"define":"fContent","label":"留言内容","name":"fContent","relation":"fContent","type":"String"},"fID":{"define":"fID","label":"id","name":"fID","relation":"fID","type":"String"},"fImg":{"define":"fImg","label":"头像","name":"fImg","relation":"fImg","type":"String"},"fName":{"define":"fName","label":"名称","name":"fName","relation":"fName","type":"String"},"fNumber":{"define":"fNumber","label":"次数","name":"fNumber","relation":"fNumber","rules":{"integer":true},"type":"Integer"},"fTime":{"define":"fTime","label":"时间","name":"fTime","relation":"fTime","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"postDataCustomRefresh"},"idColumn":"fID","limit":20,"xid":"postData"});
}}); 
return __result;});
