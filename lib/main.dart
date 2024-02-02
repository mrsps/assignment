import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homescreen.dart';
import 'odscreen.dart';

late Size mq;

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner : false,
        title: 'test',
        theme: ThemeData(
        appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.white) ,
    titleTextStyle: TextStyle(
    color: Colors.white,
    fontSize: 22),
    ),

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: homescreen(),
    );
  }
}