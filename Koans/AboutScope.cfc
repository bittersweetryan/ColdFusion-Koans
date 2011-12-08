component extends="mxunit.framework.TestCase"{
	
	public void function applicationScope(){
		//Go Check in the application.cfc file.  You might find it there
		assertEquals(application.scopeKey, "__");
	}
	
	public void function sessionScope(){
		assertEquals(session.scopeKey, "__" );
		//Please not that this could be accessed anywhere within your app.
		//Be Careful: with great power comes great responsibility. 
	}
	
	public void function requestScope(){
		assertEquals(request.scopeKey, "__");
		
		request.scopeKey = "Oh my, I just changed!";
		assertEquals(request.scopeKey, "__");
	}
}