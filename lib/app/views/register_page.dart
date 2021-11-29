import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethero/app/components/coustom_bottom_nav_bar.dart';
import 'package:pethero/app/controllers/home_controller.dart';
import 'package:pethero/app/views/landing_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../enums.dart';

final String logoPetHero = 'assets/img/pet_icon_plain.svg';
final Widget logoSvg = SvgPicture.asset(
  logoPetHero,
);


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
     bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
      body: Container(
          child: SingleChildScrollView(
            child: Container(
                decoration: new BoxDecoration(color: Colors.grey[800]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //Logo Pet hero
                      Padding(
                        padding: EdgeInsets.only(top: 50, bottom: 0.01*height),
                        child: SvgPicture.asset(
                          logoPetHero,
                          semanticsLabel: 'Logo Pet hero',
                          color: Colors.white,
                          height: 150,
                          width: 150,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          height: height*0.037,
                          width: width*0.26,
                          alignment: Alignment.center,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 0.5),
                          child: Text(
                            "Seja bem-vindo(a)!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                            ) ,)
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50, left: 50, top: 30),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white, filled: true,
                            focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "   Nome completo",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50, left: 50, top: 11),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            fillColor: Colors.white, filled: true,
                            focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "  E-mail",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 50, left: 50, top: 11),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            fillColor: Colors.white, filled: true,
                            focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "  CPF",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 50, left: 50, top: 11),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            fillColor: Colors.white, filled: true,
                            focusedBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "  Telefone",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                        child:ElevatedButton(
                          child: Padding(
                            padding: EdgeInsets.symmetric( vertical: 10),
                            child: Text("Próximo",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF4F4506C),
                          ),
                          onPressed: (){
                            Navigator.pushNamed(context, '/confirm_register');
                          },
                        ),
                      )
                    ]))
          )),
    );
  }
}