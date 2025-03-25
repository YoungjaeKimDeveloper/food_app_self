// Category
enum FoodCategory { burgers, salads, sides, desserts, drinks }

// Seperation of Concerns [SOC + OOP]
class Food {
  // Member Variables
  final String name; //cheese burger
  final String description; // a burger full of cheese
  final String imagePath; // lib/images/cheese_burger.jpg
  final double price; // 4.99
  final FoodCategory foodCategory; //burger
  List<Addon> availableAddons; // [extra cheese, patty]

  // Constructor
  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.foodCategory,
    required this.availableAddons,
  });
}

// food addons
// Name + Price 만을 이야기하는거임
class Addon {
  String name;
  double price;
  Addon({required this.name, required this.price});
}
