component extends="Food" accessors="true" {
	
	property name="plant";
	
	function init( plant ){
		this.setPlant(plant);
		this.setName("Fruit");
		this.setCalories(200);
		this.setServingsPerDay(3);
		
	}
} 