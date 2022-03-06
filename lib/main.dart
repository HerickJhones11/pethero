
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pethero/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
void main() {
  
  runApp(
    App()
  );
}



class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);


//   addItem() async {
//     final userRef = FirebaseFirestore.instance.collection('user').withConverter<User>(
//       fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
//       toFirestore: (movie, _) => movie.toJson(),
//     );
//   await userRef.add(
//     User(
//       email: 'Star Wars: A New Hope (Episode IV)',
//       password: 'Sci-fi'
//     ),
//    );

   
// }
//   getItem(){
//     FirebaseFirestore.instance
//     .collection('user')
//     .get()
//     .then((QuerySnapshot querySnapshot) {
//         querySnapshot.docs.forEach((doc) {
//             print(doc['email']);
//             // print(doc.get('email'));

//         });
//     });
//     // print(users.doc('0cjApQXSNMzRQM6P2CXM').get().);
//   }
//   removeItem(){
//     CollectionReference users = FirebaseFirestore.instance.collection('user');
//     return users
//     .doc('SCqMOYwp1siI2GyLhTSB')
//     .delete()
//     .then((value) => print("User Deleted"))
//     .catchError((error) => print("Failed to delete user: $error"));

//   }
//   updateItem() {
//     CollectionReference users = FirebaseFirestore.instance.collection('user');
//     return users
//     .doc('JKgtozM3L3DZZphzOY7m')
//     .update({'email': 'teste2'})
//     .then((value) => print("User's Property Updated"))
//     .catchError((error) => print("Failed to delete user's property: $error"));
//   }

  
//   void crud() async{
//     // addItem();
//     getItem();
//     // removeItem();
//     // updateItem();



//   }
  Widget build(BuildContext context) {
    


    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if(snapshot.hasError){
          return Text(snapshot.error.toString());
        }
        if(snapshot.connectionState == ConnectionState.done) {
          // crud();
          // return MaterialApp(
          //   home: Scaffold(
          //     body: Center(child: ElevatedButton(onPressed: () { crud(); }, child: Text('click')),),
          //   ),
          // );
          return GetMaterialApp(
            title: 'PetHero App',
            debugShowCheckedModeBanner: false,
            getPages: AppPages.routes,
          );
        }     
        return Container();
      },
      
    );
  }
}