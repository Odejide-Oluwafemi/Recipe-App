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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColors.brandPrimary,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 53,
            left: 100,
            child: SvgPicture.asset("assets/card/Rectangle 346.svg"),
          ),
          Positioned(
            top: 3,
            child: SvgPicture.asset("assets/card/Vector 1.svg"),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset("assets/card/Vector.svg"),
          ),
          Positioned(
            top: 41,
            left: 14,
            child: SvgPicture.asset("assets/card/Ellipse 80.svg"),
          ),
          Positioned(
            top: 5,
            left: 47,
            child: SvgPicture.asset("assets/card/Ellipse 78.svg"),
          ),
          Positioned(
            top: 140,
            left: 210,
            child: SvgPicture.asset("assets/card/Vector 3.svg"),
          ),
          Positioned(
            top: 10.15,
            left: 165.03,
            child: SvgPicture.asset("assets/card/Spag-1.svg"),
          ),
          Positioned(
            top: 10.15,
            left: 161.03,
            child: SvgPicture.asset("assets/card/Group.svg"),
          ),
          Positioned(
            top: 8.85,
            left: 164.03,
            child: SvgPicture.asset("assets/card/Spag-2.svg"),
          ),
          Positioned(
            top: 8.15,
            left: 168.03,
            child: SvgPicture.asset("assets/card/Spag-2.svg"),
          ),
          Positioned(
            top: -3,
            left: 179.45,
            child: SvgPicture.asset("assets/card/Chopstick.svg"),
          ),
          Positioned(
            top: -3,
            left: 193.85,
            child: SvgPicture.asset("assets/card/Chopstick.svg"),
          ),
          Positioned(
            top: 19.72,
            left: 231.37,
            child: SvgPicture.asset("assets/card/Group-1.svg"),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ListTile(

                title: Text(
                  "Asian white noodles with extra seafood",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textScaler: TextScaler.linear(0.9),
                  style: TextStyle(
                    fontSize: 18,
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
                        CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage("assets/card/profile.png"),
                        ),
                        Text(
                          "James Spader",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          textScaler: TextScaler.linear(0.9),
                        ),
                      ],
                    ),

                    Row(
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.white70,
                          size: 18,
                        ),
                        Text(
                          "20 Min",
                          style: TextStyle(
                            color: Colors.white70,
                            wordSpacing: 2,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          textScaler: TextScaler.linear(0.9),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
