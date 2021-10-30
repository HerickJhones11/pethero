import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pethero/app/controllers/home_controller.dart';

class Landingpage extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/landing_page_img.png'),
            fit: BoxFit.cover,
          colorFilter: 
          ColorFilter.mode(Colors.black.withOpacity(0.5), 
          BlendMode.darken),
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 150,),

            Container(
              height: 390,
              child: Column(
                children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "pet hero ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 66)
                      ),
                      WidgetSpan(
                        child: Icon(Icons.favorite, size: 54, color: Colors.pink, semanticLabel: 'Text to announce in accessibility modes',),
                        
                      ),
                    ],
                  ),
                ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Olá, tudo bem?', style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25
              ),),
            ),
            Text(
                'Vai viajar ou não quer que seu pet fique sozinho em casa durante o dia sem gastar energia? Conheça os serviços de hospedagem, creche e passeio!', 
                style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 90,
            ),
            Expanded(
              child: Container(
                width: width,
                height: height,
                decoration: new BoxDecoration(
                  color: Color(0xFF434343),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Wrap(
                    spacing: 20.0,
                    children: <Widget>[
                      ElevatedButton(
                        child: Text('Já tenho conta'),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF8A8A8A),
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          textStyle: TextStyle(
                          fontWeight: FontWeight.bold)
                        ),
                      ),
                      ElevatedButton(
                        child: Text('Sou novo aqui'),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF4506C),
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          textStyle: TextStyle(
                          fontWeight: FontWeight.bold)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}