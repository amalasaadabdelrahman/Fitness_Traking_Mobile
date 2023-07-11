import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  const CustomText({Key? key, required this.day}) : super(key: key);
  final String day;
  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.day,
      style: TextStyle(color: Colors.grey),
    );
  }
}
