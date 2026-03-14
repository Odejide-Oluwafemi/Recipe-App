import 'package:flutter/material.dart';
import 'package:recipe_app/constants/app_colors.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, required this.text, this.selected});

  final String text;
  final bool? selected;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          selected != null && selected!
              ? AppColors.brandPrimary
              : AppColors.brandGray.withValues(alpha: 0.4),
        ),
        foregroundColor: WidgetStateProperty.all(
          selected != null && selected!
              ? Colors.white
              : Colors.black87
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 14),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
        ),
      ),
    );
  }
}
