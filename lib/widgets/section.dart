import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.titleText,
    required this.children,
    this.titleAction,
    this.spacing,
    this.vertical = false, this.padding, this.mainAxisAlignment, this.crossAxisAlignment,
  });

  static const double defaultSpacing = 14;

  final String titleText;
  final List<Widget> children;
  final Widget? titleAction;
  final bool vertical;
  final double? spacing;
  final EdgeInsetsGeometry? padding;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleText,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ?titleAction,
          ],
        ),
        Container(
          width: double.infinity,
          padding: padding,
          child: SingleChildScrollView(
            scrollDirection: vertical ? Axis.vertical : Axis.horizontal,
            child: vertical
                ? Column(
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
                    spacing: spacing ?? defaultSpacing,
                    children: children,
                  )
                : Row(
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
                    spacing: spacing ?? defaultSpacing,
                    children: children,
                  ),
          ),
        ),
      ],
    );
  }
}
