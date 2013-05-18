component extends="Koans.BaseKoan" hint="Base class for ColdBox Data Koans" {
	 
	 variables.random188392 = "clear"; 
	 variables.random903823420 = "setNextEvent";
	 variables.random327248742 = "coldbox:setting:dsn";
	 variables.random4398320 = "event.setview";
	 variables.random123021390 = "rc.format";
	 variables.random09093829 = "postgetlist";
	 	 	  
	 private function methodToPurgeACacheWithKey(thedata) {
	 	return (variables.random188392 eq arguments.thedata);
	 }	
	 
	 private function methodToRelocateNewEventInController(thedata) {
	 	return (variables.random903823420 eq arguments.thedata);
	 }	
	 
	 private function methodToSelectViewToShow(thedata) {
	 	return (variables.random4398320 eq arguments.thedata);
	 }
	
	private function variableToCheckForDataFormatRequested(thedata) {
	 	return (variables.random123021390 eq arguments.thedata);
	 }
	 
	private function howWouldYouMapAColdBoxSettingForInjection(thedata) {
		return (variables.random327248742 eq arguments.thedata);
	}
	
	private function howDoYouWrapAHandlerAction(thedata) {
		return (variables.random09093829 eq arguments.thedata);
	}
	 	
}