define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	
	var Model = function() {
		this.callParent();
	};

	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};
	
	Model.prototype.switchImage = function(){
		if(justep.Shell.userImage.get()){
			return require.toUrl(justep.Shell.userImage.get())
		}
		else{
			return require.toUrl('../img/user.png')
		}
    }
    
    Model.prototype.switchText = function(){
        if(justep.Shell.userName.get()){
			return justep.Shell.userName.get();
		}else{
			return "立即登录"
		}
    
    }
   
	Model.prototype.switchBtnClick = function(event) {

		if(justep.Shell.userName.get()){
			justep.Shell.showPage("goout");
		}else{
			justep.Shell.showPage("login");
		}
		
	};
	Model.prototype.showPersional = function(event) {
		justep.Shell.showPage("personal");
	};

	Model.prototype.modelLoad = function(event) {

	};

	Model.prototype.modelUnLoad = function(event) {
		// justep.Shell.off();
	};

	Model.prototype.button5Click = function(event){
		justep.Shell.showPage(require.toUrl("../test/testLogin.w"));
	};

	Model.prototype.jobIPub = function(event){
		justep.Shell.showPage(require.toUrl("./company/jobPublished.w"));
	};

	Model.prototype.li1Click = function(event){
		justep.Shell.showPage(require.toUrl("./developer/resume.w"));
	};

	Model.prototype.toCollection = function(event){
		justep.Shell.showPage(require.toUrl("./developer/jobCollection.w"));
	};

	Model.prototype.infoClick = function(event){
		justep.Shell.showPage(require.toUrl("./company/info.w"));
	};

	Model.prototype.getVideos = function(event){
		justep.Shell.showPage(require.toUrl("./developer/videos.w"));
	};

	Model.prototype.getDocs = function(event){
		justep.Shell.showPage(require.toUrl("./developer/docs.w"));
	};

	Model.prototype.getActivities = function(event){
		justep.Shell.showPage(require.toUrl("./developer/activity.w"));
	};

	Model.prototype.getRecords = function(event){
		justep.Shell.showPage(require.toUrl("./developer/record.w"));
	};

	Model.prototype.peopleGotten = function(event){
		justep.Shell.showPage(require.toUrl("./company/peopleIGet.w"));
	};

	Model.prototype.whoGet = function(event){
		justep.Shell.showPage(require.toUrl("./developer/whoGetMe.w"));
	};

	Model.prototype.certify = function(event){
		justep.Shell.showPage(require.toUrl("./developer/certification.w"));
	};

	return Model;
});