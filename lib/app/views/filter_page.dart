import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pethero/app/components/apply_filter_button.dart';
import 'package:pethero/app/components/divider_filter.dart';
import 'package:pethero/app/components/enable_petfilter.dart';
import 'package:pethero/app/components/filter_button.dart';
import 'package:pethero/app/components/price_button.dart';
import 'package:pethero/app/components/title_text_filter.dart';


final String logoPetHero = 'assets/icons/apartment.svg';

class FilterPage extends StatefulWidget {
  const FilterPage({ Key? key }) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

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
  double _value = 0;
  bool oralMedication = false;
  bool injectMedication = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: size.height*0.026),
              child: Container(
                height: size.height*0.11,
                width: size.width,
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
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height*0.035),
                      child: Row(
                        children: [ 
                          IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: size.width*0.064,
                            ),
                            onPressed: () {},
                          ),
                          Text(
                            'Filtros',
                            style: TextStyle(
                              fontSize: size.width*0.037,
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),


            // Texto Central
            Padding(
              padding: EdgeInsets.only(left: size.width*0.018),
              child: Row(
                children: [
                  Container(
                    width: size.width*0.093,
                    height: size.width*0.093,
                    decoration: BoxDecoration(
                      color: Color(0xffF4506C),
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                  SizedBox(width: size.width*0.021,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Encontre o herói ideal',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.032
                        ),
                      ),
                      
                      Text(
                        'Conte mais sobre seu(s) pet(s) e ajude-nos a encontrar o herói perfeito.',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'roboto',
                          fontSize: size.width*0.026
                        ),
                      ),
                    ],
                  ),

                ],

              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.018, top: size.height*0.022),
              child: Row(
                children: [
                  Text(
                    'Os seus pets são?',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'roboto',
                      fontSize: size.width*0.026
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width*0.026,
                    right: size.width*0.101
                  ),
                  child: FilterButton(
                    text:'Cachorro',
                    width: size.width*0.248,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: size.width*0.101),
                  child: FilterButton(text:'Gato'),
                ),
                FilterButton(text:'Outro'),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.018, top: size.height*0.032),
              child: Row(
                children: [
                  Text(
                    'Qual o tamanho do seu pet?',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'roboto',
                      fontSize: size.width*0.026
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width*0.026,
                    right: size.width*0.101
                  ),
                  child: FilterButton(
                    text:'Até 5 kg',
                    rounded: size.width,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: size.width*0.101),
                  child: FilterButton(
                    text:'5 a 10 kg',
                    rounded: size.width,
                  ),
                ),
                FilterButton(
                  text:'10 a 20 kg',
                  rounded: size.width,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width*0.026,
                    right: size.width*0.101
                  ),
                  child: FilterButton(
                    text:'20 a 40 kg',
                    rounded: size.width,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: size.width*0.101),
                  child: FilterButton(
                    text:'+ de 40 kg',
                    rounded: size.width,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.018, top: size.height*0.022),
              child: Row(
                children: [
                  Text(
                    'Qual é a faixa de preço por noite?',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'roboto',
                      fontSize: size.width*0.026
                    ),
                  ),
                ],
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.red[700],
                inactiveTrackColor: Colors.red[100],
                trackShape: RectangularSliderTrackShape(),
                trackHeight: 4.0,
                thumbColor: Colors.redAccent,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                overlayColor: Colors.red.withAlpha(32),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
              ),
              child: Slider(
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              )
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width*0.03),
                  child: PriceButton(
                    text: 'R\$ 20',
                    rounded: size.width*0.01,
                    width: size.width*0.152
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.only(left: size.width*0.3, right: size.width*0.3),
                  child: Text(
                    'até',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width*0.026
                    ),
                  ),
                ),
                PriceButton(
                  text: 'R\$ 200',
                  rounded: size.width*0.01,
                  width: size.width*0.152
                ),
              ],
            ),
            DividerFilter(size: size),
            TitleText(size: size, text: 'Características do seu Pet'),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03),
              child: Row(
                children: [
                  Text(
                    'Qual o sexo do seu pet?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: size.width*0.026
                    ),  
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width*0.03, right: size.width*0.02),
                  child: FilterButton(
                    text:'Macho',
                    width: size.width*0.458
                  ),
                ),
                FilterButton(
                  text:'Fêmea',
                  width: size.width*0.458
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03),
              child: Row(
                children: [
                  Text(
                    'Seu pet é castrado?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: size.width*0.026
                    ),  
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width*0.03, right: size.width*0.02),
                  child: FilterButton(
                    text:'Sim',
                    width: size.width*0.458
                  ),
                ),
                FilterButton(
                  text:'Não',
                  width: size.width*0.458
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.03),
              child: Row(
                children: [
                  Text(
                    'Sobre o local do Herói',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: size.width*0.037
                    ),  
                  ),
                ],
              ),
            ),
             Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: size.width*0.03, right: size.width*0.02),
                  child: FilterButton(
                    text:'Casa',
                    icon: 'assets/icons/home.svg',
                    showIcon: true,
                    width: size.width*0.458
                  ),
                ),
                FilterButton(
                  text:'Casa',
                  icon: 'assets/icons/apartment.svg',
                  showIcon: true,
                  width: size.width*0.458
                ),
              ],
            ),
            TitleText(size: size, text: 'Características do Herói'),
            Padding(
              padding: EdgeInsets.only(
                left: size.width*0.01,
                top: size.width*0.008
              ),
              child: EnablePetFilter(
                size: size,
                switchVal: oralMedication,
                icon: 'assets/icons/remedio.svg',
                text: 'Herói apto a aplicar medicação oral em seus pets',
                title: 'Medicação oral',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width*0.01,
                top: size.width*0.008
              ),
              child: EnablePetFilter(
                size: size,
                switchVal: injectMedication,
                icon: 'assets/icons/vacina.svg',
                text: 'Herói apto a aplicar medicação injetável em seus pets',
                title: 'Medicação injetável',
              ),
            ),
            DividerFilter(size: size),
            SizedBox(
              height: size.height*0.026,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AplyFilterButton(
                  size: size,
                  text: 'Aplicar',
                  backgroundColor: Color(0xffF4506C),
                  textColor: Colors.white
                ),
                AplyFilterButton(
                  size: size,
                  hasBorder: true,
                  text: 'Limpar',
                  backgroundColor: Color(0xffF4506C).withOpacity(0),
                  textColor: Colors.white
                ),
              ],
            )  
            

          ],
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
