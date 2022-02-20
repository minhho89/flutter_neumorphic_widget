library neumorphic_widget;

import 'package:flutter/material.dart';

class NeumorphicTextInputField extends StatelessWidget {
  const NeumorphicTextInputField({
    Key? key,
    required this.textFormField,
    this.borderRadius = BorderRadius.zero,
  }) : super(key: key);

  final TextFormField textFormField;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: borderRadius, boxShadow: [
        BoxShadow(
          color: Colors.white10.withOpacity(0.3),
          offset: const Offset(-4, 1),
        ),
        BoxShadow(
          color: Colors.grey.shade600.withOpacity(0.2),
          offset: const Offset(1, 1),
          blurRadius: 1,
        ),
        BoxShadow(
          color: Colors.grey.shade600.withOpacity(0.2),
          offset: const Offset(-4, -4),
        ),
      ]),
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(3), boxShadow: [
          // white hard border: bottom-right
          const BoxShadow(
            color: Colors.white,
            offset: Offset(0.1, 0.1),
            blurRadius: 1,
          ),
          // grey hard border: top-left
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(-2, -2),
            blurRadius: 4,
          ),
        ]),
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(borderRadius: borderRadius, boxShadow: [
            // background color inner
            BoxShadow(
              color: Colors.white.withOpacity(0.8),
              blurRadius: 5,
            )
          ]),
          child: textFormField,
        ),
      ),
    );
  }
}

InputDecoration buildNeumorphicInputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: const TextStyle(color: Colors.grey),
    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
    border: InputBorder.none,
  );
}
