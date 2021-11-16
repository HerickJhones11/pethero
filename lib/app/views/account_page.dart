import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({ Key? key }) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        // title: Text("Minha Conta"),  
        // centerTitle: true,
        backgroundColor: Colors.grey[800],
        // actions: <Widget>[
        //   IconButton(onPressed: () {}, 
        //   icon: Icon(Icons.chevron_left))
        // ],

      ),

      body: SafeArea(child: 
      Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Divider(
              //   height: 30.0,
              // ),
              // Icon(Icons.account_circle, size: 60.0, color: Colors.white,),
              
              // Padding( padding: EdgeInsets.fromLTRB(150, 10, 150, 10),
              //   child: RaisedButton(
              //     color: Colors.pink,
              //     child: const Text('Minha Conta', style: TextStyle(color: Colors.white, fontSize: 20.0, )),
              //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              //     // padding: EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 8.0),
              //     onPressed: () {},
              //   ),
              // ),
              Padding(
                  padding: EdgeInsets.only(top: 0.074*height, bottom: 0.01*height),
                  child: Container(
                    width: height*0.1,
                    height: height*0.1,
                    decoration:BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff999999)
                    ),
                    child: Icon(Icons.person, size: height*0.1 , color: Colors.white ,),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height*0.12),
                  child: Container(
                    height: height*0.03,
                    width: width*0.26,
                    decoration: BoxDecoration(
                      color: Color(0xffF4506C),
                      borderRadius: BorderRadius.all(Radius.circular(width*0.026))
                    ),
                    alignment: Alignment.center,
                    child: Text('Minha Conta', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: height*0.02
                    ),),
                  ),
                ),
              
              // Divider(
              //   height: 56.0,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     Padding(
              //       padding: EdgeInsets.all(15.0),
              //       child: TextButton(
              //         child: Text("Pedidos", style: TextStyle(fontSize: 30.0, color: Colors.white), textAlign: TextAlign.left,),
              //         onPressed: (){},   
              //       ),    
              //     ),
              //   ],
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.white,
                  ),
                ),
              //1ª opção do menu
              TextButton(
                child: ListTile(
                  title: 
                  Text('Pedidos', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.description, color: Colors.white),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                ),
                //função do 1º botão
                onPressed: () {},
              ),
              //Linha horizontal
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.white,
                ),
              ),
              //2ª opção do menu
              TextButton(
                child: ListTile(
                  title: Text('Pagamentos', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.payment, color: Colors.white),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                ),
                //função do 2º botão
                onPressed: () {},
                  ),
              //Linha horizontal
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.white,
                ),
              ),
              //3ª opção do menu
              TextButton(
                child: ListTile(
                  title: Text('Editar Perfil', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.manage_accounts, color: Colors.white),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                ),
                //função do 3º botão
                onPressed: () {},
              ),
              //Linha horizontal
              LinhaHorizontal;
              //4ª opção do menu
              TextButton(
                child: ListTile(
                  title: Text('Sair', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.logout, color: Colors.white),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                ),
                //função do 4º botão
                onPressed: () {},
              ),
              //Linha horizontal
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.white,
                ),
              ),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
      ),
      
    );
  }
  LinhaHorizontal(){
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 1.0,
        width: double.infinity,
        color: Colors.white,
      ),
    );
  }
}

