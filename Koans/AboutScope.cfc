component extends="mxunit.framework.TestCase"{
	
	public void function applicationScope(){
		//Go Check in the application.cfc file.  You might find it there
		assertEquals(__, application.scopeKey);
	}
	
	public void function sessionScope(){
		
	}
	
	public void function requestScope(){
		assertEquals("This is set on every request", request.scopeKey);
		
		request.scopeKey = "Oh my, I just changed!";
		assertEquals("Oh my, I just changed!", request.scopeKey);
	}
}