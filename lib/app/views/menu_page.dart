import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethero/app/controllers/home_controller.dart';
import 'package:pethero/app/views/landing_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String logoPetHero = 'assets/image/pet_icon_plain.svg';
final Widget logoSvg = SvgPicture.asset(
  logoPetHero,
);

class Menupage extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Page"),
      ),
      body: SafeArea(
          child: Container(
              decoration: new BoxDecoration(color: Colors.grey[800]),
              child: new Column(children: <Widget>[
                //Logo Pet hero
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 75, 0, 50),
                  child: SvgPicture.asset(
                    logoPetHero,
                    semanticsLabel: 'Logo Pet hero',
                    color: Colors.white,
                    height: 150,
                    width: 150,
                  ),
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
