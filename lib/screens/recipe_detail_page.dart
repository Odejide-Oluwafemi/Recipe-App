import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_sliding_box/flutter_sliding_box.dart';
import 'package:recipe_app/constants/app_colors.dart';

class RecipeDetailPage extends StatefulWidget {
  const RecipeDetailPage({super.key});

  final String image = "assets/DetailCardImages/search_recipes_2.png";

  @override
  State<RecipeDetailPage> createState() => _RecipeDetailPageState();
}

class _RecipeDetailPageState extends State<RecipeDetailPage> {
  BoxController boxController = BoxController();
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingBox(
        controller: boxController,
        minHeight: MediaQuery.of(context).size.height * 0.3,
        maxHeight: MediaQuery.of(context).size.height * 0.7,
        borderRadius: BorderRadius.circular(40),
        draggable: true,
        draggableIconColor: AppColors.brandGray.withValues(alpha: 0.5),
        draggableIconBackColor: Colors.white,
        draggableIcon: Icons.horizontal_rule_rounded,

        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FittedBox(
                      child: Text(
                        "Egg & Avocado Pancake",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 4,
                      children: [
                        Icon(Icons.access_time_rounded, color: AppColors.brandGray, size: 22,),

                        Text("15 Min", style: TextStyle(
                          color: AppColors.brandGray,
                          fontSize: 18,
                        ),)
                      ],
                    ),
                  ],
                ),


              ],
          ),
          ),),
        collapsed: true,
        backdrop: Backdrop(
          color: Colors.white,
          body: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft.add(Alignment(0.1, -0.1)),
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(widget.image),
                                fit: BoxFit.cover,
                              ),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Text(
                                  "Egg & Avocado Pancake RecipeEgg & Avocado Pancake Recipe",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SafeArea(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.close_rounded),
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Colors.white,
                                        ),
                                        foregroundColor: WidgetStatePropertyAll(
                                          Colors.black,
                                        ),
                                        padding:
                                            WidgetStatePropertyAll<
                                              EdgeInsetsGeometry
                                            >(EdgeInsets.all(8)),
                                        shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.favorite_outline_rounded,
                                      ),

                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Colors.white,
                                        ),
                                        foregroundColor: WidgetStatePropertyAll(
                                          Colors.black,
                                        ),
                                        padding:
                                            WidgetStatePropertyAll<
                                              EdgeInsetsGeometry
                                            >(EdgeInsets.all(8)),
                                        shape: WidgetStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
