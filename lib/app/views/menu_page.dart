import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethero/app/controllers/home_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String logoPetHero = 'assets/img/pet_icon_plain.svg';
final Widget logoSvg = SvgPicture.asset(
  logoPetHero,
);
class MenuPage extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double height = MediaQuery.of(context).size.height;


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
        
                ItemMenu( 
                  size: size,
                  showTop: true,
                  icon: Icon(Icons.account_circle,
                  color: Colors.white),
                  text: 'Perfil' ,
                  onPressed: () {
                    Navigator.pushNamed(context, '/account');
                  }
                ),
                ItemMenu(
                  size: size,
                  icon: Icon(Icons.grade, color: Colors.white),
                  text: 'Ser um cuidador',
                  onPressed: () {

                  }
                ),
                ItemMenu(
                  size: size,
                  icon: Icon(Icons.play_arrow, color: Colors.white),
                  text: 'Como funciona?',
                  onPressed: () {

                  }
                ),
                ItemMenu(
                  size: size,
                  icon: Icon(Icons.help_outline, color: Colors.white),
                  text: 'Ajuda',
                  onPressed: () {

                  }
                  ),
                
              ]))),
    );
  }
}

class ItemMenu extends StatelessWidget {
  final Size size;
  final Icon icon;
  final String text;
  final showTop;
  final VoidCallback onPressed;

  const ItemMenu({
    Key? key,
    required this.size,
    this.showTop = false, 
    required this.icon,
    required this.text, 
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextButton(
          child: Column(
            children: [
              showTop ? 
              Padding(
                padding: EdgeInsets.only(bottom: size.height*0.018),
                child: Container(
                  height: 1.0,
                  width: size.width,
                  color: Colors.white,
                ),
              ) : SizedBox(height: 10,) ,
              ListTile(
                title:
                Text(text, style: TextStyle(color: Colors.white)),
                leading: icon,
                trailing: Icon(Icons.chevron_right, color: Colors.white),
              ),
               Container(
                 height: 1.0,
                 width: size.width,
                 color: Colors.white,
               ),
            ],
          ),
          //função do 1º botão
          onPressed: onPressed,
        ),
      ],
    );
  }
}