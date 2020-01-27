component output="false" displayname=""  {

	this.name = "mongoexamples";
	this.mappings["/cfmongodb"] = getDirectoryFromPath(getCurrentTemplatePath()) & "../";

	this.javaSettings = {LoadPaths = ["../java"], loadColdFusionClassPath = true, reloadOnChange = false}

}
