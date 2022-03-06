
import 'package:flutter/material.dart';

class DividerFilter extends StatelessWidget {
  const DividerFilter({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height*0.038,left: size.width*0.016, right: size.width*0.016),
      child: Divider(
        color: Colors.white
      ),
    );
  }
}



