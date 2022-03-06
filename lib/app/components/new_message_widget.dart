// import 'package:flutter/material.dart';

// class NewMessage extends StatefulWidget {
//   const NewMessage({ Key? key }) : super(key: key);

//   @override
//   _NewMessageState createState() => _NewMessageState();
// }

// class _NewMessageState extends State<NewMessage> {
//   final _controller = TextEditingController();
//   String message = '';

//   static Future uploadMessage(String idUser, String message) async {
//     final refMessages =
//         FirebaseFirestore.instance.collection('chats/$idUser/messages');

//     final newMessage = Message(
//       idUser: 1,
//       urlAvatar: 'imagem',
//       username: 'herick',
//       message: message,
//       createdAt: DateTime.now(),
//     );
//     await refMessages.add(newMessage.toJson());

//     final refUsers = FirebaseFirestore.instance.collection('users');
//     await refUsers
//         .doc(idUser)
//         .update({UserField.lastMessageTime: DateTime.now()});
//   }
//   sendMessage(){
//     FocusScope.of(context).unfocus();

//     await FirebaseApi.uploadMessage();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding: EdgeInsets.all(8),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               controller: _controller,
//               textCapitalization: TextCapitalization.sentences,
//               enableSuggestions: true,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.grey[100],
//                 labelText: 'Escreva sua mensagem',
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(width: 0),
//                   gapPadding: 10,
//                   borderRadius: BorderRadius.circular(25)
//                 ) 
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   message = value;
//                 });
//               },
//             ),
//           ),
//           SizedBox(width: 20,),
//           GestureDetector(
//             onTap: () {
//               // ignore: unnecessary_statements
//               message.trim().isEmpty ? null : sendMessage();
//             },
//             child: Container(
//               padding: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.blue
//               ),
//               child: Icon(Icons.send, color: Colors.white),
//             ),
//           )
//         ],
//       ),
      
//     );
//   }
// }