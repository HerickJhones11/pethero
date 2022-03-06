
import 'package:flutter/material.dart';

class AplyFilterButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final bool hasBorder;
  const AplyFilterButton({
    Key? key,
    required this.size, 
    this.hasBorder = false,
    this.text = '',
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('method');
      },
      child: Container(
        width: size.width*0.45,
        height: size.height*0.061,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: hasBorder ? Border.all(
            color: Color(0xff6B6969)
          ) : null
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: textColor
          ),
        ),
      ),
    );
  }
}
