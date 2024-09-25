import 'package:flutter/material.dart';
import 'package:yes_no_app/config/themes/app_theme.dart';
import 'package:yes_no_app/prestation/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yes or Not',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selecterColor: 1).theme(),
        home: const ChatScreen());
  }
}
