import 'package:flutter/material.dart';

class DetailCardLarge extends StatelessWidget {
  const DetailCardLarge({
    super.key,
    required this.title,
    required this.imagePath,
  });

  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 270,
      child: Card(
        color: Colors.white,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 220,
                    height: 138,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset(imagePath, fit: BoxFit.cover),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () => {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Toggled Favorite")))
                          },
                          icon: Icon(Icons.favorite_outline_rounded),
                          color: Colors.black,
                          iconSize: 22,
                          padding: EdgeInsets.all(1),
                          style: ButtonStyle(
                            elevation: WidgetStateProperty.all(20),
                            backgroundColor: WidgetStateProperty.all(
                              Colors.white,
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Text(
                  title,
                  textScaler: TextScaler.linear(0.9),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 2,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department_outlined,
                        size: 18,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        "120 Kcal",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 6,
                    height: 6,
                  ),

                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department_outlined,
                        size: 18,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        "120 Kcal",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
