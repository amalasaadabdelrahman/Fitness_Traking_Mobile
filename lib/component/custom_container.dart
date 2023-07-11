import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({Key? key, required this.fill, required this.color})
      : super(key: key);
  final double fill;
  final Color color;
  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          width: 5,
          height: 200,
          color: Colors.grey[300],
        ),
        Container(
          width: 5,
          height: widget.fill,
          color: widget.color,
        ),
      ],
    );
  }
}
