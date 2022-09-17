import 'dart:io';
import 'package:chat_app_with_api_data/screens/lock_Screen.dart/email_pass_screen.dart';
import 'package:chat_app_with_api_data/screens/message_screen/messages.dart';
import 'package:flutter/material.dart';
import 'screens/chat_screens.dart/chat_main_screen.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/EmailScreen',
      routes: {
        '/EmailScreen': (context) => const EmailScreen(),
        '/ChatScreen': (context) => const ChatScreen(),
        '/MessagesScreen': (context) => MessagesScreen(),
      },
    );
    // home: Testing());
  }
}
