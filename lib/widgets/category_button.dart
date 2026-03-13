import 'package:flutter/material.dart';
import 'package:recipe_app/constants/app_colors.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return FilledButton(style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(AppColors.brandPrimary),
    ),  onPressed: () {}, child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 14),
      child: Text(text, style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 17
      ),),
    ));
  }
}
