import 'package:bashar_flutter_dev_portfolio/core/utils/utils.dart';
import 'package:bashar_flutter_dev_portfolio/features/home/presentation/screens/widgets/gradient_border_container.dart';
import 'package:flutter/material.dart';

class AppMenuBar extends StatelessWidget {
  const AppMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 24),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints(maxWidth: 1140),
        decoration: BoxDecoration(
          border: Utils.appBorder(),
          borderRadius: BorderRadius.circular(99),
        ),
        child: Row(children: [GradientBorderContainer()]),
      ),
    );
  }
}
