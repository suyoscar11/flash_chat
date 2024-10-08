import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          // ignore: deprecated_member_use
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: '/welcome',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/chat': (context) => ChatScreen(),
        '/login': (context) => LoginScreen(),
        '/registration': (context) => RegistrationScreen()
      },
    );
  }
}
