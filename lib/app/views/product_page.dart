import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pethero/app/components/product_card.dart';
import 'package:pethero/app/components/star.dart';


final String logoPetHero = 'assets/icons/apartment.svg';

class ProductPage extends StatefulWidget {
  const ProductPage({ Key? key }) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
      
    Text(
      'Index 0: Inicio',
      style: optionStyle,
    ),
    Text(
      'Index 1: Menu',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[800],
      //   title: Column(
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Text(
      //             'Fortaleza, Ce, Brasil',
      //             style: TextStyle(
      //               fontSize: size.width*0.037
      //             ),
      //           ),
                
      //           GestureDetector(
      //             onTap: () {},
      //             child: Icon(Icons.search)
      //           )
      //         ],
      //       ),
      //     ],
      //   ),
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back_ios),
      //     onPressed: () {},
      //   ),
      // ),

      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
          child: Column(
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(bottom: size.height*0.031),
                child: Container(
                  height: size.height*0.18,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff484747),
          //         boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.5),
          //     blurRadius: 4,
          //     offset: Offset(0,4)
          //   )
          // ]
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 4,
                        offset: Offset(0,4)
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: size.height*0.035),
                        child: Row(
                          children: [ 
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Text(
                              'Fortaleza, Ce, Brasil',
                              style: TextStyle(
                                fontSize: size.width*0.037,
                                color: Colors.white
                              ),
                            ),
                            SizedBox(width: size.width*0.40,),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(Icons.search,color: Colors.white)
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Color(0xff4F4E4E),
                      ),
                      SizedBox(
                        height: size.height*0.0089,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width*0.032),
                        child: Row(
                          children: [
                            Container(
                              width: size.width*0.25,
                              height: size.height*0.032,
                              decoration: BoxDecoration(
                                color: Color(0xffF4506C),
                                borderRadius: BorderRadius.circular(size.width*0.026)
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '22/dez - 26/dez',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width*0.026
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width*0.042
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/filter');
                              },
                              child: Container(
                                width: size.width*0.25,
                                height: size.height*0.032,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(size.width*0.026)
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: size.width*0.032,
                                    ),
                                    Text(
                                      'Mais Filtros',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: size.width*0.026
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: size.width*0.008),
                                      child: SvgPicture.asset(
                                          'assets/icons/plus.svg',
                                          height: size.width*0.04,
                                          width: size.width*0.04,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],

                        ),
                      )


                    ],
                  ),
                ),
              ),

              ProductCard(size: size),
              ProductCard(size: size),
              ProductCard(size: size),


              // Texto Central
              
              
              
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffF4506C),
        // onTap: _onItemTapped,
      ),

    );
  }
}
