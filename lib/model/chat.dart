// To parse this JSON data, do
//
//     final chatsModel = chatsModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<ChatsModel> chatsModelFromJson(String str) =>
    List<ChatsModel>.from(json.decode(str).map((x) => ChatsModel.fromJson(x)));

String chatsModelToJson(List<ChatsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ChatsModel {
  ChatsModel({
    this.id,
    required this.name,
    required this.picture,
    required this.latestTimestamp,
    required this.lastChat,
  });

  int? id;
  String name;
  String picture;
  String latestTimestamp;
  String lastChat;

  factory ChatsModel.fromJson(Map<dynamic, dynamic> json) => ChatsModel(
        id: json["id"],
        name: json["name"],
        picture: json["picture"],
        latestTimestamp: json["latest_timestamp"],
        lastChat: json["lastChat"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "picture": picture,
        "latest_timestamp": latestTimestamp,
        "lastChat": lastChat,
      };
}
