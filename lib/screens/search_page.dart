import 'package:flutter/material.dart';
import 'package:recipe_app/constants/app_colors.dart';

import '../widgets/category_button.dart';
import '../widgets/detail_card_small.dart';
import '../widgets/section.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key, required this.onBack});

  final void Function() onBack;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: widget.onBack,
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(Colors.black),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Search",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 50,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 1),
            TextField(
              controller: searchController,
              cursorColor: AppColors.brandPrimary,
              cursorRadius: Radius.circular(10),
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded),
                iconColor: Colors.black87,
                hintText: "Search",
                hintStyle: TextStyle(color: AppColors.brandGray),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: AppColors.brandGray.withValues(alpha: 0.8),
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: AppColors.brandPrimary,
                    style: BorderStyle.solid,
                    width: 2,
                  ),
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 12,
                children: [
                  ...List.generate(5, (index) {
                    int selectedIndex = 0;

                    List<String> categories = [
                      "Breakfast",
                      "Lunch",
                      "Dinner",
                      "Snacks",
                      "Dessert",
                    ];
                    return CategoryButton(
                      text: categories[index],
                      selected: selectedIndex == index,
                    );
                  }),
                ],
              ),
            ),

            Section(
              titleText: "Popular Recipes",
              titleAction: TextButton(
                onPressed: () => {},
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.brandPrimary,
                    fontSize: 18,
                  ),
                ),
              ),
              children: [
                ...List.generate(3, (index) {
                  List<Map<String, String>> cardDetails = [
                    {
                      "Bowl of Rice Recipe":
                          "assets/DetailCardImages/search_recipes_2.png",
                    },
                    {
                      "Egg & Avocado Pancake Recipe":
                          "assets/DetailCardImages/search_recipes_1.png",
                    },
                    {
                      "Chicken Sauce Recipe":
                          "assets/DetailCardImages/search_recipes_2.png",
                    },
                  ];

                  return DetailCardSmall(
                    title: cardDetails[index].keys.first,
                    imagePath: cardDetails[index].values.first,
                  );
                }),
              ],
            ),

            Section(
              titleText: "Editor's Choice",
              titleAction: TextButton(
                onPressed: () => {},
                child: Text(
                  "See All",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.brandPrimary,
                    fontSize: 18,
                  ),
                ),
              ),
              vertical: true,
              children: [

              ],
            ),
          ],
        ),
      ),
    );
  }
}
