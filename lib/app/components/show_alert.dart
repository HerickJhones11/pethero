 import 'package:flutter/material.dart';

void showAlert(BuildContext context, message, {redirectUser = true}) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('Criação de conta'),
        content: Text(message),
        actions: <Widget>[
          
          TextButton(
            onPressed: () {
               Navigator.pop(context, 'OK');
               if(redirectUser == true){
                 Navigator.pushNamed(context, '/login');
               }
            },
            child: const Text('OK'),
          ),
        ],
      )
    );
  }