import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethero/app/controllers/home_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String logoPetHero = 'assets/img/pet_icon_plain.svg';
final Widget logoSvg = SvgPicture.asset(
  logoPetHero,
);

class Menupage extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: new BoxDecoration(color: Colors.grey[800]),
              child: new Column(children: <Widget>[
                //Logo Pet hero
                Padding(
                  padding: EdgeInsets.only(
                      top: 0.074 * height, bottom: 0.01 * height),
                  child: SvgPicture.asset(
                    logoPetHero,
                    semanticsLabel: 'Logo Pet hero',
                    color: Colors.white,
                    height: 150,
                    width: 150,
                  ),
                ),
                /*child: Container(
                    width: height*0.17,
                    height: height*0.17,
                    decoration:BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff999999)
                    ),
                    child: Icon(Icons.person, size: height*0.17 , color: Colors.white ,),
                  ),*/

                /*Padding(
                  padding: EdgeInsets.only(bottom: height*0.16),
                  child: Container(
                    height: height*0.037,
                    width: width*0.26,
                    decoration: BoxDecoration(
                      color: Color(0xffF4506C),
                      borderRadius: BorderRadius.all(Radius.circular(width*0.026))
                    ),
                    alignment: Alignment.center,
                    child: Text('Minha Conta', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: height*0.02
                    ),),
                  ),
                ),*/

                //Linha horizontal
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
                //1ª opção do menu
                TextButton(
                  child: ListTile(
                    title:
                        Text('Perfil', style: TextStyle(color: Colors.white)),
                    leading: Icon(Icons.account_circle, color: Colors.white),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                  ),
                  //função do 1º botão
                  onPressed: () {},
                ),
                //Linha horizontal
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
                //2ª opção do menu
                TextButton(
                  child: ListTile(
                    title: Text('Ser um Cuidador',
                        style: TextStyle(color: Colors.white)),
                    leading: Icon(Icons.grade, color: Colors.white),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                  ),
                  //função do 2º botão
                  onPressed: () {},
                ),
                //Linha horizontal
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
                //3ª opção do menu
                TextButton(
                  child: ListTile(
                    title: Text('Como funciona?',
                        style: TextStyle(color: Colors.white)),
                    leading: Icon(Icons.play_arrow, color: Colors.white),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                  ),
                  //função do 3º botão
                  onPressed: () {},
                ),
                //Linha horizontal
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
                //4ª opção do menu
                TextButton(
                  child: ListTile(
                    title: Text('Ajuda', style: TextStyle(color: Colors.white)),
                    leading: Icon(Icons.help_outline, color: Colors.white),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                  ),
                  //função do 4º botão
                  onPressed: () {},
                ),
                //Linha horizontal
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
              ]))),
    );
  }
}
