define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	/*var seconds = 59;
	var speed = 1000;
	var span = document.getElementById("count");
	function countDown(seconds,speed){
	                var txt = "00 : " + ((seconds < 10) ? "0" + seconds : seconds) + " : 00";
	                span.innerHTML = txt;
	                var timeId = setTimeout("countDown(seconds--,speed)",speed);
	                if(seconds == 0){
	                	alert("123");
	                    clearTimeout(timeId);
	                };
	}
	
	countDown(seconds,speed);*/
	
	/*var wait=5; //第一次时间设置时间(秒为单位)
	function time(o) {
			if (wait == 0) {
				o.removeAttribute("disabled");			
				o.value="免费获取验证码";
				wait = 5; //重新的时间设置时间(秒为单位)
			} else {
				o.setAttribute("disabled", true);
				o.value="重新发送(" + wait + ")";
				wait--;
				setTimeout(function() {
					time(o)
				},1000)     ////1000就是1秒钟提醒一次
				if(wait<2){ //少于2秒钟时,每次提醒一次提醒一次
				alert('1'); //alert 提示框提醒
				}
			}
		}

	document.getElementById("count").onclick=function(){time(this);}*/

	Model.prototype.timer = function(event){
		var seconds = 59;
		var speed = 1000;
		var span = document.getElementById("count");
		var txt = "00 : " + ((seconds < 10) ? "0" + seconds : seconds) + " : 00";
//	                span = txt;
	                /*var timeId = setTimeout("countDown(seconds--,speed)",speed);*/
	                if(seconds == 0){
	                	alert("123");
	                    clearTimeout(timeId);
	                };
	};

	Model.prototype.mm = function(m_time){
		var title = this.comp("title_bar");
		console.log(title)
		
		var last_time = m_time*60;
		var timer = null;
		console.log(last_)
		
		timer = setInterval(function(){
			if(last_time!=0){
				last_time -= last_time;
				console.log(last_time);
			}else{
				clearInterval(timer);
			}
		},1000)
		
		
	}


	Model.prototype.submit = function(event){
		if(confirm("确定交卷吗？")){
			justep.Shell.showPage(require.toUrl("./result.w"));
		}
	};


	return Model;
});