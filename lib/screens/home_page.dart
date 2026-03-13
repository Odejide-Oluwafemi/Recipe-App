import 'package:flutter/material.dart';
import 'package:recipe_app/constants/app_colors.dart';
import 'package:recipe_app/widgets/single_card.dart';

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
              "Alena Sabyam",
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
              children: [
                Section(
                  titleText: "Featured",
                  children: [
                    ...List.generate(5, (index) => SingleCard(

                    )),
                  ],
                ),
                // SingleChildScrollView(
                //   child: Row(
                //     children: [
                //       ...List.generate(
                //         5,
                //         (index) => SingleTile(titleText: "Featured"),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
