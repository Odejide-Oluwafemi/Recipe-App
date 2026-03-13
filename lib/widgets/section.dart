import 'package:flutter/material.dart';
import 'package:recipe_app/widgets/single_card.dart';

class Section extends StatelessWidget {
  const Section({super.key, required this.titleText, required this.children, this.titleAction, this.spacing, this.vertical = false});

  static const double defaultSpacing = 16;

  final String titleText;
  final List<Widget> children;
  final Widget? titleAction;
  final bool vertical;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(titleText, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ?titleAction,
          ],
        ),
        SingleChildScrollView(
          scrollDirection: vertical ? Axis.vertical : Axis.horizontal,
          child: vertical ? Column(
            spacing: spacing ?? defaultSpacing,
            children: children,
          ) : Row(
            spacing: spacing ?? defaultSpacing,
            children: children,
          ),
        ),
      ],
    );
  }
}
