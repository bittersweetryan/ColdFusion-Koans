/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/

/* Test your basic Coldbox Knowledge with this QUIZ style coldbox Koan
*  To use a functional ColdBox Koan - Watch the following Github Project
*  https://github.com/gpickin/Coldfusion-Coldbox-Koans
*/

component extends="Koans.ColdBoxData.CBDataBaseKoan"{
	
	/**
	*@order 1
	*/
	public void function testMethodToSelectViewToShow(){
		//In coldbox, you can explicitly update the view to run after the handler is complete.
		//What method do you need to call to do so.
		//Hint: this may or may not require an object.method to be correct 
		
		//make this statement pass by modifying the variable declaration above
		assertTrue(methodToSelectViewToShow("event.setView"), "Enter the correct name for the method as a string");
	}
	
		
	/**
	*@order 2
	*/
	public void function testMethodToPurgeACacheWithKey(){
		//In coldbox, when you manually add something to a CacheBox Cache, and you want to invalidate
		//that cache item, you need to call a specific method on the CacheBox Cache.
		//Enter the method name into the method below to make the test return true
		
		//make this statement pass by modifying the variable declaration above
		assertTrue(methodToPurgeACacheWithKey("clear"), "Enter the correct name for the method as a string");
	}

	/**
	*@order 3
	*/
	public void function testMethodToRelocateNewEventInController(){
		//In coldbox, when you are in a Handler Action, and you have processed something, and you want to 
		//relocate to another event (ie the list page after deleting an object), instead of using the 
		//cflocation tag, what ColdBox function would you call.
		//Enter the name of the function below (only the method name, no params etc)
		//Hint: this may or may not require an object.method to be correct
		
		assertTrue(methodToRelocateNewEventInController("setNextEvent"), "Enter the correct name for the method as a string");
	}
	
	/**
	*@order 4
	*/
	public void function testVariableToCheckForDataFormatRequested(){
		//In coldbox, there is an easy way to detect what type of data you want returned.
		//If you want XML, you can append ".xml" to the URL, and ColdBox will automatically
		//create a variable for you.
		//Enter the variable name in the string below to see if you are correct.
		
		//make this statement pass by modifying the variable declaration above
		assertTrue(variableToCheckForDataFormatRequested("rc.format"), "Enter the correct name for the method as a string");
	}

	
	/**
	*@order 5
	*/
	public void function testHowWouldYouMapAColdBoxSettingForInjection(){
		//In coldbox, you can inject settings from the ColdBox Application Configuration into models
		//with Dependency Injection by MAPPING the setting.
		//What MAPPING would you use to pull a variable called "dsn"
		
		//make this statement pass by modifying the variable declaration above
		assertTrue(howWouldYouMapAColdBoxSettingForInjection("coldbox:setting:dsn"), "Enter the correct path mapping to the variable dsn");
	}

	/**
	*@order 6
	*/
	public void function testHowDoYouWrapAHandlerAction(){
		//In coldbox, you can listen for Handler actions, and run code before, after, or before/after an action
		//If you want to execute code after a handler action called "getList", what would the function be called
		
		//make this statement pass by modifying the variable declaration above
		assertTrue(howDoYouWrapAHandlerAction("postgetlist"), "Enter the correct function you would create to execute after the getlist handler action");
	}
	
}