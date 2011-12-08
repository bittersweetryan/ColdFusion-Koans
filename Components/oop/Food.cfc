component extends="BaseComponent" accessors="true"{
			
	property name="name";
	property name="calories";
	property name="servingsPerDay";
	property name="howToCook"; 
	
	function init(){
		
	}
	
	function caloriesPerDay(){
		return this.getCalories() * this.getServingsPerDay();
	}
} 