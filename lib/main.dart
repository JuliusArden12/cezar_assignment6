import 'package:cezar_assignment6/screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactScreen(),
        theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.dark()),
        color: Colors.amber);
  }
}
