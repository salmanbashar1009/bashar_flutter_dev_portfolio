import 'package:bashar_flutter_dev_portfolio/core/constants/app_colors.dart';
import 'package:bashar_flutter_dev_portfolio/core/constants/app_string.dart';
import 'package:bashar_flutter_dev_portfolio/core/utils/utils.dart';
import 'package:bashar_flutter_dev_portfolio/features/home/presentation/screens/widgets/gradient_border_container.dart';
import 'package:flutter/material.dart';

class AppMenuBar extends StatefulWidget {
  const AppMenuBar({super.key});

  @override
  State<AppMenuBar> createState() => _AppMenuBarState();
}

class _AppMenuBarState extends State<AppMenuBar> {
  int? hoverIndex;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 24),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints(maxWidth: 1140, maxHeight: 62),
        decoration: BoxDecoration(
          border: Utils.appBorder(),
          borderRadius: BorderRadius.circular(99),
        ),
        child: Row(
          children: [
            GradientBorderContainer(),
            const SizedBox(width: 10),
            Text(
              'Habibul Bashar',
              style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Row(
              children: List.generate(AppString.menu.length, (index) {
                final isHovered = hoverIndex == index;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        hoverIndex = index;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        hoverIndex = null;
                      });
                    },
                    child: Text(
                      AppString.menu[index],
                      style: textTheme.bodyMedium?.copyWith(
                        color: isHovered
                            ? AppColors.primaryTextColor
                            : AppColors.primaryTextColor.withAlpha(180),
                      ),
                    ),
                  ),
                );
              }),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
