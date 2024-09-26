//?Esta es data que no ocupamos, por que lo genera la extension de PastJson - no lo voy a borrar para fines de aprendizaje.
// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);

// import 'dart:convert';

// YesNoModel yesNoModelFromJson(String str) => YesNoModel.fromJsonMap(json.decode(str));

// String yesNoModelToJson(YesNoModel data) => json.encode(data.toJson());

import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  //-> esto no lo ocupamos por ahora.
  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessageEntity() => Message(
      text: answer == 'yes' ? 'Simon krnal' : 'Vete pero alv',
      fromWho: FromWho.hers,
      imageURL: image);
}
