import 'package:flutter/material.dart';

class DetailCardSmall extends StatelessWidget {
  const DetailCardSmall({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      height: 146,
      child: Card(
        color: Colors.white,
        elevation: 3,
        shadowColor: Colors.grey.shade400,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 3,
            children: [
              SizedBox(
                width: 90,
                height: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              ),
              // Stack(
              //   children: [
              //     SizedBox(
              //       width: 220,
              //       height: 138,
              //       child: ClipRRect(
              //         borderRadius: BorderRadius.circular(18),
              //         child: Image.asset(imagePath, fit: BoxFit.cover),
              //       ),
              //     ),
              //   ],
              // ),

              Text(
                title,
                textScaler: TextScaler.linear(0.9),
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
