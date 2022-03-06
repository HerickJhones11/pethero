
// // import 'package:pethero/app/utils.dart';

// // class Message{
// //   final String idUser;
// //   final String urlAvatar;
// //   final String username;
// //   final String message;
// //   final DateTime createdAt;
  
// //   Message({ this.idUser = '', this.urlAvatar = '', this.username = '', this.message = '',  required this.createdAt }

// //   Message.fromJson(Map<String, Object?> json)
// //     : this(
// //         idUser: json['idUser'] as String,
// //         urlAvatar: json['urlAvatar'] as String,
// //         username: json['username'] as String,
// //         message: json['message'] as String,
// //         createdAt: Utils.toDateTime(json['createdAt']),
// //       );
// //   Map<String, Object?> toJson() {
// //     return {
// //       'idUser': idUser,
// //       'urlAvatar': urlAvatar,
// //       'username': username,
// //       'message': message,
// //       'createdAt': Utils.fromDateTimeToJson(createdAt),
// //     };
// //   } 
// // // }
// import 'package:flutter/material.dart';

// import '../utils.dart';

// class MessageField {
//   static final String createdAt = 'createdAt';
// }

// class Message {
//   final String idUser;
//   final String urlAvatar;
//   final String username;
//   final String message;
//   final DateTime createdAt;

//   const Message({
//     required this.idUser,
//     required this.urlAvatar,
//     required this.username,
//     required this.message,
//     required this.createdAt,
//   });

//   static Message fromJson(Map<String, dynamic> json) => Message(
//         idUser: json['idUser'],
//         urlAvatar: json['urlAvatar'],
//         username: json['username'],
//         message: json['message'],
//         // createdAt: Utils.toDateTime(json['createdAt']),
//       );

//   Map<String, dynamic> toJson() => {
//         'idUser': idUser,
//         'urlAvatar': urlAvatar,
//         'username': username,
//         'message': message,
//         'createdAt': Utils.fromDateTimeToJson(createdAt),
//       };
// }