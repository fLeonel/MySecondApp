import 'package:flutter/material.dart';
import 'package:yes_no_app/prestation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/prestation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/prestation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://d28ku8nzmkcjr6.cloudfront.net/cache/2f/45/2f45b264d367ab76f050209a94cf30d1.webp'),
          ),
        ),
        title: const Text('Jennifer Aniston'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 101,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),
            //Caja de texto
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
