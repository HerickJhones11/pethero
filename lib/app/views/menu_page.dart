import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethero/app/controllers/home_controller.dart';


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
                  padding: EdgeInsets.only(top: 0.074*height, bottom: 0.01*height),
                  child: Container(
                    width: height*0.17,
                    height: height*0.17,
                    decoration:BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage('assets/img/home.png'),
                        fit: BoxFit.cover,
                        
                      )
                    ),
                  ),
                ),
        
                ItemMenu( size: size, showTop: true, icon: Icon(Icons.account_circle, color: Colors.white), text: 'Perfil'),
                ItemMenu( size: size, icon: Icon(Icons.grade, color: Colors.white), text: 'Ser um cuidador'),
                ItemMenu( size: size, icon: Icon(Icons.play_arrow, color: Colors.white), text: 'Como funciona?'),
                ItemMenu( size: size, icon: Icon(Icons.help_outline, color: Colors.white), text: 'Ajuda'),
                
              ]))),
    );
  }
}

class ItemMenu extends StatelessWidget {
  final Size size;
  final Icon icon;
  final String text;
  final showTop;

  const ItemMenu({
    Key? key,
    required this.size,
    this.showTop = false, 
    required this.icon,
    required this.text, 
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
          onPressed: () {},
        ),
      ],
    );
  }
}