library neumorphic_widget;

import 'package:flutter/material.dart';

class NeumorphicCard extends StatelessWidget {
  const NeumorphicCard({
    Key? key,
    required this.child,
    required this.shadowBlur,
    this.alignment,
    this.borderRadius = BorderRadius.zero,
    required this.backgroundColor,
    this.width,
    this.height,
    this.offset = 5,
  }) : super(key: key);

  final Widget child;
  final double shadowBlur;
  final Alignment? alignment;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final double? height;
  final double? width;
  final double offset;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      // neumorphic design shadow
      decoration: BoxDecoration(borderRadius: borderRadius, boxShadow: [
        // top bottom right
        BoxShadow(
          color: Colors.grey.shade600,
          offset: Offset(offset, offset),
          blurRadius: shadowBlur,
        ),
        // bottom top left
        BoxShadow(
          color: Colors.white,
          offset: Offset(offset * -1, offset * -1),
          blurRadius: shadowBlur,
        ),
      ]),
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: borderRadius,
          ),
          child: child),
    );
  }
}
