import 'package:flutter/material.dart';
import 'package:recipe_app/constants/app_colors.dart';
import 'package:recipe_app/widgets/single_card.dart';

import '../widgets/category_button.dart';
import '../widgets/detail_card_large.dart';
import '../widgets/section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        titleSpacing: 20,
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              spacing: 7,
              children: [
                Icon(
                  Icons.light_mode,
                  color: AppColors.brandTertiary,
                  size: 16,
                ),
                Text(
                  "Good Morning",
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ],
            ),
            Text(
              "Alena Sabya",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actionsPadding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        actions: [
          Icon(Icons.shopping_cart_outlined, color: Colors.black87, size: 28),
        ],
      ),

      body: Container(
        padding: EdgeInsetsGeometry.all(20).add(EdgeInsets.only(top: 4)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.topLeft,
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              spacing: 20,
              children: [
                Section(
                  titleText: "Featured",
                  children: [
                    ...List.generate(5, (index) => SingleCard()),
                  ],
                ),
                Section(
                  titleText: "Category",
                  titleAction: TextButton(onPressed: () => {}, child: Text("See All", style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppColors.brandPrimary, fontSize: 18
                  ),)),
                  children: [
                    ...List.generate(5, (index)
                    {
                      List<String> categories = ["Breakfast", "Lunch", "Dinner", "Snacks", "Dessert"];
                      return CategoryButton(text: categories[index],);
                    }),
                  ],
                ),
                Section(
                  titleText: "Popular Recipes",
                  children: [
                    ...List.generate(2, (index) {
                      List<String> titles = [
                        "Healthy Taco Salad with Fresh Vegetable",
                        "Japanese-style Pancake Recipe",
                      ];

                      List<String> imagePaths = [
                        "assets/DetailCardImages/Image 1.png",
                        "assets/DetailCardImages/Image 2.png"
                      ];
                      return DetailCardLarge(title: titles[index], imagePath: imagePaths[index],);
                    }),
            ]
                ),
              ],
            ),
          ),
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
