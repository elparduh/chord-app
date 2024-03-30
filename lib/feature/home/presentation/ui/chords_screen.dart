import 'package:flutter/material.dart';

class ChordsScreen extends StatelessWidget {
  const ChordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Biblioteca de acordes'),
      ),
      body: const Center(
        child: Text(
          "Hola Parduh!",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}