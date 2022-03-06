import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pethero/app/views/landing_page.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);
  
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LandingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenFunction(
      duration: 3500,
      // splash: Image.asset('img/pethero_logo.jpg',),
      splash: Image.asset('assets/img/pethero_logo.jpg', height: 300.0, width: 300.0),
      // splashIconSize: double.maxFinite,
      screenFunction: () async {
        return LandingPage();
      },
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      backgroundColor: Color(0xffF4506C),
      // Center(
      //   child: Column(
      //     children: <Widget>[
      //       Container(s
      //         height: 100, 
      //         width: 100,
      //         color: Color(0xffF4506C),
      //       ),
      //       Container(
      //         decoration: BoxDecoration(
      //           color: Color(0xffF4506C),
      //         ),
      //         child: Image.asset("img/logo_pethero.jpg", height: 125.0,), 
      //       ),
      //     ],
      //   )
    );
  }
}