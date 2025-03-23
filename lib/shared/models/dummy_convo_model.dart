// To parse this JSON data, do
//
//     final dummyConvoModel = dummyConvoModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

DummyConvoModel dummyConvoModelFromJson(String str) =>
    DummyConvoModel.fromJson(json.decode(str));

String dummyConvoModelToJson(DummyConvoModel data) =>
    json.encode(data.toJson());

class DummyConvoModel {
  final List<DummyMessage>? messages;

  DummyConvoModel({this.messages});

  factory DummyConvoModel.fromJson(Map<String, dynamic> json) =>
      DummyConvoModel(
        messages:
            json["messages"] == null
                ? []
                : List<DummyMessage>.from(
                  json["messages"]!.map((x) => DummyMessage.fromJson(x)),
                ),
      );

  Map<String, dynamic> toJson() => {
    "messages":
        messages == null
            ? []
            : List<dynamic>.from(messages!.map((x) => x.toJson())),
  };
}

class DummyMessage {
  final String? role;
  final String? text;

  DummyMessage({this.role, this.text});

  factory DummyMessage.fromJson(Map<String, dynamic> json) =>
      DummyMessage(role: json["role"], text: json["text"]);

  Map<String, dynamic> toJson() => {"role": role, "text": text};
}


Future<DummyConvoModel> loadMessages() async {
  var json = await rootBundle.loadString("assets/dummy/dummy_convo.json");
  var messages = DummyConvoModel.fromJson(jsonDecode(json));

  for (var message in messages.messages ?? []) {
    debugPrint("role: ${message.role}, text: ${message.text}");
  }

  return messages;
}
