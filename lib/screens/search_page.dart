import 'package:flutter/material.dart';
import 'package:recipe_app/constants/app_colors.dart';
import 'package:recipe_app/widgets/recipe_list_tile.dart';

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
                      "title": "Bowl of Rice Recipe",
                      "image": "assets/DetailCardImages/search_recipes_2.png",
                    },
                    {
                      "title": "Egg & Avocado Pancake Recipe",
                      "image": "assets/DetailCardImages/search_recipes_1.png",
                    },
                    {
                      "title": "Chicken Sauce Recipe",
                      "image": "assets/DetailCardImages/search_recipes_2.png",
                    },
                  ];

                  return DetailCardSmall(
                    title: cardDetails[index]["title"]!,
                    imagePath: cardDetails[index]["image"]!,
                  );
                }),
              ],
            ),

            Section(
              titleText: "Editor's Choice",
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
              vertical: true,
              children: [
                ...List.generate(2, (index) {
                  List<Map<String, String>> tileDetails = [
                    {
                      "image": "assets/DetailCardImages/search_editors_choice_1.png",
                      "title": "Easy Homemade Beef Burger",
                      "avatar": "assets/card/profile.png",
                      "chef": "James Spander",
                    },{
                      "image": "assets/DetailCardImages/search_editors_choice_2.png",
                      "title": "Blueberry with egg for Breakfast",
                      "avatar": "assets/card/profile_girl.png",
                      "chef": "Alice Fala",
                    },
                  ];

                  return RecipeListTile(
                    image: tileDetails[index]["image"]!,
                    title: tileDetails[index]["title"]!,
                    avatar: tileDetails[index]["avatar"]!,
                    chefName: tileDetails[index]["chef"]!,
                  );
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
