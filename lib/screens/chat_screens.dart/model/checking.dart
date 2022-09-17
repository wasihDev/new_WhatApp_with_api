// import 'dart:convert';

// import 'package:chat_app_with_api_data/model/chat.dart';
// import 'package:chat_app_with_api_data/model/chat.dart';
// import 'package:chat_app_with_api_data/screens/chat_screens.dart/model/Api_Controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:http/http.dart' as http;

// class Testing extends StatefulWidget {
//   const Testing({Key? key}) : super(key: key);

//   @override
//   State<Testing> createState() => _TestingState();
// }

// Future<List<ChatsModel>> getChatsApi() async {
//   final respone = await rootBundle.loadString('json/model.json');
//   var data = json.decode(respone) as List<dynamic>;
//   //final chats = chatsFromJson(jsonString);
//   print(respone);
//   return data.map((e) => ChatsModel.fromJson(e)).toList();
// }

// class _TestingState extends State<Testing> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         Expanded(
//           child: FutureBuilder(
//               future: getChatsApi(),
//               builder: (context, snapshot) {
//                 if (snapshot.hasError) {
//                   return const Center(child: Text('Error'));
//                 } else if (snapshot.hasData) {
//                   var items = snapshot.data as List<ChatsModel>;
//                   return ListView.builder(
//                       itemCount: items.length,
//                       itemBuilder: (context, index) {
//                         return ListTile(
//                             leading: CircleAvatar(
//                               backgroundImage:
//                                   NetworkImage(items[index].picture.toString()),
//                             ),
//                             title: Text(items[index].name.toString()),
//                             subtitle: Text(items[index].lastChat.toString()),
//                             trailing:
//                                 Text(items[index].latestTimestamp.toString()));
//                       }

//                       // return Center(child: Text(snapshot.data!.name.toString()));
//                       );
//                 } else {
//                   return const Center(child: Text('samnashta'));
//                 }
//               }),
//         ),
//       ],
//     ));
//   }
// }
