import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.bold,
      this.color,
      this.size});
  final String text;
  final bool bold;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          fontWeight: (bold) ? FontWeight.bold : FontWeight.normal,
          color: color ?? Colors.black),
    );
  }
}
