import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfirmRegisterController {

  var userCode;
  bool result = false;

  
  verifyCode(userCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var code = prefs.getString('code');
    if (code == userCode){
      return true;
    }
    print(code);
    return false;
  }

  validUser() async {
    CollectionReference users = FirebaseFirestore.instance.collection('user');

    SharedPreferences prefs = await SharedPreferences.getInstance();
    var id = prefs.getString('createdUserId');
    return users
    .doc(id)
    .update({'valid': true})
    .then((value) => print("User's Property Updated"))
    .catchError((error) => print("Failed to delete user's property: $error"));
  }
  
}