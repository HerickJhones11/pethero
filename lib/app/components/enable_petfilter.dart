import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EnablePetFilter extends StatefulWidget {
  
  bool switchVal;
  final Size size;
  final String icon;
  final String title;
  final String text;
  EnablePetFilter({
    this.switchVal = false,
    this.text = '',
    this.title = '',
    required this.size,
    this.icon = '',
    Key? key
  }) : super(key: key);

  @override
  State<EnablePetFilter> createState() => _EnablePetFilterState();
}

class _EnablePetFilterState extends State<EnablePetFilter> {
  @override

  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          widget.icon,
          // 'assets/icons/remedio.svg',
          width: widget.size.width*0.064,
          height: widget.size.width*0.064,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: widget.size.width*0.026
              ),   
            ),
            Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: widget.size.width*0.021
              ),
            ),
            
          ],
        ),
        Spacer(),
        Switch(
          value: widget.switchVal,
          onChanged: (val) {
            setState(() {
              widget.switchVal = val;
            });
          },
          activeTrackColor: Colors.red[100],
          activeColor: Colors.red
        )
      ],
    );
  }
}