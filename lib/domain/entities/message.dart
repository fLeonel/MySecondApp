//? Aprendiendo la logica de los mensajes con DART.
//* Estamos aprendiendo de los estados

enum FromWho { me, hers }

class Message {
  final String text;
  final String? imageURL;
  final FromWho fromWho;

  Message({required this.text, this.imageURL, required this.fromWho});
}
