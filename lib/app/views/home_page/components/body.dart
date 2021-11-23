import 'package:flutter/material.dart';
import 'package:pethero/app/views/landing_page.dart';

import 'profile_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: size.height*0.18,),
          Text("De que seu pet precisa", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: size.width*0.064),),
          SizedBox(height: size.height*0.073,),
          ProfileMenu(
            text: "Hospedagem",
            color: Color(0xFFA614FF),
            colorCircle: Color(0xff9900F6),
            description: "Passar a noite na casa do Herói",
            size: size.width*0.96,
            press: () {
              Navigator.pushNamed(context, '/Hospedagem');
            },
          ),
          ProfileMenu(
            text: "Creche",
            color: Color(0xFFFF9147),
            colorCircle: Color(0xffFF954F),
            description: "Passar o dia na casa do Herói",
            size: size.width*0.96,
            press: () {},
          ),
          ProfileMenu(
            text: "Pet sitter",
            color: Color(0xFF518BFF),
            colorCircle: Color(0xff309CFF),
            size: size.width*0.96,
            description: "O Herói vai até sua casa por 60 Min",
            press: () {},
          ),
          ProfileMenu(
            text: "Produtos pet",
            color: Color(0xFFFF6363),
            colorCircle: Color(0xffFF6363),
            size: size.width*0.96,
            description: "Compre e receba em sua casa",
            press: () {},
          ),
        ],
      ),
    );
  }
}