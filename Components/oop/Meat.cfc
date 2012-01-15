component extends="Food" accessors="true" hint="Basic comment for the class."{
	
	property name="animal";
	
	function init( animal ){
		this.setAnimal(animal);
		this.setName("Meat");
		this.setCalories(300);
		this.setServingsPerDay(1);
	}
} 