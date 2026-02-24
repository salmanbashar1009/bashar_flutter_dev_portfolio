import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bashar Flutter Dev Portfolio',
      home: Scaffold(
        appBar: AppBar(title: const Text('Portfolio')),
        body: const Center(child: Text('Welcome to my portfolio!')),
      ),
    );
  }
}
