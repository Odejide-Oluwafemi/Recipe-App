import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app/constants/app_colors.dart';

class SingleCard extends StatelessWidget {
  const SingleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 264,
      height: 172,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: AppColors.brandPrimary,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 53,
            left: 100,
            child: SvgPicture.asset(
              "assets/card/Rectangle 346.svg",
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              title: Text(
                "Asian white noodles with extra seafood",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      CircleAvatar(radius: 12,),
                      Text("James Spader", style: TextStyle(color: Colors.white70, fontSize: 16, fontWeight: FontWeight.w500),),
                    ],
                  ),

                  Row(
                    spacing: 4,
                    children: [
                      Icon(Icons.watch_later_outlined, color: Colors.white70, size: 18,),
                      Text("20 Min", style: TextStyle(color: Colors.white70, wordSpacing: 2, fontSize: 16, fontWeight: FontWeight.w500),),
                    ]
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
