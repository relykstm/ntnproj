component {

    this.name = "Lucee";
	this.mappings["/model"]="model"
    THIS.sessionManagement="true";
    THIS.ormEnabled = "true";

	this.datasource = {
		class: 'com.mysql.jdbc.Driver'
	  , connectionString: 'jdbc:mysql://localhost:3306/newProj?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=true'
	  , username: 'root'
	  , password: "rootroot"
  	};

	THIS.ormsettings.logSQL=true;

	variables.framework = {
		reloadApplicationOnEveryRequest = true
	}

}