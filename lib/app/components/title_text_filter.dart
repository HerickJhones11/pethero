
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  const TitleText({
    this.text = '',
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: size.width*0.03),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: size.width*0.037
            ),  
          ),
        ],
      ),
    );
  }
}