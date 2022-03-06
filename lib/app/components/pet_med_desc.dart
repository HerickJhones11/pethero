
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PetMedicationDescription extends StatelessWidget {
  final String text;
  final String icon;
  const PetMedicationDescription({
    Key? key,
    this.icon = 'assets/icons/vacina.svg',
    this.text = '',
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: size.width*0.048,
          height: size.width*0.048
        ),
        SizedBox(
          width: size.width*0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: size.width*0.026
          ),
        ),
      ],
    );
  }
}
