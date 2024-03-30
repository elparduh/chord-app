import 'package:flutter/material.dart';
import 'package:mrchord_app/feature/home/presentation/ui/home_screen.dart';
class MrChordApp extends StatelessWidget {
  const MrChordApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca de acordes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}