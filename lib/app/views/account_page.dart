import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pethero/app/views/menu_page.dart';

import 'package:get/get.dart';
import 'package:pethero/app/controllers/home_controller.dart';
import 'package:pethero/app/views/landing_page.dart';




class AccountPage extends StatefulWidget {
  const AccountPage({ Key? key }) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  // Opções ao clicar na barra de navegação
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    Size size = MediaQuery.of(context).size;
    

    return Scaffold(
      backgroundColor: Colors.grey[900],

      body: Padding(padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Column(
            children: <Widget>[
              Divider(
                height: 50.0,
              ),
              Icon(Icons.account_circle, size: 60.0, color: Colors.white,),

              Container(
                width: size.width*0.26,
                height: size.height*0.037,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(size.width*0.026)

                ),
                child: Text(
                  'Minha Conta',
                  style: TextStyle(color: Colors.white, fontSize: size.width*0.042 ),),
              ),
              // Padding( padding: EdgeInsets.fromLTRB(150, 10, 150, 10),
              //   child: RaisedButton(
              //     color: Colors.pink,
              //     child: const Text('Minha Conta', style: TextStyle(color: Colors.white, fontSize: 20.0, )),
              //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              //     // padding: EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 8.0),
              //     onPressed: () {},
              //   ),
              // ),
              Divider(
                height: 56.0,
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
            //CONFIGURAÇÕES DA CONTA
              // Pedidos 
              TextButton(
                child: ListTile(
                  title: 
                  Text('Pedidos', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.description, color: Colors.white),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                ),
                // função do primeiro botão
                onPressed: () {},
              ),
              // Linha horizontal
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.white,
                ),
              ),
              // Pagamentos
              TextButton(
                child: ListTile(
                  title: Text('Pagamentos', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.payment, color: Colors.white),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                ),
                // Função do 2º botão
                onPressed: () {},
                  ),
              // Linha horizontal
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.white,
                ),
              ),
              // Editar Perfil
              TextButton(
                child: ListTile(
                  title: Text('Editar Perfil', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.manage_accounts, color: Colors.white),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                ),
                // Função do 3º botão
                onPressed: () {},
              ),
              // Linha horizontal
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: double.infinity,
                  color: Colors.white,
                ),
              ),
              // Sair da Conta
              TextButton(
                child: ListTile(
                  title: Text('Sair', style: TextStyle(color: Colors.white)),
                  leading: Icon(Icons.logout, color: Colors.white),
                  trailing: Icon(Icons.chevron_right, color: Colors.white),
                ),
                // Função do 4º botão
                onPressed: () {},
              ),
              // Linha horizontal
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

      // Barra de Navegação
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
}
