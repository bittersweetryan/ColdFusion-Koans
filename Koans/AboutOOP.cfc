component extends="mxunit.framework.TestCase"{
	public void function createAnObject(){
		
		var food = new Components.oop.Food();
		
		assertEquals(food.getType(), "Components.oop.Food");
		 
	}
	
	public void function accesssors(){
		var food = new Components.oop.Food();
		
		food.setName("Banana");
		
		assertEquals(food.getName(), "Banana");
		 
	}
	
	public void function initFunctions(){
		var meat = new Components.oop.Meat().init("Cow");
		
		assertEquals(meat.getType(), "Components.oop.Meat");
		assertEquals(meat.getAnimal(), "Cow");
		assertEquals(meat.get(), "Cow");
	}
	
	public void function metaData(){
		//Please note that the getType function not a built in ColdFusion function
		//Take a look and see how its used to solve the following koan
		var meat = new Components.oop.Meat().init("Cow");
		
		var metaData = getMetaData(meat);
		
		assertEquals(ArrayLen(metaData.component.functions), 1);
		assertEquals(metaData.fullname, "");
		assertEquals(metaData.hint,"Basic comment for the class.");
		assertEquals(metaData.extends, "Components.oop.Food");
			
	}
	
	public void function superValues(){
		var meat = new Components.oop.Meat().init("Cow");
		
		assertEquals(meat.getName(), "Meat");
		meat.setName("Fish");
		assertEquals(meat.getName(), "Fish");
	}
	
	public void function superFunctions(){
		var meat = new Components.oop.Meat().init("Pig");
		var fruit = new Components.oop.Fruit().init("Apple");
		
		assertEquals(meat.caloriesPerDay(), "300");
		assertEquals(fruit.caloriesPerDay(), "600"); 
		 
	}

}