import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pethero/app/components/map_component.dart';
import 'package:pethero/app/components/pet_med_desc.dart';
import 'package:pethero/app/components/service_description.dart';
import 'package:pethero/app/components/star.dart';
import 'package:carousel_slider/carousel_slider.dart';

final String logoPetHero = 'assets/icons/apartment.svg';

class ServicePage extends StatefulWidget {
  const ServicePage({ Key? key }) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  final urlImages = [
    'https://skycms.s3.amazonaws.com/images/5495100/cachorro-card-1.png',
    // 'https://www.collinsdictionary.com/images/full/dog_230497594.jpg',
    'https://www.doglife.com.br/site/assets/images/cao.png',
    'https://comparaplano.com.br/wp-content/uploads/2019/09/dog-tv.png',
    'https://www.specialdog.com.br/assets/imgs/cao.png'
  ];

  bool oralMedication = false;
  bool injectMedication = false;
  int carouselIndex = -1;

  @override
  void initState(){
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        
      });

    });
    super.initState();

  }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double statusBarHeight = MediaQuery.of(context).padding.top;




    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: statusBarHeight),
              child: Stack(
                children: [
                  // Container(
                  //   width: size.width,
                  //   height: size.height*0.3,
                  //   child: Text(''),
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage('assets/img/dog.png'),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  Center(
                    child: CarouselSlider.builder(
                      itemCount: urlImages.length, 
                      itemBuilder: (context, index, realIndex) {
                        final urlImage = urlImages[index];
                        
                        return buildImage(urlImage, index);
                      }, 
                      options: CarouselOptions(
                        height: size.height*0.3,
                        
                        initialPage: 0,
                        enableInfiniteScroll: false
                        // viewportFraction: 1
                        // autoPlay: true,
                        // reverse: true,
                        // autoPlayInterval: Duration(seconds: 2)
                      )
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width*0.09, top: size.width*0.022),
                    child: Text(
                      'Pet Hero',
                      style: TextStyle(
                        fontSize: size.width*0.037,
                        color: Colors.white
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height*0.26, left: size.width*0.84),
                    child: Container(
                      width: size.width*0.13,
                      height: size.height*0.03,
                      decoration: BoxDecoration(
                        color: Color(0xff443A3A).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(size.width*0.008)
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width*0.01
                          ),
                          SvgPicture.asset(
                            'assets/icons/camera.svg'
                          ),
                          SizedBox(
                            width: size.width*0.008
                          ),
                          Text(
                            '$carouselIndex/5',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              width: size.width,
              height: size.height*0.23,
              decoration: BoxDecoration(
                color: Color(0xff484747),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 4,
                    offset: Offset(0,4)
                  )
                ]
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: size.height*0.034,
                  left: size.width*0.032
                  ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: size.height*0.015),
                          child: CircleAvatar(
                            child: Image.asset('assets/img/avatar.png'),
                          ),
                        ),
                        SizedBox(
                          width: size.width*0.024
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Antônia',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: size.width*0.032,
                                color: Colors.white
                              ),
                            ),
                            Row(
                              children: [
                                Star(size: size, color: Color(0xffF4506C)),
                                Star(size: size, color: Color(0xffF4506C)),
                                Star(size: size, color: Color(0xffF4506C)),
                                Star(size: size, color: Color(0xffF4506C)),
                                Star(size: size, color: Color(0xffF4506C)),
                                SizedBox(
                                  width: size.width*0.010
                                ),
                                Text(
                                  '1 avaliação',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: size.width*0.0213,
                                    color: Color(0xffF4506C)
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/home.svg'),
                                SizedBox(
                                  width: size.width*0.0026
                                ),
                                Text(
                                  'Casa',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: size.width*0.026,
                                    color: Colors.white
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    ServiceDescription(
                      size: size.width,
                      color: Color(0xffA614FF),
                      value: 35,  
                    ),
                    ServiceDescription(
                      size: size.width,
                      text: 'Creche',
                      value: 30,
                      color: Color(0xffFF9147)
                    ),


                  ],
                ),
              ),
            ),
            
            SizedBox(height: size.height*0.023,),
            Container(
              width: size.width,
              height: size.height*0.236,
              decoration: BoxDecoration(
                color: Color(0xff484747),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 4,
                    offset: Offset(0,4)
                  )
                ]
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: size.width*0.032,
                  top: size.height*0.014
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sobre Antônia',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width*0.0373,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.width*0.014),
                      child: Text(
                        'Aqui em casa quem manda são os bichos. Trabalho somente em casa e passo o dia inteiro com o pet. Tenho bastante espaço para receber o seu lindo pet: garagem, jardim e permito pets dentro de casa. Já trabalhei como enfermeira e sei como cuidar de animaizinhos que precisem de necessidades especiais!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: size.width*0.026,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height*0.017),
                      child: PetMedicationDescription(
                        size: size,
                        icon: 'assets/icons/vacina.svg',
                        text: 'Aplica medicação injetável'
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height*0.013),
                      child: PetMedicationDescription(
                        size: size,
                        icon: 'assets/icons/remedio.svg',
                        text: 'Aplica medicação oral'
                      ),
                    ),
                    // Container(
                    //   width: size.width,
                    //   height: size.height*0.14,
                    //   decoration: BoxDecoration(
                    //     color: Color(0xff484747),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.black.withOpacity(0.5),
                    //         blurRadius: 4,
                    //         offset: Offset(0,4)
                    //       )
                    //     ]
                    //   ),
                  ],
                ),
              ),
            ),
           Container(
            width: size.width,
            height: size.height*0.01,
            decoration: BoxDecoration(
               color: Color(0xff484747),
               boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 4,
                    offset: Offset(0,4)
                  )
                ]
              )
            ),
            SizedBox(
              height: size.height*0.020,
            ),
            Container(
              width: size.width,
              height: size.height*0.1,
              decoration: BoxDecoration(
                color: Color(0xff484747),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 4,
                    offset: Offset(0,4)
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width*0.035,
                      bottom: size.height*0.0086
                    ),
                    child: Text(
                      'Disponibilidade',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width*0.035),
                    child: Container(
                      width: size.width*0.93,
                      height: size.height*0.048,
                      decoration: BoxDecoration(
                        color: Color(0xff5F5E5E),
                        borderRadius: BorderRadius.circular(size.width*0.01)
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width*0.25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'S',
                              style: TextStyle(
                                color: Colors.white 
                              ),
                            ),
                            Text(
                              'T',
                              style: TextStyle(
                                color: Colors.white 
                              ),
                            ),
                            Text(
                              'Q',
                              style: TextStyle(
                                color: Colors.white 
                              ),
                            ),
                            Text(
                              'Q',
                              style: TextStyle(
                                color: Colors.white 
                              ),
                            ),
                            Text(
                              'S',
                              style: TextStyle(
                                color: Colors.white 
                              ),
                            ),
                            Text(
                              'S',
                              style: TextStyle(
                                color: Colors.white 
                              ),
                            ),
                            Text(
                              'D',
                              style: TextStyle(
                                color: Colors.white 
                              ),
                            ),
           
                          ],
                        ),
                      ),
                    ),
                  )
                ],),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height*0.019,left:size.width*0.024),
              child: Row(
                children: [
                  Text(
                    'Eu moro nessa região',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.013),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/mark.svg'
                  ),
                  Text(
                    'Benfica',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.width*0.004,
                bottom: size.height*0.023),
              child: MapComponent(size: size.width*0.94),
            )
          ]
        )
      ),

      bottomNavigationBar: Container(
        width: size.width,
        height: size.height*0.056,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: size.width*0.45,
              height: size.height*0.04,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: size.width*0.01,
                  color: Color(0xff6B6969)
                )
              ),
              child: Text(
                'Reservar',
                style: TextStyle(
                  color: Color(0xffF4506C),
                  fontWeight: FontWeight.w700,
                  fontSize: size.width*0.026
                ),
              ),
            ),
            Container(
              width: size.width*0.45,
              height: size.height*0.04,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffF4506C),
              ),
              child: Text(
                'Iniciar conversa',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: size.width*0.026
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
  Widget buildImage(String urlImage, int index){
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        carouselIndex = index;
        // print(index);
      });
    });
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: GestureDetector(
        child: Image.network(
          urlImage,
          fit: BoxFit.cover
        ),
      ),
    );
  } 
}


