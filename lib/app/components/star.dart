import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final Color color;
  const Star({
    Key? key,
    required this.size,
    this.color = Colors.yellow,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,color: color,size: size.width*0.032 ,)
      ],
    );
  }
}
