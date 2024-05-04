import 'package:flutter/material.dart';
import 'package:flutter_practica2/Screens/home_screen.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.green,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.green,
          )),
      home: const HomeScreens(),
    );
  }
}
