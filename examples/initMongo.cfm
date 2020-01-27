
<cfparam name="variables.dbName" default="mongorocks">

<cfscript>
	mongoConfig = createObject('component','cfmongodb.core.MongoConfig').init(dbName=variables.dbName);


	//initialize the core cfmongodb MongoClient object
	mongo = createObject('component','cfmongodb.core.MongoClient').init(mongoConfig);

</cfscript>