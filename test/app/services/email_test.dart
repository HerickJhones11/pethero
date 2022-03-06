import 'dart:convert';
import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
void main() {
  testWidgets('email ...', (tester) async {
    // final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    // final name = 'Herick';
    // final email = 'pauloherick@gmail.com';
    // final subject  = 'teste';
    // final message = 'teste';
    
    // final serviceId = 'service_yye2jje';
    // final templateId = 'template_84qjlde';
    // final userId = 'user_NN28dX9MpIRMMXsnfdu93';

    // final response = await http.post(
    //   url,
    //   headers: {
    //     'origin' : 'http://localhost',
    //     'Content-Type' : 'application/json'
    //   },
    //   body: json.encode({
    //     'service_id' : serviceId,
    //     'template_id' : templateId,
    //     'user_id' : userId,
        
    //   }),
    
    // );
    // print('teste');
    // print(response.body);
    // print('teste');
    
    const urlPrefix = 'https://jsonplaceholder.typicode.com';

    Future<void> makePostRequest() async {
      final url = Uri.parse('$urlPrefix/posts');
      final headers = {"Content-type": "application/json"};
      final json = '{"title": "Hello", "body": "body text", "userId": 1}';
      final response = await http.post(url, headers: headers, body: json);
      print('Status code: ${response.statusCode}');
      print('Body: ${response.body}');
    }
    Future<void> makeGetRequest() async {
      final url = Uri.parse('$urlPrefix/posts');
      var response = await http.get(url);
      print('Status code: ${response.statusCode}');
      print('Headers: ${response.headers}');
      print('Body: ${response.body}');
    }

    // makePostRequest();
    makeGetRequest();


  });
  testWidgets('numbers ...', (tester) async {
    int max = 100;
    
    print(new Random().nextInt(max));
    for (var i = 0; i < 2; i++) {
  
      
    }
    

  });
}