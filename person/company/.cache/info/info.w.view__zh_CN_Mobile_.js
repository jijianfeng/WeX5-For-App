window.__justep.__ResourceEngine.loadCss([{url: '/v_96dd78e6ca68430c8a8c89865a0db1dal_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/justep/panel/css/panel,$model/system/components/justep/common/css/scrollable,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/contents/css/contents,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/menu/css/menu,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/common/css/forms,$model/system/components/justep/bar/css/bar'},{url: '/v_a260bac964fe40c4a5b8e3f62c126263l_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'}]);window.__justep.__ResourceEngine.loadJs(['/v_cdb766e4122f426bace674e3e45f0c70l_zh_CNs_d_m/system/components/comp.min.js','/v_27e6c8b10c974838a7795ee35fa7eda8l_zh_CNs_d_m/system/common.min.js','/v_7d5dadd349324ddf9410cbb012b28324l_zh_CNs_d_m/system/core.min.js']);define(function(require){
require('$model/UI2/system/components/justep/labelEdit/labelEdit');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/output/output');
require('$model/UI2/system/components/justep/input/input');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/Hello/person/company/info'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cyeiQJz';
	this._flag_='ac067f76c9b13e9a86f0aec7e50ff4ad';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{},"directDelete":false,"events":{"onCustomRefresh":"resumeRefresh"},"limit":20,"xid":"resumeData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"year":{"define":"year","label":"年","name":"year","relation":"year","type":"String"}},"directDelete":false,"events":{},"idColumn":"year","initData":"[{\"year\":\"2015\"},{\"year\":\"2014\"},{\"year\":\"2013\"},{\"year\":\"2012\"},{\"year\":\"2011\"},{\"year\":\"2010\"},{\"year\":\"2009\"},{\"year\":\"2008\"},{\"year\":\"2007\"},{\"year\":\"2006\"},{\"year\":\"2005\"},{\"year\":\"2004\"},{\"year\":\"2003\"},{\"year\":\"2002\"},{\"year\":\"2001\"},{\"year\":\"2000\"},{\"year\":\"1999\"},{\"year\":\"1998\"},{\"year\":\"1997\"},{\"year\":\"1996\"},{\"year\":\"1995\"},{\"year\":\"1994\"},{\"year\":\"1993\"},{\"year\":\"1992\"},{\"year\":\"1991\"},{\"year\":\"1990\"},{\"year\":\"1989\"},{\"year\":\"1987\"},{\"year\":\"1986\"},{\"year\":\"1985\"},{\"year\":\"1984\"},{\"year\":\"1983\"},{\"year\":\"1982\"},{\"year\":\"1981\"},{\"year\":\"1980\"},{\"year\":\"1979\"},{\"year\":\"1978\"},{\"year\":\"1977\"},{\"year\":\"1976\"},{\"year\":\"1975\"},{\"year\":\"1974\"},{\"year\":\"1973\"},{\"year\":\"1972\"},{\"year\":\"1971\"},{\"year\":\"1970\"},{\"year\":\"1969\"},{\"year\":\"1968\"},{\"year\":\"1967\"},{\"year\":\"1966\"},{\"year\":\"1965\"},{\"year\":\"1964\"},{\"year\":\"1963\"},{\"year\":\"1962\"},{\"year\":\"1961\"},{\"year\":\"1960\"},{\"year\":\"1959\"},{\"year\":\"1958\"},{\"year\":\"1957\"},{\"year\":\"1956\"},{\"year\":\"1955\"},{\"year\":\"1954\"},{\"year\":\"1953\"},{\"year\":\"1952\"},{\"year\":\"1951\"},{\"year\":\"1950\"}]","limit":-1,"xid":"year"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"month":{"define":"month","label":"月","name":"month","relation":"month","type":"String"}},"directDelete":false,"events":{},"idColumn":"month","initData":"[{\"month\":\"2\"},{\"month\":\"3\"},{\"month\":\"4\"},{\"month\":\"5\"},{\"month\":\"6\"},{\"month\":\"7\"},{\"month\":\"8\"},{\"month\":\"9\"},{\"month\":\"10\"},{\"month\":\"11\"},{\"month\":\"12\"}]","limit":20,"xid":"month"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"day":{"define":"day","label":"日","name":"day","relation":"day","type":"String"}},"directDelete":false,"events":{},"idColumn":"day","initData":"[{\"day\":\"2\"},{\"day\":\"3\"},{\"day\":\"4\"},{\"day\":\"5\"},{\"day\":\"6\"},{\"day\":\"7\"},{\"day\":\"8\"},{\"day\":\"9\"},{\"day\":\"10\"},{\"day\":\"11\"},{\"day\":\"12\"},{\"day\":\"13\"},{\"day\":\"14\"},{\"day\":\"15\"},{\"day\":\"16\"},{\"day\":\"17\"},{\"day\":\"18\"},{\"day\":\"19\"},{\"day\":\"20\"},{\"day\":\"21\"},{\"day\":\"22\"},{\"day\":\"23\"},{\"day\":\"24\"},{\"day\":\"25\"},{\"day\":\"26\"},{\"day\":\"27\"},{\"day\":\"28\"},{\"day\":\"29\"},{\"day\":\"30\"},{\"day\":\"31\"}]","limit":-1,"xid":"day"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"sex":{"define":"sex","name":"sex","relation":"sex","type":"String"}},"directDelete":false,"events":{},"idColumn":"sex","initData":"[{\"sex\":\"男\"},{\"sex\":\"女\"}]","limit":20,"xid":"sex"});
}}); 
return __result;});