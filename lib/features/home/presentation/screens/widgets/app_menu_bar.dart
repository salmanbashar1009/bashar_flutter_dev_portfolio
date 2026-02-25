import 'dart:ui';

import 'package:bashar_flutter_dev_portfolio/core/constants/app_colors.dart';
import 'package:bashar_flutter_dev_portfolio/core/constants/app_string.dart';
import 'package:bashar_flutter_dev_portfolio/core/utils/utils.dart';
import 'package:bashar_flutter_dev_portfolio/features/home/presentation/screens/widgets/command_button.dart';
import 'package:bashar_flutter_dev_portfolio/features/home/presentation/screens/widgets/gradient_border_container.dart';
import 'package:bashar_flutter_dev_portfolio/features/home/presentation/screens/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AppMenuBar extends StatefulWidget {
  const AppMenuBar({super.key});

  @override
  State<AppMenuBar> createState() => _AppMenuBarState();
}

class _AppMenuBarState extends State<AppMenuBar> {
  int? hoverIndex;
  bool isHoveredTalkButton = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Align(
      alignment: Alignment.topCenter,
      child: ClipRRect(
        // borderRadius: BorderRadiusGeometry.circular(99),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 24),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            constraints: const BoxConstraints(
              maxWidth: 1140,
              maxHeight: 65,
              minHeight: 60,
            ),
            decoration: BoxDecoration(
              border: Utils.appBorder(width: 1),
              borderRadius: BorderRadius.circular(99),
            ),
            child: Row(
              children: [
                GradientBorderContainer(),
                const SizedBox(width: 10),
                Text(
                  'Habibul Bashar',
                  style: textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
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
                CommandButton(),
                const SizedBox(width: 10),
                _letsTalkButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  MouseRegion _letsTalkButton() {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHoveredTalkButton = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHoveredTalkButton = false;
        });
      },
      child: PrimaryButton(
        background: isHoveredTalkButton
            ? AppColors.primary.withAlpha(150)
            : AppColors.primary,
      ),
    );
  }
}
