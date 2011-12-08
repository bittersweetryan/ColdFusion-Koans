component extends="mxunit.framework.TestCase"{
	public void function createAnObject(){
		
		var food = new Components.oop.Food();
		
		assertEquals(food.getType(), "__");
		 
	}
	
	public void function accesssors(){
		var food = new Components.oop.Food();
		
		food.setName("Banana");
		
		assertEquals(food.__(), "Banana");
		
		food.__(300);
		
		assertEquals(food.getCalories(), 300);
		 
	}
	
	public void function initFunctions(){
		var meat = new Components.oop.Meat("Cow");
		
		
		//This is another option, its up you you which one you pick.  I know which one I will use :P
		var fruit = createObject("Components.oop.Fruit");
		fruit.init("Pear");
		
		assertEquals(meat.getType(), "__");
		assertEquals(meat.getAnimal(), "__");
		assertEquals(fruit.getType(), "__");
		assertEquals(fruit.getName(), "__");
	}
	
	public void function aboutMetaData(){
		//Please note that the getType function not a built in ColdFusion function
		//Take a look and see how its used to solve the following koan
		var meat = new Components.oop.Meat("Cow");
		
		var metaData = getMetaData(meat);
	
		//This one is a bit tricky.  Just think about what other functions may be created for you. 
		assertEquals(ArrayLen(metaData.functions), "__");
		assertEquals(metaData.fullname, "__");
		assertEquals(metaData.hint,"__");
		assertEquals(metaData.extends.fullName, "__");
		assertEquals(metaData.properties[1].name, "__");
		
		//If your still stuck, feel free to dump the metaData and poke around it yourself.
	}
	
	public void function superValues(){
		var meat = new Components.oop.Meat("Cow");
		
		assertEquals(meat.getName(), "__");
		
		//This shows your how to set a super value
		meat.setName("Fish");
		//Nothing special right, pretty simple
		assertEquals(meat.getName(),"__");
	}
	
	public void function superFunctions(){
		var meat = new Components.oop.Meat("Pig");
		var fruit = new Components.oop.Fruit("Apple");
		
		assertEquals(meat.caloriesPerDay(), "__");
		assertEquals(fruit.caloriesPerDay(), "__"); 
		 
	}

}