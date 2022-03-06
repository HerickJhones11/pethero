import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypt/crypt.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController {
  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

  login(email,password) async {
    var query = await FirebaseFirestore.instance
    .collection('user')
    .where('email',isEqualTo: email )
    .get()
    .then((QuerySnapshot querySnapshot) {
        return querySnapshot;
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var result = query.docs.map((doc) {
      if(doc['email'].isEmpty == false ){
        if(Crypt(doc["password"]).match(password)){
          prefs.setString('userEmail',doc['email']);
          return true;
        }
      }
      return false;
    });
    print(result);
    return result;
  }
  loginWithGoogle() async {
    var result = await googleSignIn.signIn();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(result != null){
      prefs.setString('userEmail', result.email);
      return true;
    }
    return null;
  }
}