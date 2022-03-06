import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Email {
  var email;
  var password;

  Email({ this.email , this.password});

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  
  generateCode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var max = 99;
    var min = 10;
    var r;
    var code = '';
    Random rnd = new Random();
    for (var i = 0; i < 2; i++) {
       r = min + rnd.nextInt(max - min);
       code = code + r.toString();
    }
    await prefs.setString('code', code.toString());
    return code;
  }

  callApi(code, name, email) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final subject  = 'Código de Validação Pet Hero';
    final serviceId = 'service_yye2jje';
    final templateId = 'template_84qjlde';
    final userId = 'user_NN28dX9MpIRMMXsnfdu93';

    final response = await http.post(
      url,
      headers: {
        'origin' : 'http://localhost',
        'Content-Type' : 'application/json'
      },
      body: json.encode({
        'service_id' : serviceId,
        'template_id' : templateId,
        'user_id' : userId,
        'template_params' : {
          'code' : code.toString(),
          'email' : email,
          'to_name' : name,
          'subject' : subject
        }
      }),
    );

    print(response.body);

  }
  sendMessage(email,name) async {
    // ignore: unused_local_variable
    final code = generateCode().then((code) {
      callApi(code, name, email);
    });
  }

}

