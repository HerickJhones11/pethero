import 'package:flutter/material.dart';

class ServiceDescription extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final double value;
  const ServiceDescription({
    this.size = 0,
    this.color = Colors.white,
    this.value = 0,
    this.text = 'Hospedagem',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size*0.035),
      child: Row(
        children: [
          Container(
            width: size*0.053,
            height: size*0.053,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size*0.008),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: size*0.032
              ),
            ),
          ),
          Spacer(),
          Text(
            'R\$',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: size*0.021  
            ),
          ),
          Text(
            value.toString(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: size*0.032
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: size*0.037),
            child: Text(
              '/noite',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: size*0.021  
              ),
            ),
          ),
  
          
        ],
      ),
    );
  }
}