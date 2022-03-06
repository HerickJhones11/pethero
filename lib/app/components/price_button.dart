import 'package:flutter/material.dart';

class PriceButton extends StatelessWidget {
  final String text;
  final double width;
  final double rounded;
  const PriceButton({
    this.text = '',
    this.width = 0,
    this.rounded = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
       width: size.width*0.152,
       height: size.height*0.061,
       decoration: BoxDecoration(
         border: Border.all(color: Color(0xff6B6969)),
         borderRadius: BorderRadius.circular(size.width*0.01)
       ),
       alignment: Alignment.center,
       child: Text(
         text,
         style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.w400,
           fontSize: size.width*0.026
         ),
       ),
     );
  }
}
