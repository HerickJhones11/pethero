import 'dart:ui';
import 'package:flutter/material.dart';

class Hospedagem extends StatefulWidget {
  const Hospedagem({ Key? key }) : super(key: key);

  @override
  _HospedagemState createState() => _HospedagemState();
}

class _HospedagemState extends State<Hospedagem> {

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
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
      ),

      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
          child: Column(
            children: <Widget>[
              // Logo PetHero

              Image.asset("assets/img/logo_pethero.jpg", height: 125.0,),
              // Icon(Icons.person),
              
              // Texto Central
              Text("Onde é o endereço do Pet?", 
                textAlign: TextAlign.center, 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,
                  color: Colors.white),
              ),
              
              Padding(padding: EdgeInsets.all(10.0),
              child:

                // Campos de Texto
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[850],
                  ),
                  child: Padding(padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Column(
                      children: <Widget>[

                        Padding(padding: EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
                          child: TextField(
                            cursorColor: Colors.grey,
                            style: TextStyle(color: Colors.grey[800]),
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search, color: Colors.grey[800],),
                              fillColor: Colors.grey, filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13.0),
                                borderSide: BorderSide(color: Colors.grey),
                                
                              ),  
                              hintText: "Buscar Endereço",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(13.0) 
                              ),
                            ),
                          ),
                        ), 

                        Padding(padding: EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
                          child: TextField(
                            cursorColor: Colors.grey,
                            keyboardType: TextInputType.text,
                            style: TextStyle(color: Colors.grey[800]),
                            decoration: InputDecoration(
                              fillColor: Colors.white, filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),  
                              hintText: "Casa",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(13.0) 
                              ),
                            ),
                          ),
                        ),

                        Padding(padding: EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
                          child: TextField(
                            cursorColor: Colors.grey,
                            style: TextStyle(color: Colors.grey[800]),
                            decoration: InputDecoration(
                              fillColor: Colors.white, filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),  
                              hintText: "Trabalho",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(13.0) 
                              ),
                            ),
                          ),
                        ),
                        
                        Padding(padding: EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
                          child: TextField(
                            cursorColor: Colors.grey,
                            style: TextStyle(color: Colors.grey[800]),
                            decoration: InputDecoration(
                              fillColor: Colors.white, filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),  
                              hintText: "Favorito",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(13.0) 
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 312.0,
                  height: 32.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xffF4506C)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                    ),
                    child: Text('Salvar', style: TextStyle(color: Colors.white, fontSize: 16.0, ),),
                    onPressed: (){}, 
                  ),
                ),
              )
              
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

// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:account/teste_telas/account_page.dart';
// import 'package:account/teste_telas/menu_page.dart';

// class Hospedagem extends StatefulWidget {
//   const Hospedagem({ Key? key }) : super(key: key);

//   @override
//   _HospedagemState createState() => _HospedagemState();
// }

// class _HospedagemState extends State<Hospedagem> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[800],
//       appBar: AppBar(
//         backgroundColor: Colors.grey[800],
//       ),

//       body: Padding(padding: EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
//         child: Column(
//           children: <Widget>[
//             // Logo PetHero
//             Image.asset("assets/img/pet_icon_plain.svg"),
//             
//             // Texto Central
//             Text("Onde é o endereço do Pet?", 
//               textAlign: TextAlign.center, 
//               style: TextStyle(fontWeight: FontWeight.bold,
//               color: Colors.white),
//             ),
            
//             // Campos de Texto
//             Padding(padding: EdgeInsets.fromLTRB(5.0, 4.0, 5.0, 4.0),
//             child: Container(
//               color: Colors.grey[900],
//                 child: Column(
//                   children: <Widget>[
//                     TextField(
//                       style: TextStyle(color: Colors.grey[800]),
//                       decoration: InputDecoration(
//                         icon: Icon(Icons.search),
//                         fillColor: Colors.grey,
//                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),  
//                         hintText: "Buscar Endereço",
//                       ),
//                     ),
                    
//                     TextField(
//                       style: TextStyle(color: Colors.grey[800]),
//                       decoration: InputDecoration(
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),  
//                         hintText: "Casa",
//                       ),
//                     ),
                    
//                     TextField(
//                       style: TextStyle(color: Colors.grey[800]),
//                       decoration: InputDecoration(
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),  
//                         hintText: "Trabalho",
//                       ),
//                     ),
                    
//                     TextField(
//                       style: TextStyle(color: Colors.grey[800]),
//                       decoration: InputDecoration(
//                         fillColor: Colors.white,
//                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),  
//                         hintText: "Favorito",
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
          
//             RaisedButton(
//               color: Color(0xffF4506C),
//               child: const Text('Salvar', style: TextStyle(color: Colors.white, fontSize: 20.0, )),
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
//               onPressed: (){})
//           ],
//         ),
//       ),

//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Inicio',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu),
//             label: 'Menu',
//           ),
//         ],
//         // currentIndex: _selectedIndex,
//         selectedItemColor: Color(0xffF4506C),
//         // onTap: _onItemTapped,
//       ),

//     );
//   }
// }
