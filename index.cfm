<cfscript>
	testSuite = new mxunit.framework.TestSuite();

	testSuite.addAll("Koans.AboutAsserts");
	testSuite.addAll("Koans.AboutVariables");
	testSuite.addAll("Koans.AboutBooleans");
	testSuite.addAll("Koans.AboutStrings");
	testSuite.addAll("Koans.AboutNumbers");
	testSuite.addAll("Koans.AboutDates");
	testSuite.addAll("Koans.AboutArrays");
	testSuite.addAll("Koans.AboutStructs");
	testSuite.addAll("Koans.AboutLists");
	testSuite.addAll("Koans.AboutFunctions");
	testSuite.addAll("Koans.AboutComponents");
	testSuite.addAll("Koans.AboutComponentTags");
	testSuite.addAll("Koans.AboutExceptions");
	testSuite.addAll("Koans.AboutQueries");
	testSuite.addAll("Koans.AboutOOP");
	testSuite.addAll("Koans.AboutScope");

	results = testSuite.run();

	results = replaceNoCase(results.getResultsOutput("html"),"#application.currentDirectory#.","","ALL");
	results = replaceNoCase(results,"/mxunit","mxunit","ALL");

</cfscript>
<div style="v-align:top">
<span>
<img src="cfkoanslogo.png" style="width:200px"/>
</span>
<span style="font-size:15px; font-style:bold">Welcome to the ColdFusion Koans</span>
</div>
<p>The ColdFusion Koans are a set of unit tests that the user must make pass by filling in values. To get started open the file AboutAsserts/AboutAsserts.cfc and begin making the tests pass.</p>
<p>As you complete a secion you'll confirm your tests by refreshing this page or running the test suite using the mxunit eclipse plugin.</p>
<p><b>This is a comunity run project to please feel free to fork this project and contribute any time.</b></p>com
<cfoutput>
	#results#
</cfoutput>
