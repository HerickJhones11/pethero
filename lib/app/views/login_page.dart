import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pethero/app/components/show_alert.dart';
import 'package:pethero/app/controllers/login_controller.dart';

final String logoPetHero = 'assets/img/pet_icon_plain.svg';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final controller = Get.put(LoginController());
  TextEditingController email = TextEditingController(text:true == true ? '' : '');
  TextEditingController password = TextEditingController();


  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    GoogleSignInAccount? user = controller.googleSignIn.currentUser;

    return Scaffold(
      body: SingleChildScrollView(
            child: Container(
                height: height,
                decoration: new BoxDecoration(color: Colors.grey[800]),
                child: Stack(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.all(108.0),
                    //   child: Text(user == null ? 'out' : 'in'),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(left: width*0.33 ,top: height*0.095),
                      child: SvgPicture.asset(
                              logoPetHero,
                              semanticsLabel: 'Logo Pet hero',
                              color: Colors.white,
                              height: width*0.33,
                              width: height*0.16,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        
                        //Logo Pet hero
                        
                        Padding(
                          padding: EdgeInsets.only(bottom: height*0.303 ),
                          child: Container(
                            height: height*0.037,
                            width: width*0.26,
                            alignment: Alignment.center,
                          ),
                        ),

                        Text(
                          "Que bom que voltou!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: width*0.06
                          ) ,),
                        Padding(
                          padding: EdgeInsets.only(right: width*0.168, left: width*0.168, top: height*0.076),
                          child: TextFormField(
                            controller: email,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              fillColor: Colors.white, filled: true,
                              focusedBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: "   Email ou Cpf",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: width*0.168, left: width*0.168, top: height*0.029,bottom: height*0.0166),
                          child: TextFormField(
            
                            controller: password,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: Colors.white, filled: true,
                              focusedBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: "  Senha",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),

                      Padding(
                        padding: EdgeInsets.only(left: width*0.17),
                        child: Text('Esqueci minha senha',style: 
                          TextStyle(
                            color: Color(0xffC0C0C0),
                            fontSize: width*0.04,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),

                        
                        Padding(
                          padding: EdgeInsets.only(left: width*0.168, right: width*0.168, top: height*0.060),
                          child: ElevatedButton(
                            child: Padding(
                              padding: EdgeInsets.symmetric( vertical: 1),
                              child: Text("Entrar",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF4F4506C),
                            ),
                            onPressed: () async {
                              var result = await controller.login(email.text ,password.text);
                              if(result.toString() == '(true)'){
                                Navigator.pushNamed(context, '/home');
                              }else{
                                showAlert(context, 'Usuário ou senhas incorretos',redirectUser: false);
                              }

                              
                            },

                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width*0.16, top: height*0.032),
                          child: Row(
                            children: [
                              Container(
                                height: 2.0,
                                width:width*0.26,
                                color:Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: width*0.050),
                                child: Text('ou',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width*0.042
                                  ),
                                ),
                              ),
                              Container(
                                height: 2.0,
                                width:width*0.26,
                                color: Colors.white,
                              ),

                            ],
                            
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width*0.168, right: width*0.168, top: height*0.028),
                          child: ElevatedButton(
                            child: Padding(
                              padding: EdgeInsets.symmetric( vertical: 1),
                              child: Text("Entrar com Google",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF4F4506C),
                            ),
                            onPressed: () async {
                              var result = await controller.loginWithGoogle();
                              setState(() {});
                              print(result);
                              if(result != null){
                                Navigator.pushNamed(context, '/home');
                              }
                            },
                          ),
                        ),
                        

                      ]
                    )
                  ],
                )
              )
          )
      
    );
  }
}