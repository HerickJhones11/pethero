import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    this.size = 600,
    required this.text,
    required this.description,
    required this.color, 
    required this.colorCircle, 
    this.press,
  }) : super(key: key);
  final double size;
  final String text,  description;
  final Color colorCircle;
  final Color color;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size*0.01, vertical: size*0.019),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          padding: EdgeInsets.only(left: size*0.04,top: 0.030*size,bottom: 0.030*size, ),
          backgroundColor: color,
        ),
        onPressed: press,
        child: Row(
          children: [
            Container(
              width: size*0.086,
              height: size*0.086,
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.white),
                color: colorCircle,
                shape: BoxShape.circle
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text,style: TextStyle(fontWeight: FontWeight.w900, fontSize: 0.032*size ),),
                Text(description,style: TextStyle( fontSize: 0.032*size ),),
              ],
            ),
          
          ],
        ),
      ),
    );
  }
}