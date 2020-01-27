component{
	this.name = "cfmongodb_people";
	this.mappings["/cfmongodb"] = getDirectoryFromPath(getCurrentTemplatePath()) & "../../";

	function onApplicationStart(){
		
		variables.dbname = "cfmongodb_examples";
		include "../initMongo.cfm";
		application.mongo = mongo;
		application.collection = "people_list";

		include "load.cfm";
	}

	function onRequestStart(){
		if( structKeyExists(url, "reload") ){
			onApplicationStart();
		}
	}

	function onApplicationStop(){
		application.mongo.close();
	}

}
