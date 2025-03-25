import 'package:flutter/material.dart';
import 'package:food/components/custom_button.dart';
import 'package:food/models/food.dart';

class FoodPage extends StatefulWidget {
  // Member Varibale
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  // Consturtoc
  FoodPage({super.key, required this.food}) {
    // initialize selected addons to be false
    // What the fuck is this? - Question
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Scaffold
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // food image
                Image.asset(
                  widget.food.imagePath,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                // food name
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "\$${widget.food.price.toString()}",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      SizedBox(height: 10),
                      // food description
                      Text(
                        widget.food.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 20),
                      // addons - description
                      Divider(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      Text(
                        "Add-ons",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // addons - List
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          // Question : shrinkWrap?
                          shrinkWrap: true,
                          // Question : physics?
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            // get individual addon
                            Addon addon = widget.food.availableAddons[index];
                            // Question- What is the checkbox list
                            return CheckboxListTile(
                              title: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                child: Text(addon.name),
                              ),
                              subtitle: Text("\$${addon.price}"),
                              value: widget.selectedAddons[addon],
                              // Question - What the fuck is this?
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // button ->add to cart
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: CustomButton(text: "Add to Cart", onPresse: null),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        // Back Button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.only(left: 10),

              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back),
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
