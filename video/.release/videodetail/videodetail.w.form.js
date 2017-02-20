define(function(require){
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