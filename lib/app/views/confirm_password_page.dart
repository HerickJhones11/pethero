import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethero/app/components/show_alert.dart';
import 'package:pethero/app/controllers/home_controller.dart';
import 'package:pethero/app/controllers/user_controller.dart';
import 'package:pethero/app/models/user.dart';
import 'package:pethero/app/views/landing_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

final String logoPetHero = 'assets/img/pet_icon_plain.svg';
final Widget logoSvg = SvgPicture.asset(
  logoPetHero,
);


class ConfirmPasswordPage extends StatelessWidget {
  ConfirmPasswordPage({Key? key}) : super(key: key);

  

  var controller = UserController(

  );


  Widget build(BuildContext context) {

    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    var user = User(
      email: arguments['user'].email,
      cpf: arguments['user'].cpf,
      tel: arguments['user'].tel,
      name: arguments['user'].name
    );

    controller.user = user;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          child: SingleChildScrollView(
              child: Container(
                  height: height,
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
                              "Crie uma senha para logar",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25
                              ) ,)

                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 50, left: 50, top: 30),
                          child: TextFormField(
                            controller: controller.password,
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              fillColor: Colors.white, filled: true,
                              focusedBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: "   Nova senha",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 50, left: 50, top: 11),
                          child: TextFormField(
                            controller: controller.confirmPassword,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.white, filled: true,
                              focusedBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: "  Confirmar senha",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 100),
                          child:ElevatedButton(
                            child: Padding(
                              padding: EdgeInsets.symmetric( vertical: 10),
                              child: Text("Finalizar cadastro",
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
                              if( controller.password.text == controller.confirmPassword.text){
                                controller.create(context);
                                Navigator.pushNamed(context, '/confirm_register',arguments: {'controller' : controller});
                              }else{
                                showAlert(context, 'Senha incorreta', redirectUser: false);
                              }
                            },
                          ),
                        )
                      ]))
          )),
    );
  }
}