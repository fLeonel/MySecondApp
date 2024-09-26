//* Clase de YES_NO / trabajando con apis.

class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel({required this.answer, required this.forced, required this.image});

  //el factory es para crear una nueva instancia.
  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
      answer: json['anwer'], forced: json['forced'], image: json['image']);
}
