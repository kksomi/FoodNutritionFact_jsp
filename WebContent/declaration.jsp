<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%-- 선언 --%>
<%!public enum FoodGroup { 
		AMERICAN_INDIAN, BABY_FOODS, BAKED_FOODS, BEANS_AND_LENTILS, BEVERAGES, BREAKFAST_CEREALS,
		DAIRY_AND_EGG_PRODUCTS, FATS_AND_OILS, FAST_FOODS, FISH, FRUITS, GRAINS_AND_PASTA, NUTS_AND_SEEDS, MEATS,
		PREPARED_MEALS, RESTAURANT_FOODS, SNACKS, SOUPS_AND_SAUCES, SPICES_AND_HERBS, SWEETS, VEGETABLES;
	};

	public class FoodNutrientFact {
		private int id;
		private String name;
		private FoodGroup group;
		private int calories;
		private double fat;
		private double protein;
		private double carbohydrate;
		private double sugars;
		private double fiber;
		private int cholesterol;
		private double saturatedFats;

		public FoodNutrientFact(int id, String name, FoodGroup group, int calories, double fat, double protein,
				double carbohydrate, double sugars, double fiber, int cholesterol, double saturatedFats) {
			super();
			this.id = id;
			this.name = name;
			this.group = group;
			this.calories = calories;
			this.fat = fat;
			this.protein = protein;
			this.carbohydrate = carbohydrate;
			this.sugars = sugars;
			this.fiber = fiber;
			this.cholesterol = cholesterol;
			this.saturatedFats = saturatedFats;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public FoodGroup getGroup() {
			return group;
		}

		public void setGroup(FoodGroup group) {
			this.group = group;
		}

		public int getCalories() {
			return calories;
		}

		public void setCalories(int calories) {
			this.calories = calories;
		}

		public double getFat() {
			return fat;
		}

		public void setFat(double fat) {
			this.fat = fat;
		}

		public double getProtein() {
			return protein;
		}

		public void setProtein(double protein) {
			this.protein = protein;
		}

		public double getCarbohydrate() {
			return carbohydrate;
		}

		public void setCarbohydrate(double carbohydrate) {
			this.carbohydrate = carbohydrate;
		}

		public double getSugars() {
			return sugars;
		}

		public void setSugars(double sugars) {
			this.sugars = sugars;
		}

		public double getFiber() {
			return fiber;
		}

		public void setFiber(double fiber) {
			this.fiber = fiber;
		}

		public int getCholesterol() {
			return cholesterol;
		}

		public void setCholesterol(int cholesterol) {
			this.cholesterol = cholesterol;
		}

		public double getSaturatedFats() {
			return saturatedFats;
		}

		public void setSaturatedFats(double saturatedFats) {
			this.saturatedFats = saturatedFats;
		}

		@Override
		public String toString() {
			return "FoodNutrientFact [id=" + id + ", name=" + name + ", group=" + group + ", calories=" + calories
					+ ", fat=" + fat + ", protein=" + protein + ", carbohydrate=" + carbohydrate + ", sugars=" + sugars
					+ ", fiber=" + fiber + ", cholesterol=" + cholesterol + ", saturatedFats=" + saturatedFats + "]";
		}
	};

	public class FoodNutrient {
		private List<FoodNutrientFact> fList = new ArrayList<FoodNutrientFact>();

		public FoodNutrient() {
			fList.add(new FoodNutrientFact(167526, "Bread Salvadoran Sweet Cheese (Quesadilla Salvadorena)",
					FoodGroup.BAKED_FOODS, 374, 17.12, 7.12, 47.84, 24.9, 0.7, 59, 46.12));
			fList.add(new FoodNutrientFact(172697, "Chocolate Cake", FoodGroup.BAKED_FOODS, 371, 15.1, 5.3, 53.4, 0,
					1.6, 58, 5.43));
			fList.add(new FoodNutrientFact(167546, "Honey-Combed With Peanut Butter", FoodGroup.SWEETS, 473, 20.18,
					8.72, 67.41, 62.68, 1.9, 0, 5.735));
			fList.add(new FoodNutrientFact(167995, "Marshmallows", FoodGroup.SWEETS, 318, 0.2, 1.8, 81.3, 57.56, 0.1, 0,
					0.056));
			fList.add(new FoodNutrientFact(167680, "Restaurant Italian Spaghetti With Meat Sauce",
					FoodGroup.RESTAURANT_FOODS, 121, 3.59, 5.79, 16.4, 1.82, 1.6, 9, 1.062));
			fList.add(new FoodNutrientFact(170415, "Onion Rings", FoodGroup.RESTAURANT_FOODS, 276, 14.3, 4.14, 33.79,
					5.1, 2.2, 0, 2.137));
			fList.add(new FoodNutrientFact(167742, "Scallops", FoodGroup.FISH, 111, 0.84, 20.54, 5.41, 0, 0, 41, 0.218));
			fList.add(new FoodNutrientFact(171971, "Cooked Shrimp", FoodGroup.FISH, 119, 1.7, 22.78, 1.52, 0, 0, 211,
					0.521));
			fList.add(new FoodNutrientFact(167749, "Lemon Peel Raw", FoodGroup.FRUITS, 47, 0.3, 1.5, 16, 4.17, 10.6, 0,
					0.039));
			fList.add(new FoodNutrientFact(167762, "Strawberries", FoodGroup.FRUITS, 32, 0.3, 0.67, 7.68, 4.89, 2, 0,
					0.015));
			fList.add(new FoodNutrientFact(167838, "Pork Chops (Lean)", FoodGroup.MEATS, 195, 6.9, 31, 0, 0, 0, 88,
					2.327));
			fList.add(new FoodNutrientFact(173630, "Roasted Chicken Wings", FoodGroup.MEATS, 254, 16.87, 23.79, 0, 0, 0,
					141, 4.976));
			fList.add(new FoodNutrientFact(167959, "Snacks Popcorn Air-Popped", FoodGroup.SNACKS, 387, 4.54, 12.94,
					77.78, 0.87, 14.5, 0, 0.637));
			fList.add(new FoodNutrientFact(174790, "Soft Pretzels", FoodGroup.SNACKS, 345, 3.1, 8.2, 71.04, 0.25, 1.7,
					0, 0.695));
			fList.add(new FoodNutrientFact(168045, "Fish Salmon Sockeye (Red) Raw (Alaska Native)",
					FoodGroup.AMERICAN_INDIAN, 153, 7.28, 21.94, 0, 0, 0, 64, 1.007));
			fList.add(new FoodNutrientFact(168098, "Cheese Monterey Low Fat", FoodGroup.DAIRY_AND_EGG_PRODUCTS, 313,
					21.6, 28.2, 0.7, 0.56, 0, 65, 14.04));
			fList.add(new FoodNutrientFact(783964, "Egg Omelet Or Scrambled Egg Made With Oil",
					FoodGroup.DAIRY_AND_EGG_PRODUCTS, 180, 13.95, 11.16, 1.81, 1.58, 0, 308, 3.649));
			fList.add(new FoodNutrientFact(168099, "Creamy Dressing Made With Sour Cream", FoodGroup.FATS_AND_OILS, 107,
					2.7, 1.4, 20, 5.35, 0, 0, 0.494));
			fList.add(new FoodNutrientFact(171413, "Olive Oil", FoodGroup.FATS_AND_OILS, 884, 100, 0, 0, 0, 0, 0,
					13.808));
			fList.add(new FoodNutrientFact(167690, "Babyfood Apple Yogurt Dessert Strained", FoodGroup.BABY_FOODS, 93,
					1.6, 0.8, 19.5, 12.02, 0.5, 6, 1.034));
			fList.add(new FoodNutrientFact(168106, "Papad", FoodGroup.BEANS_AND_LENTILS, 371, 3.25, 25.56, 59.87, 0,
					18.6, 0, 0.786));
			fList.add(new FoodNutrientFact(169282, "Green Soybeans", FoodGroup.BEANS_AND_LENTILS, 147, 6.8, 12.95,
					11.05, 0, 4.2, 4, 1.084));
			fList.add(new FoodNutrientFact(168122, "Coffee Instant With Whitener Reduced Calorie", FoodGroup.BEVERAGES,
					509, 29.1, 1.96, 59.94, 59, 0.5, 0, 25.128));
			fList.add(new FoodNutrientFact(168746, "Beer", FoodGroup.BEVERAGES, 43, 0, 0.46, 3.55, 0, 0, 0, 0));
			fList.add(new FoodNutrientFact(168138, "Post Honey Bunches Of Oats Honey Roasted",
					FoodGroup.BREAKFAST_CEREALS, 401, 5.46, 7.12, 81.19, 19.79, 4.2, 0, 0.64));
			fList.add(new FoodNutrientFact(171646, "Granola Homemade", FoodGroup.BREAKFAST_CEREALS, 489, 24.31, 13.67,
					53.88, 19.8, 8.9, 0, 3.957));
			fList.add(new FoodNutrientFact(170294, "Cheeseburger, Single Large Patty, Plain", FoodGroup.FAST_FOODS, 310,
					15.97, 17.29, 24.07, 4.67, 1.7, 51, 6.873));
			fList.add(new FoodNutrientFact(173292, "Cheese Pizza", FoodGroup.FAST_FOODS, 266, 9.69, 11.39, 33.33, 3.58,
					2.3, 17, 4.465));
			fList.add(new FoodNutrientFact(170688, "Bulgur Dry", FoodGroup.GRAINS_AND_PASTA, 342, 1.33, 12.29, 75.87,
					0.41, 12.5, 0, 0.232));
			fList.add(new FoodNutrientFact(170071, "Yam", FoodGroup.VEGETABLES, 118, 0.17, 1.53, 27.88, 0.5, 4.1, 0,
					0.037));
			fList.add(new FoodNutrientFact(169230, "Garlic", FoodGroup.VEGETABLES, 149, 0.5, 6.36, 33.06, 1, 2.1, 0,
					0.089));
			fList.add(new FoodNutrientFact(170918, "Caraway Seed", FoodGroup.SPICES_AND_HERBS, 333, 14.59, 19.77, 49.9,
					0.64, 38, 0, 0.62));
			fList.add(new FoodNutrientFact(173474, "Peppermint", FoodGroup.SPICES_AND_HERBS, 70, 0.94, 3.75, 14.89,
					0, 8, 0, 0.246));
			fList.add(new FoodNutrientFact(784374, "Cashews Lightly Salted", FoodGroup.NUTS_AND_SEEDS, 580, 47.72,
					14.78, 31.55, 4.84, 2.9, 0, 9.246));
			fList.add(new FoodNutrientFact(170567, "Almonds", FoodGroup.NUTS_AND_SEEDS, 579, 49.93,
					21.15, 21.55, 4.35, 12.5, 0, 3.802));
			fList.add(new FoodNutrientFact(784425, "Brown Nut Gravy Meatless", FoodGroup.SOUPS_AND_SAUCES, 124, 10.5,
					9.83, 10.09, 6.33, 1.8, 0, 7.07));
			fList.add(new FoodNutrientFact(171579, "Pesto", FoodGroup.SOUPS_AND_SAUCES, 418, 37.6,
					2.29, 6.2, 0.72, 1.3, 0, 1.314));
		}

		public List<FoodNutrientFact> getList() {
			return fList;
		}

		public void setList(List<FoodNutrientFact> list) {
			this.fList = list;
		}

		// add 
		public void add(FoodNutrientFact food) {
			fList.add(food);
		}

		// remove all 
		public void removeAll() {
			Iterator<FoodNutrientFact> it = fList.iterator();
			while (it.hasNext()) {
				FoodNutrientFact f = it.next();
				it.remove();
			}
		}

		// remove 
		public void remove(FoodNutrientFact other) {
			Iterator<FoodNutrientFact> it = fList.iterator();
			while (it.hasNext()) {
				FoodNutrientFact f = it.next();
				if (f == other) {
					it.remove();
				}
			}
		}

		// get 
		public FoodNutrientFact get(FoodNutrientFact other) {
			Iterator<FoodNutrientFact> it = fList.iterator();
			while (it.hasNext()) {
				FoodNutrientFact f = it.next();
				if (f == other) {
					return f;
				}
			}
			return null;
		}

		// get (by name)
		public FoodNutrientFact get(String name) {
			FoodNutrientFact food = null;
			for (FoodNutrientFact f : fList) {
				if (f != null && f.getName().equals(name)) {
					food = f;
					break;
				}
			}
			return food;
		}
	}
	
	FoodNutrient food = new FoodNutrient();
	%>


