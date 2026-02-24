import 'package:bashar_flutter_dev_portfolio/features/home/presentation/screens/widgets/app_menu_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(children: [AppMenuBar()])),
    );
  }
}
