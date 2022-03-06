import 'package:crypt/crypt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pethero/app/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController {
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  late User user;


  create(context) async {
    final userRef = FirebaseFirestore.instance.collection('user').withConverter<User>(
      fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
      toFirestore: (movie, _) => movie.toJson(),
    );
    var hashedPassword = Crypt.sha256(password.text).toString();
    var createdUser = await userRef.add(
      
    User(
      email: user.email,
      password: hashedPassword,
      cpf: user.cpf,
      tel: user.tel,
      name: user.name
    ),
   );

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('createdUserId', createdUser.id);

  }

}