import 'package:flutter/material.dart';

class RecipeListTile extends StatelessWidget {
  const RecipeListTile({
    super.key,
    required this.image,
    required this.title,
    required this.avatar,
    required this.chefName,
  });

  final String image;
  final String title;
  final String avatar;
  final String chefName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 4,
            offset: Offset.fromDirection(90, 2),
          ),
        ],
      ),
      padding: const EdgeInsetsGeometry.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 10,
        children: [
          Container(
            width: 130,
            height: 112,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(
            width: 170,
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                Row(
                  spacing: 8,
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: AssetImage(avatar),
                    ),
                    Text(
                      chefName,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            width: 35,
            height: 35,
            child: IconButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.black),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                iconSize: WidgetStateProperty.all(18),
                elevation: WidgetStateProperty.all(8),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              icon: Icon(
                Icons.arrow_forward_rounded, weight: 5,
              ),
            ),
          ),

          Expanded(child: Container())
        ],
      ),
    );
  }
}
