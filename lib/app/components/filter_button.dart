import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final double width;
  final double rounded;
  final String icon;
  final bool showIcon;

  const FilterButton({
    this.text = '',
    this.width = 0,
    this.rounded = 0,
    this.icon = '',
    this.showIcon = false,
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width == 0 ? size.width*0.248 : width ,size.height*0.034),
        primary: Color(0xff6B6969),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(rounded)
        )
      ),
      onPressed: () {},
      child: Row(
        children: [
          showIcon == true ? SvgPicture.asset(
              icon,
              semanticsLabel: 'Logo Pet hero',
              color: Colors.white,
              height: size.width*0.058,
              width: size.width*0.058,
          ) : SizedBox(),
          Text(
            text,
            style: TextStyle(
              fontSize: size.width*0.026
            ),
          ),
        ],
      )
    );
  }
}
