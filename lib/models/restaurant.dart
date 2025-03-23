import "package:flutter/material.dart";

import "food.dart";

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    // 이미지 넣을때는 lib path기준으로 넣어주어야함
    Food(
      name: "Classic Cheese burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",

      imagePath: "lib/images/hamburgers/hamburger1.jpg",
      price: 0.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "Spicy Chicken Sandwich",
      description:
          "Crispy chicken breast with spicy mayo, lettuce, and pickles on a toasted bun.",
      imagePath: "lib/images/hamburgers/hamburger2.jpg",
      price: 1.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra spicy sauce", price: 0.49),
        Addon(name: "Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),

    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, cheddar cheese, and a juicy beef patty.",
      imagePath: "lib/images/hamburgers/hamburger3.jpg",
      price: 2.99,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Onion rings", price: 1.49),
        Addon(name: "Extra BBQ sauce", price: 0.49),
        Addon(name: "Jalapenos", price: 0.99),
      ],
    ),

    Food(
      name: "Mushroom Swiss Burger",
      description:
          "Sautéed mushrooms, Swiss cheese, and garlic aioli on a beef patty.",
      imagePath: "lib/images/hamburgers/hamburger4.jpg",
      price: 3.49,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra mushrooms", price: 1.29),
        Addon(name: "Caramelized onions", price: 0.99),
        Addon(name: "Truffle aioli", price: 1.99),
      ],
    ),

    Food(
      name: "Double Patty Smash Burger",
      description:
          "Two thin beef patties, American cheese, grilled onions, and house sauce.",
      imagePath: "lib/images/hamburgers/hamburger5.jpg",
      price: 4.49,
      foodCategory: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra patty", price: 2.49),
        Addon(name: "Lettuce & tomato", price: 0.99),
        Addon(name: "Pickles", price: 0.49),
      ],
    ),

    // Salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, parmesan cheese, croutons, and creamy Caesar dressing.",
      imagePath: "lib/images/salads/salad1.jpg",
      price: 3.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.49),
        Addon(name: "Extra Parmesan", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.49),
      ],
    ),

    Food(
      name: "Greek Salad",
      description:
          "Fresh cucumbers, tomatoes, red onions, feta cheese, and olives with Greek dressing.",
      imagePath: "lib/images/salads/salad2.jpg",
      price: 4.49,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Shrimp", price: 3.99),
        Addon(name: "Extra Feta", price: 1.29),
        Addon(name: "Kalamata Olives", price: 0.99),
      ],
    ),

    Food(
      name: "Cobb Salad",
      description:
          "Mixed greens with grilled chicken, bacon, egg, avocado, tomatoes, and blue cheese.",
      imagePath: "lib/images/salads/salad3.jpg",
      price: 5.49,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Avocado", price: 1.99),
        Addon(name: "Hard-boiled Egg", price: 0.99),
        Addon(name: "Ranch Dressing", price: 0.49),
      ],
    ),

    Food(
      name: "Asian Chicken Salad",
      description:
          "Crunchy cabbage, carrots, grilled chicken, almonds, and sesame ginger dressing.",
      imagePath: "lib/images/salads/salad4.jpg",
      price: 4.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Almonds", price: 0.99),
        Addon(name: "Mandarin Oranges", price: 1.49),
        Addon(name: "Sesame Seeds", price: 0.49),
      ],
    ),

    Food(
      name: "Southwest Taco Salad",
      description:
          "Romaine, black beans, corn, avocado, cheddar cheese, and chipotle dressing.",
      imagePath: "lib/images/salads/salad5.jpg",
      price: 5.99,
      foodCategory: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Steak", price: 3.99),
        Addon(name: "Extra Cheese", price: 1.29),
        Addon(name: "Sour Cream", price: 0.79),
      ],
    ),

    // sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries, lightly salted and served hot.",
      imagePath: "lib/images/sides/side1.jpg",
      price: 2.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.99),
        Addon(name: "Bacon bits", price: 1.49),
        Addon(name: "Garlic aioli", price: 0.99),
      ],
    ),

    Food(
      name: "Onion Rings",
      description: "Crispy battered onion rings, deep-fried to perfection.",
      imagePath: "lib/images/sides/side2.jpg",
      price: 3.49,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra crispy", price: 0.99),
        Addon(name: "Spicy seasoning", price: 0.49),
        Addon(name: "Ranch dip", price: 0.99),
      ],
    ),

    Food(
      name: "Mozzarella Sticks",
      description: "Deep-fried mozzarella cheese sticks with marinara sauce.",
      imagePath: "lib/images/sides/side3.jpg",
      price: 4.49,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra marinara", price: 0.99),
        Addon(name: "Parmesan sprinkle", price: 0.79),
        Addon(name: "Garlic butter dip", price: 0.99),
      ],
    ),

    Food(
      name: "Sweet Potato Fries",
      description:
          "Crispy and slightly sweet, served with a side of chipotle mayo.",
      imagePath: "lib/images/sides/side4.jpg",
      price: 3.99,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cinnamon sugar", price: 0.79),
        Addon(name: "Marshmallow dip", price: 0.99),
        Addon(name: "Extra chipotle mayo", price: 0.99),
      ],
    ),

    Food(
      name: "Coleslaw",
      description: "Freshly shredded cabbage and carrots in a creamy dressing.",
      imagePath: "lib/images/sides/side5.jpg",
      price: 2.49,
      foodCategory: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra dressing", price: 0.49),
        Addon(name: "Jalapenos", price: 0.79),
        Addon(name: "Chopped apples", price: 0.99),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm chocolate cake with a gooey molten center, served with vanilla ice cream.",
      imagePath: "lib/images/desserts/dessert1.jpg",
      price: 5.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra ice cream", price: 1.49),
        Addon(name: "Whipped cream", price: 0.99),
        Addon(name: "Chocolate drizzle", price: 0.79),
      ],
    ),

    Food(
      name: "Cheesecake",
      description:
          "Classic New York-style cheesecake with a graham cracker crust.",
      imagePath: "lib/images/desserts/dessert2.jpg",
      price: 4.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry topping", price: 1.29),
        Addon(name: "Extra crust", price: 0.79),
        Addon(name: "Caramel sauce", price: 0.99),
      ],
    ),

    Food(
      name: "Apple Pie",
      description:
          "Traditional apple pie with a flaky crust and cinnamon-spiced filling.",
      imagePath: "lib/images/desserts/dessert3.jpg",
      price: 4.49,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla ice cream", price: 1.49),
        Addon(name: "Extra cinnamon", price: 0.59),
        Addon(name: "Whipped cream", price: 0.99),
      ],
    ),

    Food(
      name: "Brownie Sundae",
      description:
          "Fudgy brownie topped with vanilla ice cream, chocolate syrup, and nuts.",
      imagePath: "lib/images/desserts/dessert4.jpg",
      price: 5.49,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra brownie", price: 1.99),
        Addon(name: "Chopped nuts", price: 0.79),
        Addon(name: "Caramel drizzle", price: 0.99),
      ],
    ),

    Food(
      name: "Tiramisu",
      description:
          "Classic Italian dessert with espresso-soaked ladyfingers and mascarpone cream.",
      imagePath: "lib/images/desserts/dessert5.jpg",
      price: 5.99,
      foodCategory: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cocoa powder", price: 0.49),
        Addon(name: "Espresso shot", price: 1.29),
        Addon(name: "Whipped cream", price: 0.99),
      ],
    ),

    // drinks
    Food(
      name: "Iced Coffee",
      description: "Chilled coffee with a splash of milk and ice.",
      imagePath: "lib/images/drinks/drink1.jpg",
      price: 2.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Vanilla syrup", price: 0.79),
        Addon(name: "Extra shot of espresso", price: 1.49),
        Addon(name: "Whipped cream", price: 0.99),
      ],
    ),

    Food(
      name: "Fresh Orange Juice",
      description: "Freshly squeezed orange juice with no added sugar.",
      imagePath: "lib/images/drinks/drink2.jpg",
      price: 3.49,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra pulp", price: 0.49),
        Addon(name: "Lemon zest", price: 0.59),
        Addon(name: "Honey", price: 0.79),
      ],
    ),

    Food(
      name: "Strawberry Smoothie",
      description: "A refreshing blend of strawberries, yogurt, and honey.",
      imagePath: "lib/images/drinks/drink3.jpg",
      price: 4.49,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein powder", price: 1.99),
        Addon(name: "Extra strawberries", price: 0.99),
        Addon(name: "Chia seeds", price: 0.79),
      ],
    ),

    Food(
      name: "Lemon Iced Tea",
      description: "Chilled black tea infused with lemon and a hint of honey.",
      imagePath: "lib/images/drinks/drink4.jpg",
      price: 2.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra lemon", price: 0.59),
        Addon(name: "Mint leaves", price: 0.79),
        Addon(name: "Honey", price: 0.69),
      ],
    ),

    Food(
      name: "Hot Chocolate",
      description: "Rich and creamy hot chocolate topped with whipped cream.",
      imagePath: "lib/images/drinks/drink5.jpg",
      price: 3.99,
      foodCategory: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Marshmallows", price: 0.79),
        Addon(name: "Caramel drizzle", price: 0.99),
        Addon(name: "Extra cocoa", price: 0.69),
      ],
    ),
  ];
  /*

  G E T T E R S
  
   */
  List<Food> get menu => _menu;
  /*

  O P E R A T I O N S
  
   */
  // add to cart

  // remove from cart

  // get total price of cart

  // get total number of items in cart

  // clear cart

  /*
  H E L P E R S
  
  // generate a receipt

  // format double value into money

  // format list of addons into a string summary
  
   */
}
