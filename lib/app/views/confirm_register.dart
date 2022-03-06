import 'package:flutter/material.dart';
import 'package:pethero/app/components/coustom_bottom_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pethero/app/components/show_alert.dart';
import 'package:pethero/app/controllers/confirm_register_controller.dart';
import 'package:pethero/app/services/email.dart';

import '../enums.dart';

final String logoPetHero = 'assets/img/pet_icon_plain.svg';
final Widget logoSvg = SvgPicture.asset(
  logoPetHero,
);


TextEditingController userCode = TextEditingController(text: '');

class ConfirmRegister extends StatefulWidget {
  ConfirmRegister({Key? key}) : super(key: key);

  @override
  State<ConfirmRegister> createState() => _ConfirmRegisterState();
}

class _ConfirmRegisterState extends State<ConfirmRegister> {
  var controller;

  var service = Email();

  sendEmail(context) async {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    controller = arguments['controller'];
    var email = controller.user.email;
    var name = controller.user.name;
    service.sendMessage(email, name );
  }

  initState(){
    super.initState();
    WidgetsBinding.instance!
      .addPostFrameCallback((_) { 
        print('teste');
        sendEmail(context);
      
      });
  }

  Widget build(BuildContext context) {
    var confirmRegisterController = ConfirmRegisterController();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          width: width,
          height: height,
          color: Colors.grey[800],
          child: SingleChildScrollView(
            child: Container(
                decoration: new BoxDecoration(color: Colors.grey[800]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //Logo Pet hero
                      Padding(
                        padding: EdgeInsets.only(top: 50, ),
                        child: SvgPicture.asset(
                          logoPetHero,
                          semanticsLabel: 'Logo Pet hero',
                          color: Colors.white,
                          height: 150,
                          width: 150,
                        ),
                      ),
                
                      Padding(
                          padding: EdgeInsets.only(top: 47.02),
                          child: Text(
                            "Enviamos um e-mail com um \n código para confirmação.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'roboto',
                                color: Colors.white,
                                fontSize: 20
                            ) ,)
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: height*0.067,bottom: height*0.074),
                          child: Text(
                            "Digite o código:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'roboto',
                                color: Colors.white,
                                fontSize: 20
                            ) ,)
                      ),
                      Center(
                          child: Container(
                            width: width*0.34,
                            height: height*0.059,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: TextField(
                                controller: userCode,
                                style: TextStyle(
                                  fontSize: 28,
                                  height: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      SizedBox(height: height*0.103,),
                      Padding(
                        padding: EdgeInsets.only(right:  width*0.33, left: width*0.33),
                        child:ElevatedButton(
                          child: Padding(
                            padding: EdgeInsets.symmetric( vertical: height*0.029),
                            child: Text("Confirmar",
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
                            confirmRegisterController.validUser();
                            return;

                            confirmRegisterController.verifyCode(userCode.text).then((result) {
                              var message = 'Erro ao confirmar usuário';
                              var redirectUser = false;
                              if(result == true){
                                message = 'Usuário criado com sucesso';
                                confirmRegisterController.validUser();
                                redirectUser = true;
                              }
                              showAlert(context,message, redirectUser: redirectUser);
                            });
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // sendEmail(controller.user.email, controller.user.name);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(top: height*0.044),
                            child: Text(
                              "Reenviar código",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'roboto',
                                  color: Colors.white,
                                  fontSize: 18
                              ) ,)
                        ),
                      ),
                    ]))
          )),
    );
  }

 
}