component extends="mxunit.framework.TestCase"{

	public void function testGetingArrayLength(){
		var myArray = ["one","two","three"];

		assertEquals(arrayLen(myArray),"__");
	}

	public void function testGettingArrayElement(){
		var myArray = ["one","two","three"];
		
		//arrays in coldfusion start with an index of one, not zero like a lot of languages
		assertEquals(myArray[1],"__");		
	}

	private String function returnString(String myArg){
		                  
	}

	public void function testAppendingArrayElements(){
		var myArray = ["one","two","three"];
		
		arrayAppend(myArray,"four");
		
		assertEquals(myArray[4],"__");
	}

	public void function testArrayTextSorting(){
		var myArray = ["pineapple","banana","grape","kiwi"];

		arraySort(myArray,"text");

		assertEquals(myArray[2],"__");
	}

	public void function testArrayNumberSorting(){
		var myArray = [6,9,34,8,22];

		arraySort(myArray,"numeric");

		assertEquals(myArray[3],"__");
	}

	public void function testClearingArray() {
		
		// Use the function arrayClear() to delete the data in an array
		// Usage: arrayClear(array)
		// Reference: http://help.adobe.com/en_US/ColdFusion/9.0/CFMLRef/WSc3ff6d0ea77859461172e0811cbec22c24-7f1f.html

		// Set our array
		
		var myArray = ["a","b","c"];

		// Clear the array
		
		arrayClear(myArray);

		// Use arrayFind() to see if the letter "a" still exists in our array
		// Note: arrayFind() returns the index in the array of the first match, or 0, if there is no match.

		assertEquals(arrayFind(myArray, "a") EQ 1,"__");

	}
}